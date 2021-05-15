

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

d <- readRDS(paste0(BV_dir,"/results/mortality-results/full_cox_results.RDS")) %>% 
  filter(!is.na(HR))
dim(d)

head(d)

d %>% distinct(studyid)
d %>% ungroup() %>% distinct(X, Y)

d[is.na(d$studyid),]

d <- d %>%
  mutate(
    Xname = case_when(X=="stunt"  ~ "Stunted", 
                      X=="wast"  ~ "Wasted",
                      X=="wast_muac"  ~ "Wasted (MUAC)",
                X=="underwt"  ~ "Underweight",          
                X=="sstunt"  ~ "Severely stunted",          
                X=="swast"  ~ "Severely wasted",           
                X=="swast_muac"  ~ "Severely wasted (MUAC)",           
                X=="sunderwt"  ~ "Severely underweight",        
                X=="stunt_uwt"  ~ "Stunted + underweight",       
                X=="wast_uwt"  ~ "Wasted + underweight",        
                X=="co"  ~ "Wasted + stunted",              
                X=="ever_stunt"  ~ "Ever stunted",      
                X=="ever_wast"  ~   "Ever wasted",        
                X=="ever_wast_muac"  ~   "Ever wasted (MUAC)",        
                X=="ever_uwt"  ~   "Ever underweight",         
                X=="ever_sstunt"  ~   "Ever severely stunted",     
                X=="ever_swast"  ~   "Ever severely wasted",       
                X=="ever_swast_muac"  ~   "Ever severely wasted (MUAC)",       
                X=="ever_suwt"  ~   "Ever severely underweight",        
                X=="ever_stunt_uwt"  ~   "Ever stunted + underweight",   
                X=="ever_wast_uwt"  ~   "Ever wasted + underweight",    
                X=="ever_co"  ~ "Ever wasted + stunted"),
  Xname = factor(Xname, levels = rev(c(
      "Stunted", 
      "Wasted",
      "Wasted (MUAC)",
      "Underweight",          
      "Severely stunted",          
      "Severely wasted",           
      "Severely wasted (MUAC)",           
      "Severely underweight",        
      "Stunted + underweight",       
      "Wasted + underweight",        
      "Wasted + stunted",              
      "Ever stunted",      
      "Ever wasted",        
      "Ever wasted (MUAC)",        
      "Ever underweight",         
      "Ever severely stunted",     
      "Ever severely wasted",       
      "Ever severely wasted (MUAC)",       
      "Ever severely underweight",        
      "Ever stunted + underweight",   
      "Ever wasted + underweight",    
      "Ever wasted + stunted" ))))

saveRDS(d, paste0(BV_dir, "/results/p_prim_mort_pooled.RDS"))

p_prim_pooled <- d %>% filter(pooled==1, !grepl("ever_",X), method=="RE", is.na(sex), is.na(region), agecat=="overall", adj==1, df=="res") %>% 
  droplevels(.) %>%
  #mutate(X=factor(X, levels = rev(levels(X)))) %>%
  ggplot(., aes(y=HR, x=Xname),color="black") +
  #facet_grid(~Y) +
  geom_point() + 
  geom_linerange(aes(ymin=ci.lb, ymax=ci.ub )) +
  #scale_color_manual(values=tableau10) +
  geom_hline(yintercept = 1) +
  scale_y_continuous(breaks=c(0.25, 0.5,1, 2, 4, 8), trans='log10', labels=scaleFUN) +
  coord_flip() +
  xlab("") + ylab("Hazard Ratio")

p_prim_pooled



p_ci_pooled <- d %>% filter(pooled==1, grepl("ever_",X), method=="RE", is.na(sex), is.na(region), agecat=="overall", adj==1, df=="res") %>% 
  droplevels(.) %>%
  ggplot(., aes(y=HR, x=Xname),color="black") +
  geom_point() + 
  geom_linerange(aes(ymin=ci.lb, ymax=ci.ub )) +
  geom_hline(yintercept = 1) +
  scale_y_continuous(breaks=c(0.25, 0.5,1, 2, 4, 8), trans='log10', labels=scaleFUN) +
  coord_flip() +
  xlab("") + ylab("Hazard Ratio")

p_ci_pooled




