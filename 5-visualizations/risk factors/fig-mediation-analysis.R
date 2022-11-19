


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

#Load mediation results
results <- readRDS(paste0(BV_dir,"/results/rf results/longbow results/mediation.RDS"))
md <- results %>% filter(type=="ATE") %>% mutate(analysis="med")
head(md)

#load primary results
dfull <- readRDS(paste0(BV_dir,"/results/rf results/full_RF_results.rds"))
head(dfull)

dfull <- dfull %>% filter(type=="ATE", adjustment_set!="unadjusted") %>% mutate(analysis="prim")

d <- bind_rows(dfull, md)

#subset to primary outcomes
d <- d %>% filter(outcome_variable %in% c("haz", "whz"))

#Subset to parental variables
unique(d$intervention_variable)
d <- d %>% filter(intervention_variable %in% c("mage", "fage", "mhtcm", "mwtkg", "mbmi", "single", "fhtcm"))
table(d$analysis)

#Mark how many birth variables are adjusted for in each study
d$num_birth_vars <- 0
d$num_birth_vars <- ifelse(grepl("gagebrth",d$adjustment_set), d$num_birth_vars + 1, d$num_birth_vars)
d$num_birth_vars <- ifelse(grepl("birthwt",d$adjustment_set), d$num_birth_vars + 1, d$num_birth_vars)
d$num_birth_vars <- ifelse(grepl("birthlen",d$adjustment_set), d$num_birth_vars + 1, d$num_birth_vars)
d$num_birth_vars <- ifelse(grepl("sga",d$adjustment_set), d$num_birth_vars + 1, d$num_birth_vars)
d$num_birth_vars <- ifelse(grepl("hdlvry",d$adjustment_set), d$num_birth_vars + 1, d$num_birth_vars)
d$num_birth_vars <- ifelse(grepl("parity",d$adjustment_set), d$num_birth_vars + 1, d$num_birth_vars)

table(d$num_birth_vars, d$analysis)

#Subset to cohorts measuring sufficient birth covariates
df <- d %>% filter(num_birth_vars>2 | analysis=="prim")
med_studies <- unique(df$studyid[df$analysis=="med"])
med_studies

d_nonmed <- d %>% filter(studyid %in% med_studies)

#Get N children
load(paste0(ghapdata_dir,"/mediation_HAZ.Rdata"))
d <- df %>% filter(studyid %in% med_studies) %>% filter(agecat=="24 months")
nrow(d)
length(med_studies)


#Drop reference levels
d <- d_nonmed %>% filter(ci_lower !=  ci_upper)
table(d$analysis)

# #Compare cohort-specific estimates
# plotdf <- d %>% filter(agecat=="6 months") %>% select(strata_label, intervention_variable, outcome_variable, intervention_level, analysis, estimate) %>% spread(analysis, estimate)
# head(plotdf)
# ggplot(plotdf, aes(x=prim, y=med)) + 
#   geom_point() + 
#   coord_cartesian(xlim=c(-1.5, 1.5), ylim=c(-1.5, 1.5)) + geom_abline(intercept = 0, slope = 1) 


# Pool estimates
d <- droplevels(d)
RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable,analysis) %>%
  do(pool.cont(.)) %>% as.data.frame()
head(RMAest)
table(RMAest$analysis)


#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest)
head(RMAest_clean)

int_vars <- c("mhtcm", "mwtkg", "mbmi", "fhtcm")
plotdf <- RMAest_clean %>% filter(agecat=="24 months", CI1!=CI2, intervention_variable %in% int_vars)
plotdf$intervention_variable <- factor(plotdf$intervention_variable , levels= rev(c("fhtcm", "mhtcm", "mbmi", "mwtkg")))
plotdf$Analysis <- ifelse(plotdf$analysis=="prim", "Primary", "Mediation")
plotdf <- plotdf %>% arrange(intervention_variable) %>% mutate(RFlabel2 = paste0(RFlabel,"\nref: ",baseline_level),
                                                               RFlabel2 = factor(RFlabel2, levels=unique(RFlabel2)))

outcomes <- c(
  `haz` = "",
  `whz` = "")

pd <- position_dodge(0.4)

#get percent change with including birth characteristics
perc_change = plotdf %>% group_by(intervention_variable, intervention_level, outcome_variable) %>%
  summarise(med=first(ATE), prim=last(ATE)) %>%
  mutate(perc_change=(med-prim)/prim * 100) %>% ungroup %>%
  mutate(md=median(perc_change), mn=mean(perc_change)) 
perc_change

p <- ggplot(plotdf, aes(x=reorder(intervention_level, desc(intervention_level)))) + 
  geom_point(aes(y=ATE, color=Analysis), size = 3, position = pd) +
  geom_linerange(aes(ymin=CI1, ymax=CI2, color=Analysis),
                 alpha=0.5, size = 1, position = pd) +
  facet_grid(RFlabel2 ~ outcome_variable, scales="free", 
             labeller = labeller(outcome_variable = outcomes), 
             switch = "y")+
  labs(x = "Exposure level", y = "Adjusted Z-score difference") +
  geom_hline(yintercept = 0, linetype="dashed") +
  coord_cartesian(ylim = c(-1, 0.22)) +
  scale_y_continuous(breaks=c(-1,-0.8,-0.6, -0.4, -0.2, 0, 0.2), labels=scaleFUN, expand = c(0,0)) +
  scale_colour_manual(values=tableau10[c(2,3)]) +  
  ggtitle("LAZ                                                       WLZ")+
  theme(strip.background = element_blank(),
        legend.position=c(0.07, 0.64),
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

ggsave(p, file=paste0(fig_dir,"risk-factor/fig-mediation.png"), width=10, height=6)
p

