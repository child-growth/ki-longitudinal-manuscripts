


rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_descriptive_epi_shared_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_descriptive_epi_stunt_functions.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))



#Load haz and whz data
d <- readRDS(rf_co_occurrence_path)
d <- d %>% subset(., select= -c(tr))


#merge WLZ outcomes with covariates
cov<-readRDS("/home/andrew.mertens/data/KI/UCB-SuperLearner/Manuscript analysis data/FINAL_clean_covariates.rds")


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
whz_mwtkg <- d %>% group_by(mwtkg) %>% do(summary.whz(.)$whz.res) %>% mutate(agecat = factor(agecat, levels = c("Two weeks","One month","2 months", "3 months", "4 months", "5 months", "6 months", "7 months", "8 months", "9 months", "10 months","11 months","12 months","13 months","14 months","15 months","16 months", "17 months","18 months","19 months","20 months","21 months","22 months","23 months","24 months")))
haz_mwtkg <- d %>% group_by(mwtkg) %>% do(summary.haz(.)$haz.res)  %>% mutate(agecat = factor(agecat, levels = c("Two weeks","One month","2 months", "3 months", "4 months", "5 months", "6 months", "7 months", "8 months", "9 months", "10 months","11 months","12 months","13 months","14 months","15 months","16 months", "17 months","18 months","19 months","20 months","21 months","22 months","23 months","24 months")))
whz_mhtcm <- d %>% group_by(mhtcm) %>% do(summary.whz(.)$whz.res)  %>% mutate(agecat = factor(agecat, levels = c("Two weeks","One month","2 months", "3 months", "4 months", "5 months", "6 months", "7 months", "8 months", "9 months", "10 months","11 months","12 months","13 months","14 months","15 months","16 months", "17 months","18 months","19 months","20 months","21 months","22 months","23 months","24 months")))
haz_mhtcm <- d %>% group_by(mhtcm) %>% do(summary.haz(.)$haz.res)  %>% mutate(agecat = factor(agecat, levels = c("Two weeks","One month","2 months", "3 months", "4 months", "5 months", "6 months", "7 months", "8 months", "9 months", "10 months","11 months","12 months","13 months","14 months","15 months","16 months", "17 months","18 months","19 months","20 months","21 months","22 months","23 months","24 months")))
whz_mbmi <- d %>% group_by(mbmi) %>% do(summary.whz(.)$whz.res)  %>% mutate(agecat = factor(agecat, levels = c("Two weeks","One month","2 months", "3 months", "4 months", "5 months", "6 months", "7 months", "8 months", "9 months", "10 months","11 months","12 months","13 months","14 months","15 months","16 months", "17 months","18 months","19 months","20 months","21 months","22 months","23 months","24 months")))
haz_mbmi <- d %>% group_by(mbmi) %>% do(summary.haz(.)$haz.res)  %>% mutate(agecat = factor(agecat, levels = c("Two weeks","One month","2 months", "3 months", "4 months", "5 months", "6 months", "7 months", "8 months", "9 months", "10 months","11 months","12 months","13 months","14 months","15 months","16 months", "17 months","18 months","19 months","20 months","21 months","22 months","23 months","24 months")))




#------------------------------------------------------------------------------------------------
# WLZ- maternal weight
#------------------------------------------------------------------------------------------------

purple_color_gradient = c("#7644ff", "#b3adff", "#e4dbff")
Avarwt="Maternal weight"

p1 <- ggplot(data=whz_mwtkg[!is.na(whz_mwtkg$mwtkg),]) +
  geom_smooth(aes(x=agecat, y=est, group=mwtkg, color=mwtkg), size=1.25, se=F) +
  scale_color_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_fill_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  # scale_x_continuous(limits=c(1,730), expand = c(0, 0),
  #                    breaks = 0:12*30.41*2, labels = 0:12*2) +
  #scale_y_continuous(limits=c(-1.2, 0.4), breaks = seq(-1.2, 0.4, 0.2), labels = seq(-1.2, 0.4, 0.2)) + 
  xlab("Child age in months") + ylab("Mean WLZ") +
  ggtitle(paste0("Spline curves of WLZ, stratified by\nlevels of ", Avarwt)) +
  theme(legend.position = c(0.8,0.9), axis.text.x = element_text(angle = 45, hjust = 1, vjust=1)) 

print(p1)


#------------------------------------------------------------------------------------------------
# WLZ- maternal height
#------------------------------------------------------------------------------------------------

Avar="Maternal height"
light_blue_color_gradient = c("#0fb3bf", "#83ced3", "#c5e0e2")

p2 <- ggplot(data=whz_mhtcm[!is.na(whz_mhtcm$mhtcm),]) +
  geom_smooth(aes(x=agecat, y=est, group=mhtcm, color=mhtcm), size=1.25, se=F) +
  scale_color_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_fill_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  xlab("Child age in months") + ylab("Mean WLZ") +
  ggtitle(paste0("Spline curves of WLZ, stratified by\nlevels of ", Avarwt)) +
  theme(legend.position = c(0.8,0.9), axis.text.x = element_text(angle = 45, hjust = 1, vjust=1))