p_prim_pooled_sex <- d %>% filter(pooled==1, !grepl("ever_",X), method=="RE", !is.na(sex), is.na(region), agecat=="overall", adj==1) %>% 
  droplevels(.) %>%
  ggplot(., aes(y=HR, x=Xname, color=sex, group=sex)) +
  geom_point(position = position_dodge(0.6)) + 
  geom_linerange(aes(ymin=ci.lb, ymax=ci.ub ), position = position_dodge(0.6)) +
  geom_hline(yintercept = 1) +
  scale_y_continuous(breaks=c(0.25, 0.5,1, 2, 4, 8), trans='log10', labels=scaleFUN) +
  coord_flip() +
  xlab("") + ylab("Hazard Ratio") +
  theme(legend.position = "bottom")

p_prim_pooled_sex

#Need to figure out the studies being used to pool Wasted (MUAC) that cause such a large confidence interval


#dropping neonatal deaths
#Note- double check that this is being calculated right

p_prim_pn <- d %>% filter(pooled==1, !grepl("ever_",X), method=="RE", is.na(sex), is.na(region), agecat=="1-24 months", adj==1, df=="res_noPN") %>% 
  droplevels(.) %>%
  ggplot(., aes(y=HR, x=Xname),color="black") +
  geom_point() + 
  geom_linerange(aes(ymin=ci.lb, ymax=ci.ub )) +
  geom_hline(yintercept = 1) +
  scale_y_continuous(breaks=c(0.25, 0.5,1, 2, 4, 8), trans='log10', labels=scaleFUN) +
  coord_flip() +
  xlab("") + ylab("Hazard Ratio- no neonatal mortality")

p_prim_pn


p_ci_pn_pooled <- d %>% filter(pooled==1, grepl("ever_",X), method=="RE", is.na(sex), is.na(region), agecat=="1-24 months", adj==1, df=="res_noPN") %>% 
  droplevels(.) %>%
  ggplot(., aes(y=HR, x=Xname),color="black") +
  geom_point() + 
  geom_linerange(aes(ymin=ci.lb, ymax=ci.ub )) +
  geom_hline(yintercept = 1) +
  scale_y_continuous(breaks=c(0.25, 0.5,1, 2, 4, 8), trans='log10', labels=scaleFUN) +
  coord_flip() +
  xlab("") + ylab("Hazard Ratio")

p_ci_pn_pooled



#age stratified figures
table(d$agecat)
agecats <- c("(0,30]", "(30,91]", "(91,182]", "(182,365]","(365,730]")
d$agecat <- factor(d$agecat, levels=agecats)
p_prim_agestrat <- d %>% filter(pooled==1, !grepl("ever_",X), method=="RE", is.na(sex), is.na(region), agecat %in% agecats, adj==1) %>% 
  droplevels(.) %>%
  ggplot(., aes(y=HR, x=Xname),color="black") +
  facet_wrap(~agecat) +
  geom_point() + 
  geom_linerange(aes(ymin=ci.lb, ymax=ci.ub )) +
  geom_hline(yintercept = 1) +
  scale_y_continuous(breaks=c(0.25, 0.5,1, 2, 4, 8, 16, 32), trans='log10', labels=scaleFUN) +
  coord_flip(ylim=c(0.5, 20)) +
  xlab("") + ylab("Hazard Ratio")

p_prim_agestrat



p_ci_agestrat <- d %>% filter(pooled==1, grepl("ever_",X), method=="RE", is.na(sex), is.na(region), agecat %in% agecats, adj==1) %>% 
  droplevels(.) %>%
  ggplot(., aes(y=HR, x=Xname),color="black") +
  facet_wrap(~agecat) +
  geom_point() + 
  geom_linerange(aes(ymin=ci.lb, ymax=ci.ub )) +
  geom_hline(yintercept = 1) +
  scale_y_continuous(breaks=c(0.25, 0.5,1, 2, 4, 8), trans='log10', labels=scaleFUN) +
  coord_flip(ylim=c(0.25, 10)) +
  xlab("") + ylab("Hazard Ratio")

p_ci_agestrat


plotlist <- mget(ls(pattern = "^p_"))

saveRDS(plotlist, file=paste0(fig_dir,"risk-factor/mort_HR_plots.rds"))

#forest plots


