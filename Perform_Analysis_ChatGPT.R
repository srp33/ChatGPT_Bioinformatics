## Installation only needs to happen once.
# install.packages("tidyverse")

library(tidyverse)
library(rvest)
library(xml2)

source("Helper_Code.R")

# This file is available upon request. When it's not available, this script will create everything it can with the data that are available.
results_file_path = "Study_Results_ChatGPT/Results_with_instructor_solutions.html"
if (!file.exists(results_file_path)) {
  results_file_path = "Study_Results_ChatGPT/Results.html"
  
  if (!file.exists(results_file_path)) {
    stop("The results file could not be found. Perhaps it is being your working directory is not set to the directory where this script is located.")
  }
}

data = read_html(results_file_path)

# Read data from the spreadsheet (which has been converted to HTML) and remove extra column and rows. Also convert <br> tags back to newline characters.
xml_find_all(data, ".//br") %>% xml_add_sibling("p", "\n")
xml_find_all(data, ".//br") %>% xml_remove()

data = html_element(data, "table") %>%
  html_table(header = TRUE, convert = FALSE)

colnames(data) = data[1,]
data = data[,c(2:3, 5:ncol(data))]
data = data[3:nrow(data),]

# Clean up the data a bit
data = mutate(data, `Number of tests` = as.numeric(`Number of tests`)) %>%
  mutate(`Number of passed tests` = as.numeric(`Number of passed tests`)) %>%
  mutate(`Number of ChatGPT iterations` = as.numeric(`Number of ChatGPT iterations`)) %>%
  mutate(passed = (`Number of tests` == `Number of passed tests`)) %>%
  mutate(passed_yes_no = ifelse(passed, "Yes", "No")) %>%
  mutate(passed_yes_no = factor(passed_yes_no, levels = c("Yes", "No"))) %>%
  mutate(chars_per_prompt = str_length(Instructions)) %>%
  mutate(`Number of ChatGPT iterations` = factor(`Number of ChatGPT iterations`, levels=1:10)) %>%
  mutate(gpt_solution_simplified = clean_code_segments(`ChatGPT solution`)) %>%
  mutate(chars_per_gpt_solution = str_length(gpt_solution_simplified)) %>%
  mutate(lines_per_gpt_solution = str_count(gpt_solution_simplified, "\\n"))

if ("Instructor's solution" %in% colnames(data)) {
  data = mutate(data, instructor_solution_simplified = clean_code_segments(`Instructor's solution`)) %>%
  mutate(chars_per_instructor_solution = str_length(instructor_solution_simplified)) %>%
  mutate(lines_per_instructor_solution = str_count(instructor_solution_simplified, "\\n"))
}

# Iterations per exercise

ggplot(data, aes(x = `Number of ChatGPT iterations`, fill = passed_yes_no)) +
  geom_bar() +
  geom_text(stat='count', aes(label=..count..), position = position_nudge(y = 5), size = 3.25, color = "#333333") +
  scale_x_discrete(drop=FALSE) +
  theme_bw() +
  scale_fill_manual(values=c("#4575b4", "#d73027")) +
  xlab("Number of ChatGPT iterations per exercise") +
  ylab("Count") +
  guides(fill = guide_legend(title = "Passed"))

if (!dir.exists("Figures")) {
  dir.create("Figures")
}

ggsave("Figures/iterations_per_exercise.pdf", width = 6.5)

if ("instructor_solution_simplified" %in% colnames(data)) {
  # Lines of code per instructor solution
  
  plot_data = mutate(data, lines_per_instructor_solution = factor(lines_per_instructor_solution, levels = 1:max(lines_per_instructor_solution)))
  
  max_lines_per_instructor_solution = max(as.integer(pull(data, lines_per_instructor_solution)))
  ticks = c(1, seq(5, max_lines_per_instructor_solution + 5, 5))
  
  ggplot(plot_data, aes(x = lines_per_instructor_solution, fill = passed_yes_no)) +
    geom_bar() +
    theme_bw() +
    scale_fill_manual(values=c("#4575b4", "#d73027")) +
    scale_x_discrete(breaks = ticks, labels = ticks, drop=FALSE) +
    xlab("Lines of code per solution") +
    ylab("Count") +
    guides(fill = guide_legend(title = "Passed"))
  
  ggsave("Figures/lines_per_instructor_solution.pdf", width = 6.5)

  # Mean and median lines per instructor solution - overall
  
  print(mean(as.integer(pull(data, lines_per_instructor_solution)))) # 7.657609
  print(median(as.integer(pull(data, lines_per_instructor_solution)))) # 6
  
  # Mean and median lines per instructor solution - passing vs. non-passing
  
  passed_lines = filter(data, passed) %>%
    pull(lines_per_instructor_solution)
  not_passed_lines = filter(data, !passed) %>%
    pull(lines_per_instructor_solution)
  
  print(median(passed_lines)) # 6
  print(median(not_passed_lines)) # 7
  
  wilcox.test(passed_lines, not_passed_lines) # 0.2836
  
  # Length of instructor's solution vs. ChatGPT solution
  
  plot_data1 = filter(data, passed) %>%
    select(chars_per_instructor_solution, chars_per_gpt_solution) %>%
    dplyr::rename(instructor = chars_per_instructor_solution) %>%
    dplyr::rename(gpt = chars_per_gpt_solution) %>%
    mutate(metric_type = "# of characters")
  
  plot_data2 = filter(data, passed) %>%
    select(lines_per_instructor_solution, lines_per_gpt_solution) %>%
    dplyr::rename(instructor = lines_per_instructor_solution) %>%
    dplyr::rename(gpt = lines_per_gpt_solution) %>%
    mutate(metric_type = "# of lines")
  
  plot_data = bind_rows(plot_data1, plot_data2)
  
  ggplot(plot_data, aes(x = instructor, y = gpt)) +
    geom_point() +
    theme_bw() +
    xlab("Instructor's solution") +
    ylab("ChatGPT solution") +
    facet_wrap(vars(metric_type), scales = "free") +
    geom_abline(slope = 1, intercept = 0, col = "#d73027", linetype="dashed")
  
  ggsave("Figures/lengths_of_solutions.pdf", width = 6.5)
  
  # Correlation tests between instructor's and ChatGPT solutions
  
  print(cor.test(pull(plot_data1, instructor), pull(plot_data1, gpt), method="spearman")) # 2.2e-16
  print(cor.test(pull(plot_data2, instructor), pull(plot_data2, gpt), method="spearman")) # 2.2e-16
  
  # Correlation between length of instructor's solution and # of attempts
  
  x = pull(data, lines_per_instructor_solution)
  y = pull(data, `Number of ChatGPT iterations`) %>%
    as.numeric()
  
  print(cor.test(x, y, method="spearman")) # rho = 0.235, p = 0.001365
  
  x = filter(data, passed) %>%
    pull(lines_per_instructor_solution)
  y = filter(data, passed) %>%
    pull(`Number of ChatGPT iterations`) %>%
    as.numeric()
  
  print(cor.test(x, y, method="spearman")) # 0.002425
}

