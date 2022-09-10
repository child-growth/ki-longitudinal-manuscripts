
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))



#Plot parameters
yticks <- c( 0.50, 1.00, 2.00, 4.00, 8.00)
tableau10 <- c("#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
tableau11 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
Ylab <- "Relative Risk"
scaleFUN <- function(x) sprintf("%.0f", x)


clean_nmeans<-function(nmeas){
  nmeas <- round(nmeas/1000)
  nmeas.f <- paste0("N=",nmeas,"K children")
  return(nmeas.f)
}

clean_agecat<-function(agecat){
  agecat <- as.character(agecat)
  agecat <- gsub("months","mo.", agecat)
  agecat <- factor(agecat, levels=unique(agecat))
  return(agecat)
}



dHR1 <- readRDS(paste0(BV_dir,"/results/cox_results_no_overlap.RDS")) %>% filter(!is.na(HR)) %>% mutate(analysis="No overlap")
dHR2 <- readRDS(paste0(BV_dir,"/results/full_cox_results.RDS")) %>% filter(!is.na(HR)) %>% mutate(analysis="Overlap")
dHR_full <- bind_rows(dHR1, dHR2)


dHR_full$severe <- 0
dHR_full$severe <- 1*(grepl("sstunt",dHR_full$X)|grepl("swast",dHR_full$X)|grepl("sunderwt",dHR_full$X))

names(dHR_full)[names(dHR_full) == 'HR'] <- 'RR'
names(dHR_full)[names(dHR_full) == 'ci.lb'] <- 'RR.CI1'
names(dHR_full)[names(dHR_full) == 'ci.ub'] <- 'RR.CI2'


write.csv(dHR_full, paste0(here(),"/data/full_mortality_results.csv"))

# dropped <- c("studyid", "est", "se", "N", "sparseN",  "Nstudies", "Y", "adj", "df", "sex", "logHR.psi", "logSE", "HR.CI1", "HR.CI2")
# dHR_full <- dHR_full[ , !(names(dHR_full) %in% dropped)]







#-----------------------------------
# No overlap
#-----------------------------------

unique(dHR_full$X)
table(dHR_full$X)



dHR <- dHR_full %>%
  mutate(
    cgf_cat = case_when(X=="stunt"  ~ "Mod. stunted alone", 
                        X=="wast"  ~ "Mod. wasted alone",
                        X=="wast_muac"  ~ "Wasted (MUAC)",
                        X=="underwt"  ~ "Mod. underweight alone",          
                        X=="sstunt"  ~ "Sev. stunted alone",          
                        X=="swast"  ~ "Sev. wasted alone",           
                        X=="swast_muac"  ~ "Sev. wasted (MUAC)",           
                        X=="sunderwt"  ~ "Sev. underweight alone",        
                        X=="stunt_uwt"  ~ "Mod. stunted + underweight",       
                        X=="wast_uwt"  ~ "Mod. wasted + underweight",        
                        X=="co"  ~ "Mod. wasted + stunted",  
                        X=="sstunt_suwt"  ~ "Sev. stunted + underweight",       
                        X=="swast_suwt"  ~ "Sev. wasted + underweight",    
                        X=="sev_co"  ~ "Sev. wasted + stunted"))


dHR <- dHR  %>% 
  droplevels(.) %>%
  dplyr::filter(cgf_cat != "Wasted (MUAC)", 
                cgf_cat != "Sev. wasted (MUAC)") %>%
  filter(!grepl("ever_",X), method=="RE"|is.na(method), 
         !is.na(region), agecat=="overall", adj==0)



table(dHR$pooled)
p_data_cohort <- dHR %>% filter(pooled==0, analysis=="No overlap")
p_prim_pooled  <- dHR %>% filter(pooled==1, analysis=="No overlap") %>% arrange(RR)
p_prim_pooled

p_prim_pooled %>% select(Measure, RR, RR.CI1, RR.CI2)

p_prim_pooled$Measure <- factor(p_prim_pooled$Measure, levels = c("stunted","wasted","underweight", "wasted and stunted", "stunted and underweight", "wasted and underweight"))  
p_prim_pooled$severe <- factor(p_prim_pooled$severe, levels = c("0","1"))



p_data_pooled <- p_prim_pooled %>% filter(pooled==1, analysis=="No overlap") 
p_data_cohort <- p_prim_pooled %>% filter(pooled==0, analysis=="No overlap") 


table(p_data_pooled$cgf_cat)
p_data_pooled <- p_data_pooled %>% arrange(pooled, outcome_variable, RR) %>%
  mutate(cgf_cat=factor(cgf_cat, levels=unique(cgf_cat)))
levels(p_data_pooled$cgf_cat)
unique(p_data_pooled$Measure)


p_flurry <- ggplot(p_data_pooled, aes(x=cgf_cat)) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2), color="#287D8EFF") +
  geom_point(aes(y=RR), color="#878787", fill="#878787", size=2, stroke=0,
             data=p_data_cohort,
             position=position_jitter(width=0.2), alpha=0.5) +
  geom_point(aes(y=RR), color="#878787", fill="#878787", size=2, stroke=0,
             data=pmort_data_cohort,
             position=position_jitter(width=0.2), alpha=0.5) +
  geom_point(aes(y=RR), size=3, stroke = 1, color="#287D8EFF") +
  labs(y = "", x = "CGF Exposure") +
  geom_hline(yintercept = 1, linetype = "dashed") +
  scale_y_continuous(breaks=c(0.5 ,1, 2, 4, 8, 16), trans='log10', labels=c("0.5","1","2","4","8","16")) +
  #scale_colour_manual(values=cbbPalette[-1]) +
  scale_size_manual(values=c(4,5)) + 
  scale_shape_manual(values=c(16,21)) +
  theme(strip.placement = "outside",
        panel.spacing = unit(0, "lines"),
        plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        text = element_text(size=16), 
        legend.position = "bottom") + 
  facet_wrap(~region, ncol=3, strip.position = "bottom") +
  coord_flip(ylim=c(0.2,16))
