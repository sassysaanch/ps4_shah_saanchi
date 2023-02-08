library(tidyverse)

#Let's read in the data through read_csv without loading this data first
mrc <- read_csv(file = url("http://www.equality-of-opportunity.org/data/college/mrc_table2.csv"))

#Create a subset dataset
mrc_subset <- mrc %>% select(name, par_q1, par_q2, par_q3, par_q4, par_q5)

#Let's pivot mrc_subset now
mrc_pivot <- mrc_subset %>% pivot_longer(cols = c(par_q1, par_q2, par_q3, par_q4, par_q5),
                                         names_to = 'quintile',
                                         names_prefix = 'par_',
                                         values_to = 'fraction')

