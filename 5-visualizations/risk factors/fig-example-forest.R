
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))



#Load data
dpool <- readRDS(paste0(here::here(),"/results/rf results/pooled_RR_results.rds")) %>% 
  filter( intervention_variable=="sex", outcome_variable=="ever_stunted", RR.CI1 != RR.CI2, agecat=="0-24 months", region!="N.America & Europe") %>%
  mutate(pooled=1)
dFE <- readRDS(paste0(here::here(),"/results/rf results/pooled_RR_FE_results.rds")) %>% 
  filter( intervention_variable=="sex", outcome_variable=="ever_stunted", RR.CI1 != RR.CI2, agecat=="0-24 months", region=="Pooled") %>%
        mutate(pooled=1, region="Pooled - FE")
dfull <- readRDS(paste0(here::here(),"/results/rf results/full_RF_results.rds")) %>% 
  filter(type=="RR",  intervention_variable=="sex", outcome_variable=="ever_stunted", ci_lower != ci_upper, agecat=="0-24 months") %>%
  mutate(pooled=0) %>%
  rename(RR=estimate, RR.CI1=ci_lower, RR.CI2=ci_upper)

dfull <- RMA_clean(dfull)


d <- bind_rows(dpool, dFE, dfull)

d$agecat <- "0-24 months cumulative incidence)"
d$pooled <- factor(d$pooled, levels=c("1","0"))

d$studyid[is.na(d$studyid)] <- paste0("Pooled - ",d$region[is.na(d$studyid)])

#Strip grant identifier and add country
d$studyid <- gsub("^k.*?-" , "", d$studyid)
d$studyid <- paste0(d$studyid, ", ", paste0(substring(as.character(d$country),1,1), tolower(substring(as.character(d$country),2))))
d$studyid <- gsub("Tanzania, united republic of", "Tanzania", d$studyid)
d$studyid <- gsub("africa", "Africa", d$studyid)
d$studyid <- gsub("NANA", "", d$studyid)
unique(d$studyid)
d$studyid[d$studyid=="Pooled - Pooled, "] <- "Pooled - RE" 
d$studyid[d$studyid=="Pooled - Pooled - FE, "] <- "Pooled - FE"
d$studyid[d$studyid=="Pooled - Africa, "] <- "Pooled - Africa"
d$studyid[d$studyid=="Pooled - South Asia, "] <- "Pooled - South Asia"
d$studyid[d$studyid=="Pooled - Latin America, "] <- "Pooled - Latin America"
  



  
#order by Region
d$region <- as.character(d$region)
d$region[d$region=="N.America & Europe"] <- "Europe"
d$region <- factor(d$region, levels=c("Pooled","Pooled - FE","South Asia", "Africa","Latin America","Europe"))
d <- d %>% arrange(pooled, region)
#d <- d[with(d, order(desc(pooled), desc(region))),]
unique(d$studyid)

d$studyid <- as.character(d$studyid)
d$studyid <- factor(d$studyid, levels=unique(d$studyid))
d$order <- as.numeric(d$studyid)

d <- droplevels(d)


p <-  ggplot(d, aes(x=(studyid))) + 
  geom_point(aes(shape=pooled, y=RR, fill=region, color=region), size = 4) +
  geom_errorbar(aes(ymin=RR.CI1, ymax=RR.CI2, color=region)) +
  coord_flip(ylim=range(0.75,2.5)) +
  #labs(x = "Study-specific results stratified by risk factor level\nwith reference category N's and cases printed", y = Ylab) +
  ylab("      Girls have                                                                Boys have\n      higher risk                                                                higher risk") +
  xlab("Cohort") +
  geom_hline(yintercept = 1) +
  geom_vline(xintercept = 2.5, linetype=2) +
  geom_vline(xintercept = 5.5) +
  #geom_text(aes(y=0.5, label=Ns), size=3,  hjust=0) +
  #geom_text(aes(y=3, label=adjustment_set), size=3,  hjust=0) +
  scale_y_continuous(breaks= c( 0.75, 1.00, 1.50, 2.00, 4.00), trans='log10', labels=scaleFUN) +
  #scale_x_discrete(labels= df$studyid2) +
  scale_shape_manual(values=c(21, 23)) +
  scale_colour_manual(values=tableau11[c(1,1:5)]) +
  scale_fill_manual(values=tableau11[c(1,1:5)]) +
  scale_size_continuous(range = c(0.5, 1))+
  theme(strip.background = element_blank(),
        legend.position="none",
        strip.text.x = element_text(size=12),
        axis.text.x = element_text(size=12),
        panel.grid.minor=element_blank(),
        axis.title.x = element_text(size=12, hjust = .1)) +
  ggtitle("Associations between sex and stunting incidence\nfrom birth-24 months: cohort-specific and pooled results") +guides(shape=FALSE)


ggsave(p, file=paste0(here::here(), "/figures/risk-factor/example_forest_plot_wasting.png"), height=14, width=10)















