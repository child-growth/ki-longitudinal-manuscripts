rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))
#Load data
dfull <- readRDS(paste0(BV_dir,"/results/rf results/raw longbow results/results_results_all_ages_growth_failure_2022-07-13.RDS"))
#dfull <- readRDS("C:/Users/andre/Downloads/results_results_all_ages_growth_faltering_2022-07-13.RDS")
unique(dfull$intervention_variable)
head(dfull)
dfull <- dfull %>% filter(type=="RR", ci_lower != ci_upper)
#pool across cohorts
RMAest <- dfull %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(poolRR(.)) %>% as.data.frame()
RMAest
#ensure temporality
RMAest$A <- str_split(RMAest$intervention_variable,"_",simplify=T)[,1]
RMAest$Y <- str_split(RMAest$outcome_variable,"_",simplify=T)[,1]
RMAest$A_t <- str_split(RMAest$intervention_variable,"_",simplify=T)[,2]
RMAest$Y_t <- str_split(RMAest$outcome_variable,"_",simplify=T)[,2]
RMAest$A_t <- factor(RMAest$A_t, levels=c("Birth","15 days-3 months", "3-6 months","6-9 months" ,"9-12 months","12-15 months","15-18 months","18-21 months", "21-24 months"))
RMAest$Y_t <- factor(RMAest$Y_t, levels=c("Birth","15 days-3 months", "3-6 months","6-9 months" ,"9-12 months","12-15 months","15-18 months","18-21 months", "21-24 months"))
unique(RMAest$A)
unique(RMAest$Y)
unique(RMAest$A_t)
unique(RMAest$Y_t)
plotdf <- RMAest %>% filter(A!="co", A!="wast06", A!="stunt06", Y!="co", Y!="wast24", Y!="stunt24",
                            A_t!="",Y_t!="",Y_t!="Birth",A_t!="21-24 months", 
                            !(A_t=="18-21 months" & Y_t %in% c("Birth","15 days-3 months", "3-6 months","6-9 months" ,"9-12 months","12-15 months","15-18 months","18-21 months")),
                            !(A_t=="15-18 months" & Y_t %in% c("Birth","15 days-3 months", "3-6 months","6-9 months" ,"9-12 months","12-15 months","15-18 months")),
                            !(A_t=="12-15 months" & Y_t %in% c("Birth","15 days-3 months", "3-6 months","6-9 months" ,"9-12 months","12-15 months")),
                            !(A_t=="9-12 months" & Y_t %in% c("Birth","15 days-3 months", "3-6 months","6-9 months" ,"9-12 months")),
                            !(A_t=="6-9 months" & Y_t %in% c("Birth","15 days-3 months", "3-6 months","6-9 months" )),
                            !(A_t=="3-6 months" & Y_t %in% c("Birth","15 days-3 months", "3-6 months")),
                            !(A_t=="15 days-3 months" & Y_t %in% c("Birth","15 days-3 months"))) %>% droplevels()
plotdf <- plotdf %>%
  mutate(Y=case_when(Y=="wast"~"Wasting",
                     Y=="uwt"~"Underweight",
                     Y=="stunt"~"Stunting",
                     Y=="co"~"Concurrent WaSt"),
         Y=factor(Y, levels=c("Wasting","Stunting","Underweight","Concurrent WaSt")),
         A=case_when(A=="wast"~"Wasting",
                     A=="uwt"~"Underweight",
                     A=="stunt"~"Stunting"),
         A=factor(A, levels=c("Wasting","Stunting","Underweight")))
table(plotdf$A_t)
table(plotdf$Y_t)
table(plotdf$Y)
table(plotdf$A)

#Numbers for manuscript body
plotdf %>% filter(A_t=="Birth"|A_t=="15 days-3 months"|A_t=="3-6 months",A=="Wasting",Y=="Wasting", Y_t=="21-24 months") %>%
  select(intervention_variable, RR, RR.CI1, RR.CI2) %>% mutate(RR=round(RR,2), RR.CI1=round(RR.CI1,2), RR.CI2=round(RR.CI2,2))
plotdf %>% filter(A_t=="Birth", Y_t=="21-24 months") %>%
  select(intervention_variable, Y, RR, RR.CI1, RR.CI2) %>% 
  mutate(RR=round(RR,2), RR.CI1=round(RR.CI1,2), RR.CI2=round(RR.CI2,2)) %>% arrange(Y)

