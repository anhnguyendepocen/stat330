library(dplyr)

d = readr::read_csv("~/Downloads/gc_F2016-STAT_-330_-ALL_fullgc_2016-10-24-11-09-48.csv")

names(d)[c(4,16,17,19)] = c("section", "exam1", "exam2", "homework")

course_data <- d %>%
	select(section, homework,exam1,exam2) %>%
	mutate(homework = as.numeric(gsub("%","",homework)),
				 exam1    = as.numeric(gsub("%","",exam1)),
				 exam2    = as.numeric(gsub("%","",exam2))) %>%
	readr::write_csv(path = "course_data.csv")
