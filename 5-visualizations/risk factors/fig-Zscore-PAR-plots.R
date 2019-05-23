


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())



#Load data
dfull <- readRDS(paste0(here::here(),"/results/rf results/full_RF_results.rds"))
head(dfull)


unique(dfull$type)
d <- dfull %>% filter(type=="PAR")

#Subset to stunting prevalence
unique(d$outcome_variable)
d <- d %>% filter(outcome_variable=="y_rate_haz"|outcome_variable=="y_rate_len"|
                    outcome_variable=="y_rate_wtkg"|outcome_variable=="haz"|
                    outcome_variable=="whz")


d <- droplevels(d)



pool.Zpar <- function(d){
  nstudies <- d %>% summarize(N=n())
  
  fit<-NULL
  try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="REML", measure="GEN"))
  if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="ML", measure="GEN"))}
  if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="DL", measure="GEN"))}
  if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="HE", measure="GEN"))}
  
  if(is.null(fit)){
    est<-data.frame(PAR=NA, CI1=NA,  CI2=NA)
  }else{
    est<-data.frame(fit$b, fit$ci.lb, fit$ci.ub)
    colnames(est)<-c("PAR","CI1","CI2")    
  }
  est$Nstudies <- nstudies$N
  rownames(est) <- NULL
  return(est)
}

RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable,n_cell,n) %>%
  do(pool.Zpar(.)) %>% as.data.frame()
RMAest$region <- "Pooled"

RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable,n_cell,n) %>%
  do(pool.Zpar(.)) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)

RMAest_raw <- RMAest_raw %>% filter(!is.na(PAR))




#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest_raw, outcome="continuous")
table(is.na(RMAest_clean$intervention_level))

#Add reference level to label
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$intervention_level)




#----------------------------------------------------------
# Plot
#----------------------------------------------------------


yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)

#hbgdki pallet
tableau10 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
tableau10 <- rep("grey30",10)

scaleFUN <- function(x) sprintf("%.1f", x)

df <- RMAest_clean
unique(df$outcome_variable)
df$outcome_variable <- gsub("y_rate_haz", "HAZ velocity", df$outcome_variable)
df$outcome_variable <- gsub("y_rate_len", "Length velocity", df$outcome_variable)
df$outcome_variable <- gsub("y_rate_wtkg", "Weight velocity", df$outcome_variable)
df$outcome_variable <- gsub("haz", "LAZ", df$outcome_variable)
df$outcome_variable <- gsub("whz", "WLZ", df$outcome_variable)






#Make manuscript plots
dpool <- df %>% ungroup() %>%
  filter(region=="Pooled",
         outcome_variable %in% c("LAZ", "WLZ" ),
         agecat %in% c("24 months")) %>%
  filter(!is.na(intervention_variable)) %>%
  mutate(ref_prev=n_cell/n) %>%
  group_by(intervention_variable, intervention_level, outcome_variable) %>%
  arrange(agecat) %>%
  slice(1)


plotdf <- dpool %>% filter(outcome_variable=="LAZ") %>%
  arrange(-PAR) %>%
  mutate(RFlabel_ref=factor(RFlabel, levels=unique(RFlabel)))
nlab <- paste0(round((plotdf$n_cell-plotdf$n)/1000),"k (",round((1-plotdf$ref_prev)*100),"%) to ref: ",plotdf$intervention_level)
RFlabel <- plotdf$RFlabel
PAR <- plotdf$PAR