#test if different
test_diff <- function(plotdf, A_t="Birth", contrast=c("Wasting","Underweight"), Y_t="21-24 months", Y="Wasting"){
  fit <- rma(logRR.psi, sei=logSE, mods = ~ intervention_variable, method="FE", data=plotdf %>% filter(A_t==!!(A_t), A %in% contrast, Y_t==!!(Y_t), Y==!!(Y)) )
  est <- data.frame(fit$b, fit$se, fit$I2)
  colnames(est)<-c("logRR.psi","logSE", "I2")
  
  est$RR<-exp(est$logRR)
  est$ci.lb<-exp(est$logRR - 1.96 * est$logSE)
  est$ci.ub<-exp(est$logRR + 1.96 * est$logSE)
  est$pval <- fit$pval
  est <- est[2,]
  return(est)  
}
test_diff(plotdf)
test_diff(plotdf, Y="Underweight")
test_diff(plotdf, contrast=c("Underweight","Stunting"), Y="Stunting")
test_diff(plotdf, A_t="15 days-3 months")
test_diff(plotdf, Y="Underweight", A_t="15 days-3 months")
test_diff(plotdf, contrast=c("Underweight","Stunting"), Y="Stunting", A_t="15 days-3 months")



max(plotdf$RR)
min(plotdf$RR)

plotdf$Y_t <- as.character(plotdf$Y_t)
plotdf$Y_t <- gsub(" months","",plotdf$Y_t)
plotdf$Y_t <- gsub("15 days","0",plotdf$Y_t)
plotdf$Y_t <- factor(plotdf$Y_t, levels=c("Birth","0-3", "3-6","6-9" ,"9-12","12-15","15-18","18-21", "21-24"))
plotdf$A_t <- gsub("15 days","0",plotdf$A_t)
plotdf$A_t <- factor(plotdf$A_t, levels=c("Birth","0-3 months", "3-6 months","6-9 months" ,"9-12 months",
                                          "12-15 months","15-18 months","18-21 months", "21-24 months"))
p <- ggplot(plotdf, aes(y=RR,x=Y_t,  fill=Y, color=Y)) +
  facet_grid(A~A_t) +
  geom_point(size = 2, stroke = 0,
             position = position_dodge(0.5)) +
  geom_line(position = position_dodge(0.5)) +
  geom_errorbar(aes(ymin=RR.CI1, ymax=RR.CI2), alpha=0.5, width = 0,
                position = position_dodge(0.5)) +
  scale_y_continuous(#breaks = scales::pretty_breaks(n = 10),
    sec.axis = sec_axis(~ . , name = "Initial type of growth faltering", breaks = NULL, labels = NULL),
    breaks = c(1,2,4,8,16, 32), 
    trans = "log10") +
  geom_hline(yintercept = 1) +
  scale_color_manual(values=tableau10, drop=TRUE) +
  coord_cartesian(ylim = c(0.9,12)) +
  labs(color= "Growth faltering type", fill= "Growth faltering type")+
  xlab("Child age in months at second time period")+
  ylab("Relative risk of growth faltering at followup time period") +
  ggtitle("Age at initial growth faltering") +
  theme(legend.position = "bottom",
        axis.text.x = element_text(size = 8, angle = 90, vjust=0),
        axis.title.x = element_text(size = 10),
        axis.title.y = element_text(size = 10),
        strip.text.x = element_text(size = 8, margin = margin(t = 0)),
        strip.text.y = element_text(size = 8, margin = margin(t = 0)),
        panel.grid.major.x = element_blank(), 
        panel.grid.minor = element_blank(),
        plot.title = element_text(size = 10, hjust = 0.5, margin=margin(0,0,10,0))) 
p

ggsave(p, file=paste0(here::here(), "/figures/wasting/fig-tmle-RR.png"), width=8, height=9)
ggsave(p, file=paste0(BV_dir,"/figures/wasting/fig-tmle-RR.png"), width=8, height=9)

head(plotdf)
df <- plotdf %>% select(A,Y,A_t, Y_t, RR,RR.CI1,   RR.CI2, Nstudies ) %>%
  mutate(RR=round(RR,1), RR.CI1=round(RR.CI1,1), RR.CI2=round(RR.CI2,1))
write.csv(df, file=paste0(here::here(), "/figures/wasting/fig-tmle-data.csv"))


#plotdf2 <- plotdf %>% filter(A_t %in% c("Birth","0-3 months", "3-6 months")) %>% droplevels()
p2 <- ggplot(plotdf, aes(y=RR,x=Y_t, group=Y, fill=Y, color=Y)) +
  facet_grid(A_t~A) +
  geom_point(size = 2, stroke = 0,
             position = position_dodge(0.5)) +
  geom_line(position = position_dodge(0.5)) +
  geom_errorbar(aes(ymin=RR.CI1, ymax=RR.CI2), alpha=0.5, width = 0,
                position = position_dodge(0.5)) +
  scale_y_continuous(#breaks = scales::pretty_breaks(n = 10),
    sec.axis = sec_axis(~ . , name = "Initial type of growth faltering", breaks = NULL, labels = NULL),
    breaks = c(1,2,4,8,16, 32), 
    trans = "log10") +
  geom_hline(yintercept = 1) +
  scale_color_manual(values=tableau10, drop=TRUE) +
  coord_cartesian(ylim = c(0.9,12)) +
  labs(color= "Growth faltering type", fill= "Growth faltering type")+
  xlab("Child age in months at second time period")+
  ylab("Relative risk of growth faltering at followup time period") +
  ggtitle("Age at initial growth faltering") +
  theme(legend.position = "bottom",
        axis.text.x = element_text(size = 8, angle = 90, vjust=0),
        axis.title.x = element_text(size = 10),
        axis.title.y = element_text(size = 10),
        strip.text.x = element_text(size = 8, margin = margin(t = 0)),
        strip.text.y = element_text(size = 8, margin = margin(t = 0)),
        panel.grid.major.x = element_blank(), 
        panel.grid.minor = element_blank(),
        plot.title = element_text(size = 10, hjust = 0.5, margin=margin(0,0,10,0))) 
