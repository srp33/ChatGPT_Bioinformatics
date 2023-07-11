library(tidyverse)
library(rvest)
library(xml2)

source("Helper_Code.R")

# Read data from the spreadsheet (which has been converted to HTML) and remove extra column and rows. Also convert <br> tags back to newline characters.

data = read_html("Study_Results_Bard/Results.html")

xml_find_all(data, ".//br") %>% xml_add_sibling("p", "\n")
xml_find_all(data, ".//br") %>% xml_remove()

data = html_element(data, "table") %>%
  html_table(header = TRUE, convert = FALSE)

colnames(data) = data[1,]
data = data[,c(2:3, 5:ncol(data))]
data = data[3:nrow(data),]

# Keep the exercises that were attempted
data = filter(data, `Who attempted` != "")

# Clean up the data a bit
data = mutate(data, `Number of tests` = as.numeric(`Number of tests`)) %>%
  mutate(`Number of passed tests` = as.numeric(`Number of passed tests`)) %>%
  mutate(`Number of LLM iterations` = as.numeric(`Number of LLM iterations`)) %>%
  mutate(passed = (`Number of tests` == `Number of passed tests`)) %>%
  mutate(passed_yes_no = ifelse(passed, "Yes", "No")) %>%
  mutate(passed_yes_no = factor(passed_yes_no, levels = c("Yes", "No"))) %>%
  mutate(`Number of LLM iterations` = factor(`Number of LLM iterations`, levels=1:10)) %>%
  mutate(llm_solution_simplified = clean_code_segments(`LLM solution`)) %>%
  mutate(chars_per_llm_solution = str_length(llm_solution_simplified)) %>%
  mutate(lines_per_llm_solution = str_count(llm_solution_simplified, "\\n"))

# Iterations per exercise

summary_data = group_by(data, `Number of LLM iterations`) %>%
  summarize(Count = n()) %>%
  arrange(`Number of LLM iterations`)

p = ggplot(data, aes(x = `Number of LLM iterations`, fill = passed_yes_no)) +
  geom_bar() +
  ylim(0, max(summary_data$Count) + 1.5) +
  scale_x_discrete(drop=FALSE) +
  theme_bw(base_size=18) +
  scale_fill_manual(values = c("#4575b4", "#d73027")) +
  xlab("Number of Bard iterations per exercise") +
  ylab("Count") +
  guides(fill = guide_legend(title = "Passed"))

for (i in 1:nrow(summary_data)) {
  p = p + geom_text(label = summary_data$Count[i], x = as.integer(summary_data$`Number of LLM iterations`)[i], y = summary_data$Count[i] + 1.2, color = "#333333")
}

plot(p)

ggsave("Figures/iterations_per_exercise_Bard.pdf", width = 6.5)

# Total and percentage passing

print(paste(sum(data$passed), nrow(data), sep= " / "))
print(sum(data$passed / nrow(data)))