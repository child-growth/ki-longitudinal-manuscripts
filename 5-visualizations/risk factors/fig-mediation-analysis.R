


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

#Load mediation results
results <- readRDS(here("results/rf results/raw longbow results/mediation_2020-03-08.rds"))
md <- results %>% filter(type=="ATE") %>% mutate(analysis="med")
head(md)

#load primary results
dfull <- readRDS(here("results/rf results/full_RF_results.rds"))
head(dfull)

dfull <- dfull %>% filter(type=="ATE", adjustment_set!="unadjusted") %>% mutate(analysis="prim")

d <- bind_rows(dfull, md)

#subset to primary outcomes
d <- d %>% filter(outcome_variable %in% c("haz", "whz"))

#Subset to parental variables
unique(d$intervention_variable)
d <- d %>% filter(intervention_variable %in% c("mage", "fage", "mhtcm", "mwtkg", "mbmi", "single", "fhtcm"))


#Mark how many birth variables are adjusted for in each study
d$num_birth_vars <- 0
d$num_birth_vars <- ifelse(grepl("gagebrth",d$adjustment_set), d$num_birth_vars + 1, d$num_birth_vars)
d$num_birth_vars <- ifelse(grepl("birthwt",d$adjustment_set), d$num_birth_vars + 1, d$num_birth_vars)
d$num_birth_vars <- ifelse(grepl("birthlen",d$adjustment_set), d$num_birth_vars + 1, d$num_birth_vars)
d$num_birth_vars <- ifelse(grepl("vagbrth",d$adjustment_set), d$num_birth_vars + 1, d$num_birth_vars)
d$num_birth_vars <- ifelse(grepl("hdlvry",d$adjustment_set), d$num_birth_vars + 1, d$num_birth_vars)
d$num_birth_vars <- ifelse(grepl("parity",d$adjustment_set), d$num_birth_vars + 1, d$num_birth_vars)

table(d$num_birth_vars, d$analysis)

#Subset to cohorts measuring suffiicient birth covariates
df <- d %>% filter(num_birth_vars>3 | analysis=="prim")
med_studies <- unique(df$studyid[df$analysis=="med"])

d <- d %>% filter(studyid %in% med_studies)


#Drop reference levels
d <- d %>% filter(ci_lower !=  ci_upper)

#Compare cohort-specific estimates
plotdf <- d %>% filter(agecat=="6 months") %>% select(strata_label, intervention_variable, outcome_variable, intervention_level, analysis, estimate) %>% spread(analysis, estimate)
head(plotdf)
ggplot(plotdf, aes(x=prim, y=med)) + 
  geom_point() + 
  coord_cartesian(xlim=c(-1.5, 1.5), ylim=c(-1.5, 1.5)) + geom_abline(intercept = 0, slope = 1) 


# Pool estimates
d <- droplevels(d)
RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable,analysis) %>%
  do(pool.cont(.)) %>% as.data.frame()
head(RMAest)


#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest)
head(RMAest_clean)

int_vars <- c("mhtcm", "mwtkg", "mbmi", "fhtcm")
plotdf <- RMAest_clean %>% filter(agecat=="6 months", CI1!=CI2, intervention_variable %in% int_vars)
plotdf$intervention_variable <- factor(plotdf$intervention_variable , levels= rev(c("fhtcm", "mhtcm", "mbmi", "mwtkg")))
plotdf$Analysis <- ifelse(plotdf$analysis=="prim", "Primary", "Mediation")
plotdf <- plotdf %>% arrange(intervention_variable) %>% mutate(RFlabel2 = paste0(RFlabel,"\nref: ",baseline_level),
                                                               RFlabel2 = factor(RFlabel2, levels=unique(RFlabel2)))

outcomes <- c(
  `haz` = "",
  `whz` = "")

pd <- position_dodge(0.4)


p <- ggplot(plotdf, aes(x=reorder(intervention_level, desc(intervention_level)))) + 
  geom_point(aes(y=ATE, color=Analysis), size = 3, position = pd) +
  geom_linerange(aes(ymin=CI1, ymax=CI2, color=Analysis),
                 alpha=0.5, size = 1, position = pd) +
  facet_grid(RFlabel2 ~ outcome_variable, scales="free", 
             labeller = labeller(outcome_variable = outcomes), 
             switch = "y")+
  labs(x = "Exposure level", y = "Adjusted Z-score difference") +
  geom_hline(yintercept = 0) +
  scale_y_continuous(limits = c(-.75, 0.25), breaks=c(-0.6, -0.4, -0.2, 0, 0.2), labels=scaleFUN, expand = c(0,0)) +
  scale_colour_manual(values=tableau10[c(2,3)]) +  
  ggtitle("LAZ                                                       WLZ")+
  theme(strip.background = element_blank(),
        legend.position=c(0.07, 0.84),
        axis.text.y = element_text(size=8, hjust = 1),
        strip.text.x = element_text(size=8, face = "bold"),
        strip.text.y = element_text(size=8, angle = 180, face = "bold"),
        strip.placement = "outside",
        axis.text.x = element_text(size=10, vjust = 0.5),
        panel.spacing = unit(0, "lines"),
        legend.box.background = element_rect(colour = "black")#, 
        #title = element_text(margin=margin(0,0,-10,0))
        ) +
  guides(color=guide_legend(ncol=1))+
  coord_flip()

ggsave(p, file="C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk-factor/fig-mediation.png", width=10, height=6)


