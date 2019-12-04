


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

tab1_shell <- read.csv(here("data/HBGDki-tab1-shell.csv"))

cc_tab1_Ns <- readRDS(here("/results/cc_table1.rds"))
stunt_tab1_Ns <- readRDS(here("/results/stunt_table1.rds"))
wast_tab1_Ns <- readRDS(here("/results/wast_table1.rds"))

head(tab1_shell)
head(stunt_tab1_Ns)
stunt_tab1 <- left_join(tab1_shell, stunt_tab1_Ns, by = c("studyid","country"))
head(stunt_tab1)

wast_tab1 <- left_join(tab1_shell, wast_tab1_Ns, by = c("studyid","country"))
cc_tab1 <- left_join(tab1_shell, cc_tab1_Ns, by = c("studyid","country"))


#Select studies and order columns
wast_tab1 <- wast_tab1 %>% 
  filter(wasting==1) %>%
  select("study",  "Country", "StudyYears", "Design",  "nchild", "meas_ages", "nobs", "ref") %>%
  mutate(nchild=as.character(nchild), nobs=as.character(nobs))
wast_tab1[is.na(wast_tab1)] <- ""


stunt_tab1 <- stunt_tab1 %>% 
  filter(stunting==1) %>%
  select("study",  "Country", "StudyYears", "Design",  "nchild", "meas_ages", "nobs", "ref") %>%
  mutate(nchild=as.character(nchild), nobs=as.character(nobs))
stunt_tab1[is.na(stunt_tab1)] <- ""


cc_tab1 <- cc_tab1 %>% 
  filter(rf==1) %>%
  select("study",  "Country", "StudyYears", "Design",  "nchild", "meas_ages", "nobs", "ref") %>%
  mutate(nchild=as.character(nchild), nobs=as.character(nobs))
cc_tab1[is.na(cc_tab1)] <- ""

#format column names
colnames_vec <- c("Region, Study ID",	"Country",	"Study Years",	"Design",	"Children Enrolled*",	"Anthropometry measurement ages (months)",	"Total measurements*",	"Primary References")
colnames(wast_tab1) <- colnames_vec
colnames(stunt_tab1) <- colnames_vec
colnames(cc_tab1) <- colnames_vec

#Save as csv files
write_csv(wast_tab1, path = here("results/wasting_table1.csv"))
write_csv(stunt_tab1, path = here("results/stunting_table1.csv"))
write_csv(cc_tab1, path = here("results/c&c_table1.csv"))


#*Children enrolled is for children with measurements under 2 years of age. Total measurements are number of measurements of anthropometry on children under 2 years of age.