print(p2)


#------------------------------------------------------------------------------------------------
# LAZ- maternal weight
#------------------------------------------------------------------------------------------------

Avarwt="Maternal weight"

p3 <- ggplot(data=haz_mwtkg[!is.na(haz_mwtkg$mwtkg),]) +
  geom_smooth(aes(x=agecat, y=est, group=mwtkg, color=mwtkg), size=1.25, se=F) +
  scale_color_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_fill_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  xlab("Child age in months") + ylab("Mean WLZ") +
  ggtitle(paste0("Spline curves of WLZ, stratified by\nlevels of ", Avarwt)) +
  theme(legend.position = c(0.8,0.9), axis.text.x = element_text(angle = 45, hjust = 1, vjust=1))

print(p3)


#------------------------------------------------------------------------------------------------
# LAZ- maternal height
#------------------------------------------------------------------------------------------------


Avar="Maternal height"

p4 <- ggplot(data=haz_mhtcm[!is.na(haz_mhtcm$mhtcm),]) +
  geom_smooth(aes(x=agecat, y=est, group=mhtcm, color=mhtcm), size=1.25, se=F) +
  scale_color_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_fill_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  xlab("Child age in months") + ylab("Mean WLZ") +
  ggtitle(paste0("Spline curves of WLZ, stratified by\nlevels of ", Avarwt)) +
  theme(legend.position = c(0.8,0.9), axis.text.x = element_text(angle = 45, hjust = 1, vjust=1))

print(p4)




#------------------------------------------------------------------------------------------------
# LAZ- maternal BMI
#------------------------------------------------------------------------------------------------


Avarwt="Maternal BMI"

brown_color_gradient = c(tableau10[6], "#c99a6b")

p5 <- ggplot(data=haz_mbmi[!is.na(haz_mbmi$mbmi),]) +
  geom_smooth(aes(x=agecat, y=est, group=mbmi, color=mbmi), size=1.25, se=F) +
  scale_color_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_fill_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  xlab("Child age in months") + ylab("Mean LAZ") +
  ggtitle(paste0("Spline curves of WLZ, stratified by\nlevels of ", Avarwt)) +
  theme(legend.position = c(0.8,0.9), axis.text.x = element_text(angle = 45, hjust = 1, vjust=1))

print(p5)





#------------------------------------------------------------------------------------------------
# WLZ- maternal BMI
#------------------------------------------------------------------------------------------------

p6 <- ggplot(data=whz_mbmi[!is.na(whz_mbmi$mbmi),]) +
  geom_smooth(aes(x=agecat, y=est, group=mbmi, color=mbmi), size=1.25, se=F) +
  scale_color_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_fill_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  xlab("Child age in months") + ylab("Mean WLZ") +
  ggtitle(paste0("Spline curves of WLZ, stratified by\nlevels of ", Avarwt)) +
  theme(legend.position = c(0.8,0.9), axis.text.x = element_text(angle = 45, hjust = 1, vjust=1))

print(p6)






#------------------------------------------------------------------------------------------------
# Format plots
#------------------------------------------------------------------------------------------------

pos = c(0.2,0.25)

p1 <- p1 + ggtitle("Spline curves of WLZ, stratified by\ncategories of maternal weight") + theme(legend.position = pos,  legend.title=element_text(size=8), legend.text=element_text(size=6)) +  guides(color = guide_legend("Maternal\nweight", nrow=3))
p2 <- p2  + ggtitle("Stratified by\ncategories of maternal height") + theme(legend.position = pos,  legend.title=element_text(size=8), legend.text=element_text(size=6))
p3 <- p3  + ggtitle("Spline curves of LAZ, stratified by\ncategories of maternal weight") + theme(legend.position = "none") + theme(legend.key = element_blank()) + theme(legend.key = element_blank())
p4 <- p4  + ggtitle("Stratified by\ncategories of maternal height") +  theme(legend.position = "none") +guides(color = guide_legend("Maternal\nheight", nrow=3))
p5 <- p5  + ggtitle("Stratified by\ncategories of maternal BMI") + theme(legend.position = pos,  legend.title=element_text(size=8), legend.text=element_text(size=6)) + guides(color = guide_legend("Maternal\nBMI", nrow=2)) + scale_color_manual(values=c(tableau10[6], "#c99a6b"), labels = c(">=18.5", "<18.5"))
p6 <- p6  + ggtitle("Stratified by\ncategories of maternal BMI") +  theme(legend.position = "none") + theme(legend.key = element_blank())




#------------------------------------------------------------------------------------------------
# Save plots
#------------------------------------------------------------------------------------------------


# Combine plot objects

require(cowplot)
p_grid <- plot_grid(p1, p3, p2, p4, p5,  p6,   labels = rep("",6), ncol = 2, align = 'v', axis = 'l')

ggsave(p_grid, file=paste0(here(),"/figures/risk-factor/spline_grid_sens3.png"), width=10, height=10)


