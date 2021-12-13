# library(tidyverse)
# m_eng <- readr::read_lines("eng_OpenSub.txt")
# m_idn <- readr::read_lines("id_OpenSub.txt")
# 
# search_terms <- c("\\brob(bed|bing|s)?\\b", "\\b(steal(s|ing)?|stolen?)\\b", 
#                   "\\bsnatch(e[ds]|ing)?\\b", "\\bsnitch(e[ds]|ing)?\\b",
#                   "\\bplunder(s|ed|ing)?\\b")
# search_terms_freq <- unlist(purrr::pmap(list(m_eng), stringr::str_extract_all, pattern = stringr::regex(search_terms, ignore_case = FALSE)))
# search_terms_freq_tb <- dplyr::arrange(as.data.frame(table(search_terms_freq)), search_terms_freq, Freq)
# colnames(search_terms_freq_tb) <- c("verbs", "freq")
# readr::write_rds(search_terms_freq_tb, "freq-THEFT-verbs.rds")

library(tidyverse)

# read in the frequency list data
theft_verbs <- readRDS("freq-THEFT-verbs.rds")

# summarising the token frequency of the lemma ROB
sum(subset(theft_verbs, grepl("^rob", verbs, perl = TRUE), freq))

# filter the token frequencies for each form of the lemma ROB
subset(theft_verbs, grepl("^rob", verbs, perl = TRUE))

# summarising the token frequency of the lemma STEAL
sum(subset(theft_verbs, grepl("^st(ea|ol)", verbs, perl = TRUE), freq))

# filter the token frequencies for each form of the lemma STEAL
subset(theft_verbs, grepl("^st(ea|ol)", verbs, perl = TRUE))

# data preparation for visualising the token frequencies of forms for the lemma ROB and STEAL
rs <- subset(theft_verbs, grepl("^(st(ea|ol)|rob)", verbs, perl = TRUE))
rs <- rs %>% 
  mutate(lemma = ifelse(grepl("^rob", verbs), "ROB", "STEAL"))
rs <- rs %>% 
  mutate(verbs = factor(verbs, levels = c("rob", "robbed", "robbing", "robs", "steal", "stole", "stolen", "stealing", "steals"))) %>% 
  arrange(verbs)

# create the bar plot
rs_p <- rs %>% 
  ggplot(aes(x = verbs, y = freq, group = lemma, fill = lemma)) + 
  geom_col() + 
  scale_fill_grey() +
  geom_text(aes(label = freq), vjust = -.3) +
  theme_light() +
  labs(y = "Token frequency", x = "Verb forms", fill = "Lemma")

# save the bar plot into .png
ggsave(filename = 'figs/plot-freq-verba-R&S.png', 
       plot = rs_p, 
       dpi = 800, 
       width = 8, 
       height = 5, 
       units = "in")

# Chi-square goodness-of-fit lemma ROB vs. STEAL
(ROB_sum <- sum(subset(theft_verbs, grepl("^rob", verbs, perl = TRUE), freq)))
(STEAL_sum <- sum(subset(theft_verbs, grepl("^st(ea|ol)", verbs, perl = TRUE), freq)))
(gof_ROB_STEAL <- chisq.test(c(ROB_sum, STEAL_sum)))
