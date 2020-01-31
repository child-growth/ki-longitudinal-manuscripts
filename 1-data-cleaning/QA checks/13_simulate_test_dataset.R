
#Generate fake data to test ki functions on
library(tidyverse)

set.seed(12345)
n <- 100000

studyid <- factor(rep(letters[1:10], each=n/10))
country <- factor(rep(letters[1:20], each=n/20))

subjid <- rep(rep(1:50, each = 50), 40)

haz <- rnorm(n,-1.5,1.5)
whz <- rnorm(n,-1,1.5)

agedays <- rep(1:50*15,n/50)

d <- data.frame(studyid, country, subjid, agedays, haz, whz)
d <- d %>% arrange(studyid, country, subjid,agedays)

saveRDS(d, test_data_path)
