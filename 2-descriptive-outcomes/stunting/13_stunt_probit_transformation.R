##########################################
# ki longitudinal manuscripts
# stunting analysis

# response to reviewer comment
# use probit instead of logit link
##########################################

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# reloading because some overlap with stunting
source(paste0(here::here(), "/0-project-functions/0_descriptive_epi_shared_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_descriptive_epi_stunt_functions.R"))

data <- readRDS(paste0(ghapdata_dir, "stunting_data.rds"))

#-------------------------------------------
# check included cohorts
#-------------------------------------------
assert_that(setequal(unique(data$studyid), monthly_and_quarterly_cohorts),
            msg = "Check data. Included cohorts do not match.")

data <- data %>% subset(., select = -c(tr))

agelst3_birthstrat = list(
  "Birth",
  "8 days-3 months",
  "3-6 months",
  "6-9 months",
  "9-12 months",
  "12-15 months",
  "15-18 months",
  "18-21 months",
  "21-24 months"
)

d <- calc.ci.agecat(data, range = 3, birth="yes")

# subset to one cohort
df = d %>% filter(studyid=="CMC-V-BCS-2002") %>% 
  filter(!is.na(agecat)) %>% 
  mutate(stunted = ifelse(haz < -2, 1, 0)) 

logitModel  = glm(stunted~agecat, family=binomial(link="logit"), data = df)
probitModel = glm(stunted~agecat, family=binomial(link="probit"), data = df)

deviance(probitModel)
deviance(logitModel)
deviance(logitModel)-deviance(probitModel)

pred_logit = predict(logitModel, type = "response")
pred_probit = predict(probitModel, type = "response")

fits = data.frame(x = df$agecat, 
                  logit = pred_logit, 
                  probit = pred_probit)
fitsl = reshape2::melt(fits, id.var= "x")
colnames(fitsl) = c("agecat", "model", "pred")

library(ggplot2)
ggplot(fitsl, aes(x =agecat, y = pred, group= model)) +
  geom_line(aes(col=model)) +
  ylab("Predicted probability of stunting")+
  xlab("") +
  theme(legend.position="bottom")


