


#-----------------------------------
# Check anthropometry measure quality
#-----------------------------------

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_co_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_descriptive_epi_shared_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_descriptive_epi_stunt_functions.R"))
library(growthstandards)

d <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))





#---------------------------------------------------------
# Drop cohorts without gestational age
#---------------------------------------------------------

d <- d %>% filter(!is.na(W_gagebrth)) %>%
  subset(., select = c(studyid, country, region, measurefreq, subjid, agedays, sex, W_gagebrth, haz, waz, wtkg, lencm, htcm)) %>%
  mutate(cohort = paste0(studyid, ":\n", country))

d$lencm[is.na(d$lencm)] <- d$htcm[is.na(d$lencm)]


#Histograms of GA by cohort
ggplot(d, aes(x=W_gagebrth)) + geom_histogram() + facet_wrap(~cohort, scales="free_y") +
  geom_vline(xintercept = c(168, 300))



#Drop gestational ages under 24 weeks or over 300 days (no intergrowth standards) 
d <- d %>% filter(W_gagebrth > 24 *7 & W_gagebrth <= 300) 
  



#---------------------------------------------------------
#Subset to observations at birth
#---------------------------------------------------------

stunt <- d %>% filter(haz >= -6 & haz <=6,
                      measurefreq!="yearly",
                      agedays == 1) %>%
               mutate(stunt = 1*(haz < (-2)),
                      agecat="Birth",
                      agecat = factor(agecat)) %>%
              #Drop cohorts with few birth measures
               group_by(cohort) %>%
              filter(n() >= 50)

uwt <- d %>% filter(waz >= -6 & waz <=5,
                    measurefreq!="yearly",
                    agedays ==1) %>%
             mutate(underwt = 1*(waz < (-2)),
                    agecat="Birth",
                    agecat = factor(agecat)) %>%
              #Drop cohorts with few birth measures
              group_by(cohort) %>%
              filter(n() >= 50)

#---------------------------------------------------------
# Gestational Age correction
#---------------------------------------------------------

stunt$haz_raw <- stunt$haz 
uwt$waz_raw <- uwt$waz  

stunt$haz_GA <- igb_value2zscore(stunt$W_gagebrth, stunt$lencm, var = "lencm", sex = stunt$sex)
uwt$waz_GA <- igb_value2zscore(uwt$W_gagebrth, uwt$wtkg, var = "wtkg", sex = uwt$sex)
#uwt$wlz_GA <- igb_value2zscore(uwt$W_gagebrth, uwt$wtkg/uwt$lencm, var = "wlr", sex = uwt$sex)

stunt$diff <- stunt$haz_GA - stunt$haz
uwt$diff <- uwt$waz_GA - uwt$waz

#Histograms of Z-score differences
ggplot(stunt, aes(x=diff)) + geom_density() + facet_wrap(~cohort, scales="free_y")  +
  geom_vline(xintercept = 0) + ggtitle("Difference between GA corrected and uncorrected LAZ")

ggplot(uwt, aes(x=diff)) + geom_density() + facet_wrap(~cohort, scales="free_y")  +
  geom_vline(xintercept = 0) + ggtitle("Difference between GA corrected and uncorrected WAZ")

#---------------------------------------------------------
# Fill in the Z-scores for high GA and drop Z-scores from 
# too-low GA
#---------------------------------------------------------

stunt$haz_GA[is.na(stunt$haz_GA)] <- stunt$haz[is.na(stunt$haz_GA)]
uwt$waz_GA[is.na(uwt$waz_GA)] <- uwt$waz[is.na(uwt$waz_GA)]

#---------------------------------------------------------
#Calculate underweight and stunting at birth, without GA correction
#---------------------------------------------------------

uwt$whz <- uwt$waz
prev.data <- summary.prev.whz(uwt)
prev.region <- uwt %>% group_by(region) %>% do(summary.prev.whz(.)$prev.res)

prev.cohort <-
  prev.data$prev.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

underweight_prev_raw <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", prev.data$prev.res),
  data.frame(cohort = "pooled", prev.region),
  prev.cohort
)





prev.data <- summary.prev.haz(stunt)
prev.region <- stunt  %>% group_by(region) %>% do(summary.prev.haz(.)$prev.res)
prev.cohort <-
  prev.data$prev.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

stunt_prev_raw <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", prev.data$prev.res),
  data.frame(cohort = "pooled", prev.region),
  prev.cohort
)




