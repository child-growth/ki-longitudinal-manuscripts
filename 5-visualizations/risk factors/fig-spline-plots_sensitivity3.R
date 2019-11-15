


rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_descriptive_epi_shared_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_descriptive_epi_stunt_functions.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))



#Load haz and whz data
d <- readRDS(rf_co_occurrence_path)
d <- d %>% subset(., select= -c(tr))


#merge WLZ outcomes with covariates
cov<-readRDS("U:/ucb-superlearner/Manuscript analysis data/FINAL_clean_covariates.rds")


cov <- cov %>% subset(., select=-c( region, month, W_gagebrth,    W_birthwt,     W_birthlen,   
                                    W_mage,        W_mhtcm,       W_mwtkg,       W_mbmi,        W_fage,        W_fhtcm,       W_meducyrs,    W_feducyrs,   
                                    W_nrooms,      W_nhh,         W_nchldlt5,    W_parity,         
                                    W_perdiar6,    W_perdiar24))
dim(d)
d <- left_join(d, cov, by=c("studyid","country","subjid"))
dim(d)
d <- d %>% filter(agedays < 24 * 30.4167) 
d <- subset(d, select = -c(id, arm, tr))
dim(d)



#Calculate pooled monthly mean by level of maternal anthropometry
d <- calc.monthly.agecat(d)
whz_mwtkg <- d %>% group_by(mwtkg) %>% do(summary.whz(.)$whz.res) 
haz_mwtkg <- d %>% group_by(mwtkg) %>% do(summary.haz(.)$haz.res) 
whz_mhtcm <- d %>% group_by(mhtcm) %>% do(summary.whz(.)$whz.res) 
haz_mhtcm <- d %>% group_by(mhtcm) %>% do(summary.haz(.)$haz.res) 
whz_mbmi <- d %>% group_by(mbmi) %>% do(summary.whz(.)$whz.res) 
haz_mbmi <- d %>% group_by(mbmi) %>% do(summary.haz(.)$haz.res) 




#------------------------------------------------------------------------------------------------
# WLZ- maternal weight
#------------------------------------------------------------------------------------------------

purple_color_gradient = c("#7644ff", "#b3adff", "#e4dbff")
Avarwt="Maternal weight"

p1 <- ggplot(data=whz_mwtkg) +
  geom_smooth(aes(x=agecat, y=meanwhz, group=mwtkg, color=mwtkg), size=1.25, se=F) +
  scale_color_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_fill_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 0:12*30.41*2, labels = 0:12*2) +
  scale_y_continuous(limits=c(-1.2, 0.4), breaks = seq(-1.2, 0.4, 0.2), labels = seq(-1.2, 0.4, 0.2)) + 
  xlab("Child age in months") + ylab("Mean WLZ") +
  ggtitle(paste0("Spline curves of WLZ, stratified by\nlevels of ", Avarwt)) +
  theme(legend.position = c(0.8,0.9))

print(p1)


#------------------------------------------------------------------------------------------------
# WLZ- maternal height
#------------------------------------------------------------------------------------------------

Avar="Maternal height"
light_blue_color_gradient = c("#0fb3bf", "#83ced3", "#c5e0e2")

p2 <- ggplot(data=whz_mhtcm) +
  geom_smooth(aes(x=agecat, y=meanwhz, group=mhtcm, color=mhtcm), size=1.25, se=F) +
  scale_color_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_fill_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 0:12*30.41*2, labels = 0:12*2) +
  scale_y_continuous(limits=c(-1.2, 0.4), breaks = seq(-1.2, 0.4, 0.2), labels = seq(-1.2, 0.4, 0.2)) + 
  xlab("Child age in months") + ylab("Mean WLZ") +
  ggtitle(paste0("Spline curves of WLZ, stratified by\nlevels of ", Avarwt)) +
  theme(legend.position = c(0.8,0.9))

print(p2)


#------------------------------------------------------------------------------------------------
# LAZ- maternal weight
#------------------------------------------------------------------------------------------------

Avarwt="Maternal weight"

p3 <- ggplot(data=haz_mwtkg) +
  geom_smooth(aes(x=agecat, y=meanhaz, group=mwtkg, color=mwtkg), size=1.25, se=F) +
  scale_color_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_fill_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 0:12*30.41*2, labels = 0:12*2) +
  scale_y_continuous(limits=c(-1.2, 0.4), breaks = seq(-1.2, 0.4, 0.2), labels = seq(-1.2, 0.4, 0.2)) + 
  xlab("Child age in months") + ylab("Mean WLZ") +
  ggtitle(paste0("Spline curves of WLZ, stratified by\nlevels of ", Avarwt)) +
  theme(legend.position = c(0.8,0.9))

print(p3)


#------------------------------------------------------------------------------------------------
# LAZ- maternal height
#------------------------------------------------------------------------------------------------


Avar="Maternal height"

p4 <- ggplot(data=haz_mhtcm) +
  geom_smooth(aes(x=agecat, y=meanhaz, group=mhtcm, color=mhtcm), size=1.25, se=F) +
  scale_color_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_fill_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 0:12*30.41*2, labels = 0:12*2) +
  scale_y_continuous(limits=c(-1.2, 0.4), breaks = seq(-1.2, 0.4, 0.2), labels = seq(-1.2, 0.4, 0.2)) + 
  xlab("Child age in months") + ylab("Mean WLZ") +
  ggtitle(paste0("Spline curves of WLZ, stratified by\nlevels of ", Avarwt)) +
  theme(legend.position = c(0.8,0.9))

print(p4)




#------------------------------------------------------------------------------------------------
# LAZ- maternal BMI
#------------------------------------------------------------------------------------------------


Avarwt="Maternal BMI"

brown_color_gradient = c(tableau10[6], "#c99a6b")

p5 <- ggplot(data=haz_mbmi) +
  geom_smooth(aes(x=agecat, y=meanhaz, group=mbmi, color=mbmi), size=1.25, se=F) +
  scale_color_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_fill_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 0:12*30.41*2, labels = 0:12*2) +
  scale_y_continuous(limits=c(-1.2, 0.4), breaks = seq(-1.2, 0.4, 0.2), labels = seq(-1.2, 0.4, 0.2)) + 
  xlab("Child age in months") + ylab("Mean WLZ") +
  ggtitle(paste0("Spline curves of WLZ, stratified by\nlevels of ", Avarwt)) +
  theme(legend.position = c(0.8,0.9))

print(p5)





#------------------------------------------------------------------------------------------------
# WLZ- maternal BMI
#------------------------------------------------------------------------------------------------

p6 <- ggplot(data=whz_mbmi) +
  geom_smooth(aes(x=agecat, y=whz, group=mbmi, color=mbmi), size=1.25, se=F) +
  scale_color_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_fill_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 0:12*30.41*2, labels = 0:12*2) +
  scale_y_continuous(limits=c(-1.2, 0.4), breaks = seq(-1.2, 0.4, 0.2), labels = seq(-1.2, 0.4, 0.2)) + 
  xlab("Child age in months") + ylab("Mean WLZ") +
  ggtitle(paste0("Spline curves of WLZ, stratified by\nlevels of ", Avarwt)) +
  theme(legend.position = c(0.8,0.9))

print(p6)








#------------------------------------------------------------------------------------------------
# Save plots
#------------------------------------------------------------------------------------------------

#Save plot objects
save(p1, p2, p3, p4, p5, p6,  file=paste0(here(),"/figures/risk-factor/figure-data/rf_spline_sens_objects3.Rdata"))