pPAR_laz <-  ggplot(plotdf, aes(x=as.numeric(factor(reorder(RFlabel, -PAR))))) + 
  geom_point(aes(y=-PAR,  color=RFtype), size = 4) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2, color=RFtype)) +
  coord_flip(ylim=c(-0.2, 0.55)) +
  labs(x = "Exposure", y = "Difference in LAZ after setting whole\npopulation exposure to reference level") +
  geom_hline(yintercept = 0) +
  scale_x_continuous(breaks = 1:length(RFlabel),
                     labels = RFlabel,
                     expand = c(0,0.5),
                     sec.axis = sec_axis(~.,
                                         breaks = 1:length(nlab),
                                         labels = reorder(nlab, PAR))) +
  scale_colour_manual(values=tableau10, name = "Exposure\nCategory") +
  theme(strip.background = element_blank(),
        legend.position="right",
        axis.text.y = element_text(hjust = 1),
        strip.text.x = element_text(size=12),
        axis.text.x = element_text(size=12),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  ggtitle(paste0("Population attributable difference in LAZ")) + 
  guides(color=FALSE, shape=FALSE)

pPAR_laz




plotdf <- dpool %>% filter(outcome_variable=="WLZ") %>%
  arrange(-PAR) %>%
  mutate(RFlabel_ref=factor(RFlabel, levels=unique(RFlabel)))
nlab <- paste0(round((plotdf$n_cell-plotdf$n)/1000),"k (",round((1-plotdf$ref_prev)*100),"%) to ref: ",plotdf$intervention_level)
RFlabel <- plotdf$RFlabel
PAR <- plotdf$PAR

pPAR_wlz <-  ggplot(plotdf, aes(x=as.numeric(factor(reorder(RFlabel, -PAR))))) + 
  geom_point(aes(y=-PAR,  color=RFtype), size = 4) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2, color=RFtype)) +
  coord_flip(ylim=c(-0.2, 0.55)) +
  labs(x = "Exposure", y = "Difference in WLZ after setting whole\npopulation exposure to reference level") +
  geom_hline(yintercept = 0) +
  scale_x_continuous(breaks = 1:length(RFlabel),
                     labels = RFlabel,
                     expand = c(0,0.5),
                     sec.axis = sec_axis(~.,
                                         breaks = 1:length(nlab),
                                         labels = reorder(nlab, PAR))) +
  scale_colour_manual(values=tableau10, name = "Exposure\nCategory") +
  theme(strip.background = element_blank(),
        legend.position="right",
        axis.text.y = element_text(hjust = 1),
        strip.text.x = element_text(size=12),
        axis.text.x = element_text(size=12),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  ggtitle(paste0("Population attributable difference in WLZ")) + 
  guides(color=FALSE, shape=FALSE)

pPAR_wlz

ggsave(pPAR_laz, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/fig-laz-PAR.png"), height=10, width=8)
ggsave(pPAR_wlz, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/fig-wlz-PAR.png"), height=10, width=8)

save(pPAR_laz, pPAR_wlz, file="C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/rf_Zpar_plot_objects.Rdata")













# i <- unique(df$region)[1]
# j <- unique(df$outcome_variable)[5]
# k <- unique(df$agecat)[6]
# 
# for(i in unique(df$region)){
#   for(j in unique(df$outcome_variable)){
#     for(k in unique(df$agecat)){
#       
#       dpool <- df %>% 
#         filter(region==i,
#                outcome_variable==j,
#                agecat == k) %>%
#         filter(!is.na(intervention_variable))
#       
#       ppar <-  ggplot(dpool, aes(x=reorder(RFlabel_ref, -PAR))) + 
#         geom_point(aes(y=-PAR,  color=RFtype), size = 4) +
#         geom_linerange(aes(ymin=-CI1, ymax=-CI2, color=RFtype)) +
#         coord_flip() +
#         labs(x = "Exposure", y = "Difference in outcome after setting\nwhole population exposure to reference level") +
#         geom_hline(yintercept = 0) +
#         scale_colour_manual(values=tableau10, name = "Exposure\nCategory") +
#         theme(strip.background = element_blank(),
#               legend.position="right",
#               axis.text.y = element_text(hjust = 1),
#               strip.text.x = element_text(size=12),
#               axis.text.x = element_text(size=12, 
#                                          margin = margin(t = -20)),
#               axis.title.x = element_text(margin = margin(t = 20))) +
#         ggtitle(paste0("Population attributable difference\n", dpool$outcome_variable[1]," - ", dpool$agecat[1],", ", dpool$region[1])) + 
#         guides(color=FALSE, shape=FALSE)
#       
#       ggsave(ppar, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/Zscore-PAR/fig-",dpool$region[1], "-", dpool$outcome_variable[1], "-", gsub(" ","",dpool$agecat[1]), "-Z-PAR.png"), height=10, width=8)
#     }    
#   }
# }