p_flurry

ggsave(p_flurry, file=paste0(BV_dir,"/figures/risk-factor/fig-mort-region_strat-flurry.png"), width=5.2, height=5.2)



#Without cohort-specific estimates
unique(p_data_pooled$outcome_variable)

pmort <- ggplot(p_data_pooled %>% arrange(RR) %>% mutate(cgf_cat=factor(cgf_cat, levels=unique(cgf_cat))),
                       aes(x=cgf_cat, group=region, color=region)) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2), position=position_dodge(0.5)) +
  geom_point(aes(y=RR), size=3, stroke = 1, position=position_dodge(0.5)) +
  scale_color_manual(values = tableau10[1:2]) +
  labs(y = "Hazard ratio", x = "CGF Exposure prior\nto death or censoring") +
  geom_hline(yintercept = 1, linetype = "dashed") +
  scale_y_continuous(breaks=c(0.5 ,1, 2, 4, 8, 16), trans='log10', labels=c("0.5","1","2","4","8","16")) +
  scale_size_manual(values=c(4,5)) + 
  scale_shape_manual(values=c(16,21)) +
  theme(strip.placement = "bottom",
        panel.spacing = unit(0, "lines"),
        plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        text = element_text(size=16), 
        legend.position = "bottom") + 
  coord_flip(ylim=c(0.4,16))
pmort

ggsave(pmort, file=paste0(BV_dir,"/figures/risk-factor/fig-mort-region_strat.png"), width=5.2, height=5.2)



#-------------------------------------------------------------------------------------------------------------
# Overlap
#-------------------------------------------------------------------------------------------------------------

dHR <- dHR_full  %>% 
  droplevels(.) %>%
  filter(method=="RE"|is.na(method), analysis=="Overlap", 
         !is.na(region), is.na(sex), agecat=="overall", adj==0)

table(dHR$studyid)

dHR$pooled <- ifelse(dHR$studyid=="pooled",1,0)