# Length of prompt for passing vs. non-passing

passed_length = filter(data, passed) %>%
  pull(chars_per_prompt)
not_passed_length = filter(data, !passed) %>%
  pull(chars_per_prompt)

print(median(passed_length)) # 2036
print(median(not_passed_length)) # 9115

wilcox.test(passed_length, not_passed_length) # 0.1021

# Correlation between length of prompt and # of attempts

x = pull(data, chars_per_prompt)
y = pull(data, `Number of ChatGPT iterations`) %>%
  as.numeric()

print(cor.test(x, y, method="spearman")) # rho = 0.305, p = 2.59e-05

x = filter(data, passed) %>%
  pull(chars_per_prompt)
y = filter(data, passed) %>%
  pull(`Number of ChatGPT iterations`) %>%
  as.numeric()

print(cor.test(x, y, method="spearman")) # 0.0001261

# Number framed in biology context

bio_context = pull(data, `Is biology oriented (context)?`)
bio_word = pull(data, `Is biology oriented (words)?`)

x = table(bio_context)
print(x["Yes"] / sum(x))

print(table(bio_context, bio_word))

# Statistical evaluation of biology context

passed = pull(data, passed)
passed[passed] = "Yes"
passed[passed == FALSE] = "No"

print(table(bio_context, passed))
print(fisher.test(table(bio_context, passed)))

# Biology context vs. length of prompt

wilcox.test(chars_per_prompt~`Is biology oriented (context)?`, data=data) #p-value = 1.614e-09

bio = filter(data, `Is biology oriented (context)?`=="Yes") %>%
  pull(chars_per_prompt)
other = filter(data, `Is biology oriented (context)?`=="No") %>%
  pull(chars_per_prompt)

print(median(bio)) # 3203
print(median(other)) # 1437

# Biology context vs. data file

data_file = pull(data, `At least one data file`)

tbl = table(bio_context, data_file)
print(fisher.test(tbl))

# Shortening prompts

replace_nas = function(x, replace_with="No") {
  x[is.na(x)] = replace_with
  return(x)
}

too_long = replace_nas(pull(data, `Prompt too long`))
shorten = replace_nas(pull(data, `We tried a shortened version of the prompt`))

print(table(too_long, data_file))
print(table(too_long, passed))
print(table(too_long, bio_context))
print(table(shorten, data_file))
print(table(shorten, passed))
print(table(shorten, bio_context))

# Other challenges

minor_diffs = replace_nas(pull(data, `Minor differences in output`))
print(table(minor_diffs, passed))

logic_error = replace_nas(pull(data, `At least one logic error`))
print(table(logic_error, passed))

exception = replace_nas(pull(data, `At least one exception occurred`))
print(table(exception, passed))

missed_spirit = replace_nas(pull(data, `Passed but missed the spirit of the prompt`))
print(table(missed_spirit))

clarified = replace_nas(pull(data, `We clarified the prompt as a result of the ChatGPT interaction`))
print(table(clarified, passed))

# Additional observations

original_prompt = replace_nas(pull(data, `We asked ChatGPT to try again using the original prompt`))
print(table(original_prompt, passed))

not_covered = replace_nas(pull(data, `ChatGPT used technique not covered at this point`))
print(table(not_covered))

off_base = replace_nas(pull(data, `ChatGPT provided a solution that was off base`))
print(table(off_base, passed))

print(table(pull(data, `Output type`)))