#---------------------------------------------------------
#Calculate underweight and stunting at birth, without GA correction
#---------------------------------------------------------


uwt$whz <- uwt$waz_GA
prev.data <- summary.prev.whz(uwt)
prev.region <- uwt %>% group_by(region) %>% do(summary.prev.whz(.)$prev.res)

prev.cohort <-
  prev.data$prev.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

underweight_prev_GA <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", prev.data$prev.res),
  data.frame(cohort = "pooled", prev.region),
  prev.cohort
)




stunt$haz <- stunt$haz_GA
prev.data <- summary.prev.haz(stunt)
prev.region <- stunt  %>% group_by(region) %>% do(summary.prev.haz(.)$prev.res)
prev.cohort <-
  prev.data$prev.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub)

stunt_prev_GA <- bind_rows(
  data.frame(cohort = "pooled", region = "Overall", prev.data$prev.res),
  data.frame(cohort = "pooled", prev.region),
  prev.cohort
)




#---------------------------------------------------------
#Make plotting data.frame
#---------------------------------------------------------

df <- rbind(
  data.frame(underweight_prev_raw, measure="Underweight", GA_correction="Uncorrected"),
  data.frame(stunt_prev_raw, measure="Stunting", GA_correction="Uncorrected"),
  data.frame(underweight_prev_GA, measure="Underweight", GA_correction="GA Corrected"),
  data.frame(stunt_prev_GA, measure="Stunting", GA_correction="GA Corrected")
)


#---------------------------------------------------------
# Clean up cohort names for plot
#---------------------------------------------------------

# # simplify Tanzania label
df$country[df$country=='TANZANIA, UNITED REPUBLIC OF'] <- 'TANZANIA'
df <- mutate(df, country=str_to_title(str_to_lower(country)))


df$cohort <- factor(df$cohort, levels = unique(df$cohort))
df$region <- factor(df$region, levels = c("Overall","South Asia","Africa","Latin America", "N.America & Europe", "Europe"))
df$GA_correction <- factor(df$GA_correction, levels = c("GA Corrected", "Uncorrected"))

df$pooled <- ifelse(df$cohort=="pooled", 0, 1)

df <- df %>% arrange(pooled, region, GA_correction, est)

df <- df %>% filter(!(cohort=="pooled" & region=="N.America & Europe"))

df$est[df$cohort!="pooled"] <- df$est[df$cohort!="pooled"] * 100
df$lb[df$cohort!="pooled"] <- df$lb[df$cohort!="pooled"] * 100
df$ub[df$cohort!="pooled"] <- df$ub[df$cohort!="pooled"] * 100

df$cohort <- as.character(df$cohort)
df$cohort[df$cohort=="pooled"] <- paste0("Pooled - ", df$region[df$cohort=="pooled"] )

df$cohort[df$cohort=="COHORTS-Philippines"] <-   "Cebu Cohort"   
df$cohort[df$cohort=="COHORTS-Guatemala"] <- "INCAP Nutr Supp RCT" 
df$cohort[df$cohort=="COHORTS-India"] <- "New Delhi Birth Cohort" 

df$cohort <- factor(df$cohort, levels = rev(unique(df$cohort)))


p <- ggplot(df, aes(y=est,x=cohort)) +
  geom_errorbar(aes(color=region, ymin=lb, ymax=ub, group=GA_correction), width = 0, position = position_dodge(0.4)) +
  geom_point(aes(fill=region, color=region, shape=GA_correction, group=GA_correction), size = 2, position = position_dodge(0.4)) +
  scale_fill_manual(values=tableau11) +
  scale_color_manual(values=tableau11) +
  geom_hline(yintercept = 0) +
  xlab("Cohort")+
  ylab("Prevalence at birth") +
  scale_shape_manual(values = c(4, 21)) +
  scale_x_discrete(expand = expand_scale(add = 1)) +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10))  +
  coord_flip() +
  theme(axis.title.y = element_text(size = 14)) +
  ggtitle("") + 
  facet_grid(~measure) +
  theme(strip.text = element_text(size=14, margin = margin(t = 0)),
        legend.position = "right") 

print(p)

#Note that tanzania child measured weight, but not length, at birth, so missing from the stunting plot


#Save plot and plot data
ggsave(p, file=paste0(here::here(), "/figures/shared/fig-GA-correction-sensitivity.png"), height=10, width=14)

saveRDS(df, file=paste0(here::here(), "/figures/figure-data/fig-GA-correction-sensitivity.RDS"))