dHR <- dHR %>%
  mutate(
    cgf_cat = case_when(X=="stunt"  ~ "Mod. stunted", 
                        X=="wast"  ~ "Mod. wasted",
                        X=="wast_muac"  ~ "Wasted (MUAC)",
                        X=="underwt"  ~ "Mod. underweight",          
                        X=="sstunt"  ~ "Sev. stunted",          
                        X=="swast"  ~ "Sev. wasted",           
                        X=="swast_muac"  ~ "Sev. wasted (MUAC)",           
                        X=="sunderwt"  ~ "Sev. underweight")) %>%
  filter(!is.na(cgf_cat))


table(dHR$pooled)
p_data_cohort <- dHR %>% filter(pooled==0)
p_prim_pooled  <- dHR %>% filter(pooled==1) %>% arrange(RR)
p_prim_pooled

table(p_data_cohort$cgf_cat)


#p_prim_pooled$Measure <- factor(p_prim_pooled$Measure, levels = c("stunted","wasted","underweight", "wasted and stunted", "stunted and underweight", "wasted and underweight"))  
p_prim_pooled$severe <- factor(p_prim_pooled$severe, levels = c("0","1"))


table(p_data_pooled$cgf_cat)
p_data_pooled <- p_prim_pooled %>% arrange(pooled, RR) %>%
  mutate(cgf_cat=factor(cgf_cat, levels=unique(cgf_cat)))
levels(p_data_pooled$cgf_cat)


# p_flurry <- ggplot(p_data_pooled, aes(x=cgf_cat)) +
#   geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2), color="#287D8EFF") +
#   geom_point(aes(y=RR), color="#878787", fill="#878787", size=2, stroke=0,
#              data=p_data_cohort,
#              position=position_jitter(width=0.2), alpha=0.5) +
#   geom_point(aes(y=RR), color="#878787", fill="#878787", size=2, stroke=0,
#              data=pmort_data_cohort,
#              position=position_jitter(width=0.2), alpha=0.5) +
#   geom_point(aes(y=RR), size=3, stroke = 1, color="#287D8EFF") +
#   labs(y = "", x = "CGF Exposure") +
#   geom_hline(yintercept = 1, linetype = "dashed") +
#   scale_y_continuous(breaks=c(0.5 ,1, 2, 4, 8, 16), trans='log10', labels=c("0.5","1","2","4","8","16")) +
#   #scale_colour_manual(values=cbbPalette[-1]) +
#   scale_size_manual(values=c(4,5)) + 
#   scale_shape_manual(values=c(16,21)) +
#   theme(strip.placement = "outside",
#         panel.spacing = unit(0, "lines"),
#         plot.title = element_text(hjust = 0.5),
#         strip.background = element_blank(),
#         text = element_text(size=16), 
#         legend.position = "none") + 
#   facet_wrap(~region, ncol=3, strip.position = "bottom") +
#   coord_flip(ylim=c(0.2,16))
# p_flurry


#Without cohort-specific estimates

pmort <- ggplot(p_data_pooled %>% arrange(RR) %>% mutate(cgf_cat=factor(cgf_cat, levels=unique(cgf_cat))),
                aes(x=cgf_cat, group=region, color=region)) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2), position=position_dodge(0.5)) +
  geom_point(aes(y=RR), size=3, stroke = 1, position=position_dodge(0.5)) +
  scale_color_manual(values = tableau10[1:2]) +
  labs(y = "Hazard ratio", x = "CGF Exposure prior\nto death or censoring") +
  geom_hline(yintercept = 1, linetype = "dashed") +
  scale_y_continuous(breaks=c(0.5 ,1, 2, 4, 8, 16), trans='log10', labels=c("0.5","1","2","4","8","16")) +
  scale_size_manual(values=c(4,5)) + 
  scale_shape_manual(values=c(16,21)) +
  theme(strip.placement = "bottom",
        panel.spacing = unit(0, "lines"),
        plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        text = element_text(size=16), 
        legend.position = "bottom") + 
  coord_flip(ylim=c(0.4,16))
pmort

ggsave(pmort, file=paste0(BV_dir,"/figures/risk-factor/fig-mort-overlap-region_strat.png"), width=5.2, height=5.2)