p2
ggsave(p2, file=paste0(here::here(), "/figures/wasting/fig-tmle-RR_v2.png"), width=8, height=9)


#Explore different patterns viz
p3 <- ggplot(plotdf, aes(y=RR,x=A, group=A_t, fill=Y, color=Y)) +
  facet_grid(Y_t~Y) +
  geom_point(size = 2, stroke = 0,
             position = position_dodge(0.5)) +
  #geom_line() +
  geom_errorbar(aes(ymin=RR.CI1, ymax=RR.CI2), alpha=0.5, width = 0,
                position = position_dodge(0.5)) 
p3




#First 3 columns
#plotdf3 <- plotdf %>% filter(A_t %in% c("Birth","0-3 months", "3-6 months")) %>% droplevels()

unique(plotdf$Y_t)
unique(plotdf$A_t)
plotdf3 <- plotdf %>% filter(A!="Underweight", Y!="Underweight",
                             A_t=="Birth" & Y_t=="0-3" |
                               A_t=="0-3 months" & Y_t=="3-6" |
                               A_t=="3-6 months" & Y_t=="6-9" |
                               A_t=="6-9 months" & Y_t=="9-12" |
                               A_t=="9-12 months" & Y_t=="12-15" |
                               A_t=="12-15 months" & Y_t=="15-18" |
                               A_t=="15-18 months" & Y_t=="18-21" |
                               A_t=="18-21 months" & Y_t=="21-24" ) %>% droplevels()

plotdf3$A_t <- as.character(plotdf3$A_t)
plotdf3$A_t <- gsub(" months","",plotdf3$A_t)
plotdf3$A_t <- factor(plotdf3$A_t, levels=c("Birth","0-3", "3-6","6-9" ,"9-12","12-15","15-18","18-21", "21-24"))

plotdf3 <- plotdf3 %>% mutate(
  A_facet=case_when(A=="Wasting"~"Wasting exposure",
            A=="Stunting"~"Stunting exposure")
)

p3 <- ggplot(plotdf3, aes(y=RR,x=A_t, group=Y, fill=Y, color=Y)) +
  facet_grid(~A_facet) +
  geom_point(size = 2, stroke = 0,
             position = position_dodge(0.1)) +
  geom_line(position = position_dodge(0.1)) +
  geom_errorbar(aes(ymin=RR.CI1, ymax=RR.CI2), alpha=0.5, width = 0,
                position = position_dodge(0.1)) +
  scale_y_continuous(#breaks = scales::pretty_breaks(n = 10),
    #sec.axis = sec_axis(~ . , name = "Initial type of growth faltering", breaks = NULL, labels = NULL),
    breaks = c(1,2,4,8,16, 32), 
    trans = "log10") +
  geom_hline(yintercept = 1) +
  scale_color_manual(values=tableau10[c(9,10)], drop=TRUE) +
  coord_cartesian(ylim = c(0.9,12)) +
  labs(color= "Growth faltering\nat next period", fill= "Growth faltering\nat next period")+
  xlab("Child age at growth faltering exposure (months)")+
  ylab("Relative risk of growth faltering in the next 3-month period") +
  #ggtitle("Type of initial growth faltering") +
  theme(legend.position = "bottom",
        axis.text.x = element_text(size = 8, angle = 90, vjust=0.5, hjust=0.5),
        axis.title.x = element_text(size = 10),
        axis.title.y = element_text(size = 10),
        legend.title = element_text(size = 8),
        strip.text.x = element_text(size = 8, margin = margin(t = 0)),
        strip.text.y = element_text(size = 8, margin = margin(t = 0)),
        panel.grid.major.x = element_blank(), 
        panel.grid.minor = element_blank(),
        plot.title = element_text(size = 10, hjust = 0.5, margin=margin(0,0,10,0))) 


ggsave(p3, file=paste0(here::here(), "/figures/wasting/fig-tmle-RR_v3.png"), width=5, height=5)





