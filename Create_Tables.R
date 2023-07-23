## Installation only needs to happen once.
# install.packages(c("knitr", "tidyverse"))

library(knitr)
library(tidyverse)

if (!dir.exists("Tables"))
  dir.create("Tables", showWarnings = FALSE)

assignment = c("09 - Strings", "14 - Regular Expressions 1", "15 - Regular Expressions 2", "19 - Additional Practice", "19 - Additional Practice")
exercise = c("05 - Is CpG island", "06 - Find words that start with a vowel", "06 - Switch column order", "08 - Make inducible promoter - Part B", "10 - Make inducible promoter - Part D")
prompt_summary = c("Count the proportion of a DNA sequence that consists of 'CG' nucleotide pairs", "Find words in a biological text that begin with vowels", "Switch the first two columns in a tab-delieted text file", "Identify in-frame start and stop codons in an mRNA sequence", "Identify restriction-enzyme binding sites upstream of a gene in a DNA sequence")
skills_emphasized = c("Manipulating strings; performing mathematical calculations", "Writing regular expressions; reading files", "Writing regular expressions or using lists; reading files; writing files", "Manipulating strings; reading files; using complex iteration logic", "Reading files; writing regular expressions; using complex iteration logic; using lists; using dictionaries; using conditionals")
failure_description = c("Failed on one test representing an edge case (exactly 10% of the sequence were CG pairs)", "Trouble dealing with extra spaces or punctuation marks", "Runtime errors, logic errors dealing with + or - portion of blood types", "Failed to follow the instruction to look for the start codon in frame", "Runtime errors, various logic errors, failure to fully comprehend the prompt")

tbl = tibble(`Assignment`=assignment, `Exercise`=exercise, `Prompt summary`=prompt_summary, `Skills emphasized`=skills_emphasized, `Failure summary`=failure_description)

tbl %>%
  kable(format="simple") %>%
  write("Tables/Failure_Summary.md")

####################################################################
# Interaction descriptions
####################################################################

data = read_html("Study_Results_ChatGPT/Interaction Descriptions.html")

# Read data from the spreadsheet (which has been converted to HTML) and remove extra column and rows. Also convert <br> tags back to newline characters.
xml_find_all(data, ".//br") %>% xml_add_sibling("p", "\n")
xml_find_all(data, ".//br") %>% xml_remove()

data = html_element(data, "table") %>%
  html_table(header = TRUE, convert = FALSE)

colnames(data) = data[1,]
data = data[,c(2:ncol(data))]
data = data[3:nrow(data),]

pivot_longer(data, -c(Assignment, Exercise, Interactions), names_to = "Interaction type", values_to = "Count") %>%
  filter(Count != "") %>%
  mutate(Count = as.numeric(Count)) %>%
  group_by(`Interaction type`) %>%
  summarize(Count = sum(Count)) %>%
  arrange(desc(Count)) %>%
  kable(format="simple") %>%
  write("Tables/Interactions_Summary.md")