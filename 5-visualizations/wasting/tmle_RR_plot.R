


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))


#Load data
#dfull <- readRDS(paste0(BV_dir,"/results/rf results/raw longbow results/results_results_all_ages_growth_failure_2022-07-12.RDS"))
dfull <- readRDS("C:/Users/andre/Downloads/results_results_all_ages_growth_failure_2022-07-13.RDS")
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

plotdf <- RMAest %>% filter(A!="co", A!="wast06", A!="stunt06", Y!="wast24", Y!="stunt24",
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

plotdf %>% filter(A_t=="Birth",Y_t=="3-6 months")

max(plotdf$RR)
min(plotdf$RR)

plotdf <- plotdf %>% filter(Y!="Concurrent WaSt") %>% droplevels()

p <- ggplot(plotdf, aes(y=RR,x=A, group=Y, fill=Y, color=Y, shape=A)) +
  facet_grid(Y_t~A_t) +
  geom_point(size = 2, stroke = 0,
             position = position_dodge(0.5)) +
  geom_errorbar(aes(ymin=RR.CI1, ymax=RR.CI2), width = 0,
                position = position_dodge(0.5)) +
  scale_y_continuous(#breaks = scales::pretty_breaks(n = 10), 
                     breaks = c(1,2,4,8,16, 32), 
                     trans = "log10") +
  geom_hline(yintercept = 1) +
  scale_color_manual(values=tableau10, drop=TRUE) +
  scale_shape_manual(values = c(16, 17, 13), guide="none") +
  coord_cartesian(ylim = c(0.9,12)) +
  labs(color= "Growth failure type", fill= "Growth failure type")+
  xlab("Child growth failure at first time period")+
  ylab("Relative risk of growth failure at followup time period") +
  #ggtitle("Risk of growth failure at older ages by type of growth failure at earlier ages") +
  theme(legend.position = "bottom",
        axis.text.x = element_text(size = 8, angle = 45, vjust=0.5),
        axis.title.x = element_text(size = 10),
        axis.title.y = element_text(size = 10),
        strip.text.x = element_text(size = 8, margin = margin(t = 0)),
        strip.text.y = element_text(size = 8, margin = margin(t = 0)),
        panel.grid.major.x = element_blank(), 
        panel.grid.minor = element_blank(),
        plot.title = element_text(hjust = 0, margin=margin(0,0,10,0)))

#ggsave(p, file=paste0(here::here(), "/figures/wasting/fig-tmle-RR.png"), width=10, height=10)
ggsave(p, file=paste0(here::here(), "/figures/wasting/fig-tmle-RR.png"), width=8, height=9)



plotdf2 <- plotdf
plotdf2$Y_t <- as.character(plotdf2$Y_t)
plotdf2$Y_t <- gsub(" months","",plotdf2$Y_t)
plotdf2$Y_t <- gsub("15 days","0",plotdf2$Y_t)
plotdf2$Y_t <- factor(plotdf2$Y_t, levels=c("Birth","0-3", "3-6","6-9" ,"9-12","12-15","15-18","18-21", "21-24"))



p2 <- ggplot(plotdf2, aes(y=RR,x=Y_t, group=Y, fill=Y, color=Y)) +
  facet_grid(A~A_t) +
  geom_point(size = 2, stroke = 0,
             position = position_dodge(0.5)) +
  geom_errorbar(aes(ymin=RR.CI1, ymax=RR.CI2), width = 0,
                position = position_dodge(0.5)) +
  scale_y_continuous(#breaks = scales::pretty_breaks(n = 10),
    sec.axis = sec_axis(~ . , name = "Initial type of growth failure", breaks = NULL, labels = NULL),
    breaks = c(1,2,4,8,16, 32), 
    trans = "log10") +
  geom_hline(yintercept = 1) +
  scale_color_manual(values=tableau10, drop=TRUE) +
  coord_cartesian(ylim = c(0.9,12)) +
  labs(color= "Growth failure type", fill= "Growth failure type")+
  xlab("Child age in months at second time period")+
  ylab("Relative risk of growth failure at followup time period") +
  ggtitle("Age at initial growth failure") +
  theme(legend.position = "bottom",
        axis.text.x = element_text(size = 8, angle = 60, vjust=0.6),
        axis.title.x = element_text(size = 10),
        axis.title.y = element_text(size = 10),
        strip.text.x = element_text(size = 8, margin = margin(t = 0)),
        strip.text.y = element_text(size = 8, margin = margin(t = 0)),
        panel.grid.major.x = element_blank(), 
        panel.grid.minor = element_blank(),
        plot.title = element_text(size = 10, hjust = 0.5, margin=margin(0,0,10,0))) 


ggsave(p2, file=paste0(here::here(), "/figures/wasting/fig-tmle-RR_v2.png"), width=8, height=9)


head(plotdf)
df <- plotdf %>% select(A,Y,A_t, Y_t, RR,RR.CI1,   RR.CI2, Nstudies ) %>%
  mutate(RR=round(RR,1), RR.CI1=round(RR.CI1,1), RR.CI2=round(RR.CI2,1))
write.csv(df, file=paste0(here::here(), "/figures/wasting/fig-tmle-data.csv"))
