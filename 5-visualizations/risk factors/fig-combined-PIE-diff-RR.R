#TO DO
# change back to original bluevelvet filepaths
# mean differences -> estimate, ci_lower, ci_upper; unsure how to merge
# CIR -> RR, RR.CI1, RR.CI2; merge using RFlabel, RFtype, or RFlabel_ref?

# only include moderate stunting/wasting (remove sstunted/sswasted)

#Nature update- combine PIE, mean diff, and RR in one plot

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)
library(cowplot)

#Load data
# PIE
par <- readRDS(paste0(BV_dir,"/results/rf results/pooled_Zscore_PAR_results.rds"))
# par <- readRDS("C:/Users/anmol/OneDrive/Documents/GitHub/ki-longitudinal-manuscripts/results_old/rf results/pooled_Zscore_PAR_results.rds")
unique(par$intervention_variable)
unique(par$outcome_variable)

# CIR
RMAest_clean <- readRDS(paste0(BV_dir,"/results/rf results/pooled_RR_results.rds"))
# RMAest_clean <- readRDS("C:/Users/anmol/OneDrive/Documents/GitHub/ki-longitudinal-manuscripts/results_old/rf results/pooled_RR_results.rds")

#Mean differences
dfull <- readRDS(paste0(BV_dir,"/results/rf results/full_RF_results.rds"))
# dfull <- readRDS("C:/Users/anmol/OneDrive/Documents/GitHub/ki-longitudinal-manuscripts/results_old/rf results/full_RF_results.rds")
d <- dfull %>% filter(type=="ATE", agecat!="All")

##### Cleaning CIR dataset
par <- par %>% mutate(parameter="PAR")
CIR <- RMAest_clean %>% mutate(parameter="CIR")
# df_no_d <- merge(par, RMAest_clean, by ="RFlabel") #, all.x = TRUE)
# df <- df_no_d %>% filter(!(intervention_variable.x %in% c("anywast06","enstunt","enwast","pers_wast"))) %>% 
#   filter(!(intervention_variable.y %in% c("anywast06","enstunt","enwast","pers_wast")))
# dim(df)

CIR <- CIR %>% filter(!(intervention_variable %in% c("anywast06","enstunt","enwast","pers_wast")))
unique(CIR$intervention_level)
unique(CIR$intervention_variable)
CIR$intervention_level <- as.character(CIR$intervention_level)
CIR$intervention_level[CIR$intervention_level=="Full or late term"] <- "Full/late term"
CIR$intervention_level[CIR$intervention_level=="[0%, 2%]"] <- "[0%,2%]"
CIR$intervention_level[CIR$intervention_level=="No" & !(CIR$intervention_variable %in% c("enwast","enstunt"))] <- "None"
CIR$intervention_level[CIR$intervention_variable %in% c("enwast","enstunt")] <- "No"
CIR$intervention_level[CIR$intervention_level=="Yes"] <- "All"
CIR$intervention_level[CIR$intervention_level=="Normal weight"] <- ">=18.5 BMI"
CIR$intervention_level[CIR$intervention_level=="1" & CIR$intervention_variable %in% c("brthmon","month")] <- "Jan."
CIR$intervention_level[CIR$intervention_level=="0" & CIR$intervention_variable %in% c("single")] <- "CIRtnered"
CIR$intervention_level[CIR$intervention_level=="1" & CIR$intervention_variable %in% c("CIRity")] <- "Firstborn"
CIR$intervention_level[CIR$intervention_level=="None" & CIR$intervention_variable %in% c("vagbrth")] <- "C-section"
CIR$intervention_level[CIR$intervention_level=="None" & CIR$intervention_variable %in% c("hdlvry")] <- "No"

CIR$RFlabel[CIR$RFlabel=="Diarrhea <24 mo.  (% days"] <- "Diarrhea <24mo. (% days)"
CIR$RFlabel[CIR$RFlabel=="Diarrhea <6 mo. (% days)"] <- "Diarrhea <6mo. (% days)"
CIR$RFlabel[CIR$RFlabel=="Gestational age at birth"] <- "Gestational age"

CIR <- CIR %>% filter(agecat=="24 months", region=="Pooled", !is.na(RR)) %>%
  mutate(RFlabel_ref = paste0(RFlabel," shifted to ", intervention_level))

dim(CIR)

CIR_no_NA <- CIR %>% filter(!is.na(PAR))
dim(CIR_no_NA)

#Get top 10 variables for each
CIR %>% filter(outcome_variable!="waz") %>% group_by(outcome_variable) %>% arrange(RR) %>% slice(1:10) %>% select(outcome_variable, intervention_variable, RR)

CIR %>% filter(outcome_variable!="waz") %>% group_by(outcome_variable) %>% arrange(RR) %>% slice(1:5) %>% select(outcome_variable, intervention_variable, RR)
CIR %>% filter(outcome_variable!="waz") %>% group_by(outcome_variable) %>% arrange(RR) %>% slice(1:5) %>% select(intervention_variable)

#top 5 sig
CIR %>% filter(outcome_variable!="waz", RR.CI2<0) %>% group_by(outcome_variable) %>% arrange(RR) %>% slice(1:5) %>% select(outcome_variable, intervention_variable, RR.CI2, RR)
CIR %>% filter(outcome_variable!="waz") %>% group_by(outcome_variable) %>% arrange(RR) %>% slice(1:7) %>% select(intervention_variable)
CIR %>% filter(outcome_variable!="waz", RR.CI2<0) %>% group_by(outcome_variable) %>% arrange(RR) %>% slice(1:7) %>% select(intervention_variable)

CIR %>% filter(outcome_variable!="waz") %>% group_by(outcome_variable) %>% arrange(RR) %>% slice(1:11) %>% select(intervention_variable) %>% as.data.frame()


unique(CIR$RFlabel_ref)

df_CIR <- CIR %>% subset(., select = c(outcome_variable, intervention_variable, RR, RR.CI1, RR.CI2, RFlabel, RFlabel_ref,  RFtype)) %>% 
  filter(!is.na(RR)) %>% mutate(measure="CIR")
df_CIR[df_CIR$intervention_variable=="hhwealth_quart",]
df_CIR[is.na(df_CIR$n),]
#####

df <- bind_rows(
  par %>% mutate(parameter="PAR"),
  RMAest_clean %>% mutate(parameter="CIR"),
  d %>% mutate(parameter="ATE")
)

saveRDS(df, file=paste0(here::here(),"/data/temp_plotdf.RDS"))

#offline
df <- readRDS(paste0(here::here(),"/data/temp_plotdf.RDS"))
head(df)

table(df$parameter)
table(df$outcome_variable)

df <- df %>% filter(region=="Pooled", outcome_variable=="haz"| outcome_variable=="whz")
table(df$parameter)



par <- par %>% filter(!(intervention_variable %in% c("anywast06","enstunt","enwast","pers_wast")))

unique(par$intervention_level)
unique(par$intervention_variable)
par$intervention_level <- as.character(par$intervention_level)
par$intervention_level[par$intervention_level=="Full or late term"] <- "Full/late term"
par$intervention_level[par$intervention_level=="[0%, 2%]"] <- "[0%,2%]"
par$intervention_level[par$intervention_level=="No" & !(par$intervention_variable %in% c("enwast","enstunt"))] <- "None"
par$intervention_level[par$intervention_variable %in% c("enwast","enstunt")] <- "No"
par$intervention_level[par$intervention_level=="Yes"] <- "All"
par$intervention_level[par$intervention_level=="Normal weight"] <- ">=18.5 BMI"
par$intervention_level[par$intervention_level=="1" & par$intervention_variable %in% c("brthmon","month")] <- "Jan."
par$intervention_level[par$intervention_level=="0" & par$intervention_variable %in% c("single")] <- "Partnered"
par$intervention_level[par$intervention_level=="1" & par$intervention_variable %in% c("parity")] <- "Firstborn"
par$intervention_level[par$intervention_level=="None" & par$intervention_variable %in% c("vagbrth")] <- "C-section"
par$intervention_level[par$intervention_level=="None" & par$intervention_variable %in% c("hdlvry")] <- "No"

par$RFlabel[par$RFlabel=="Diarrhea <24 mo.  (% days"] <- "Diarrhea <24mo. (% days)"
par$RFlabel[par$RFlabel=="Diarrhea <6 mo. (% days)"] <- "Diarrhea <6mo. (% days)"
par$RFlabel[par$RFlabel=="Gestational age at birth"] <- "Gestational age"



par <- par %>% filter( agecat=="24 months", region=="Pooled", !is.na(PAR)) %>%
  mutate(RFlabel_ref = paste0(RFlabel," shifted to ", intervention_level))

#Get top 10 variables for each
par %>% filter(outcome_variable!="waz") %>% group_by(outcome_variable) %>% arrange(PAR) %>% slice(1:10) %>% select(outcome_variable, intervention_variable, PAR)

par %>% filter(outcome_variable!="waz") %>% group_by(outcome_variable) %>% arrange(PAR) %>% slice(1:5) %>% select(outcome_variable, intervention_variable, PAR)
par %>% filter(outcome_variable!="waz") %>% group_by(outcome_variable) %>% arrange(PAR) %>% slice(1:5) %>% select(intervention_variable)

#top 5 sig
par %>% filter(outcome_variable!="waz", CI2<0) %>% group_by(outcome_variable) %>% arrange(PAR) %>% slice(1:5) %>% select(outcome_variable, intervention_variable, CI2, PAR)
par %>% filter(outcome_variable!="waz") %>% group_by(outcome_variable) %>% arrange(PAR) %>% slice(1:7) %>% select(intervention_variable)
par %>% filter(outcome_variable!="waz", CI2<0) %>% group_by(outcome_variable) %>% arrange(PAR) %>% slice(1:7) %>% select(intervention_variable)

par %>% filter(outcome_variable!="waz") %>% group_by(outcome_variable) %>% arrange(PAR) %>% slice(1:11) %>% select(intervention_variable) %>% as.data.frame()

 
unique(par$RFlabel_ref)

df <- par %>% subset(., select = c(outcome_variable, intervention_variable, PAR, CI1, CI2, RFlabel, RFlabel_ref,  RFtype, n_cell, n)) %>% 
  filter(!is.na(PAR)) %>% mutate(measure="PAR")
df[df$intervention_variable=="hhwealth_quart",]
df[is.na(df$n),]


#----------------------------------------------------------
# Plot parameters
#----------------------------------------------------------


yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)

# Colors
color_vec = c("#7F7F7F", "#E377C2")

main_color <- "#287D8EFF"


#----------------------------------------------------------
# Clean up plot dataframe
#----------------------------------------------------------

table(df$outcome_variable)
df$outcome_variable <- gsub("y_rate_haz", "HAZ velocity", df$outcome_variable)
df$outcome_variable <- gsub("y_rate_len", "Length velocity", df$outcome_variable)
df$outcome_variable <- gsub("y_rate_wtkg", "Weight velocity", df$outcome_variable)
df$outcome_variable <- gsub("haz", "LAZ", df$outcome_variable)
df$outcome_variable <- gsub("whz", "WLZ", df$outcome_variable)


dpool <- df %>% ungroup() %>%
  filter(outcome_variable %in% c("LAZ", "WLZ", "waz" ),
         !is.na(intervention_variable)) %>%
  mutate(ref_prev=n_cell/n) %>%
  group_by(intervention_variable, 
           outcome_variable) 

#----------------------------------------------------------
# Plot PAR - combined LAZ and WLZ
#----------------------------------------------------------
unique(dpool$RFtype)
plotdf <- dpool %>%
  mutate(
    RFgroup = case_when(RFtype %in% c("Household","SES","WASH", "Time") ~ "Household & Environmental Characteristics",
                        RFtype %in% c("Parent background","Parent anthro" ) ~ "Parental Characteristics",
                        RFtype %in% c("Postnatal child health", "Breastfeeding") ~ "Postnatal child characteristics",
                        RFtype==RFtype ~ "At-birth child characteristics"),
    sig=ifelse((CI1<0 & CI2<0) | (CI1>0 & CI2>0), 1, 0),
    est_lab=paste0(sprintf("%0.2f", -PAR)," (",sprintf("%0.2f", -CI2),", ",sprintf("%0.2f", -CI1),")"),
                   perc_ref= round((1-ref_prev)*100),
                   n = format(n ,big.mark=",", trim=TRUE),
                   n= paste0(n, " (",perc_ref,"%)"),
    est_lab=paste0(n,"   ",est_lab)
    ) #,
    #est_lab=ifelse(sig==1, est_lab, "")

est_lab_format="N (% shifted)   PIE (95% CI)"



plotdf <- bind_rows(
  data.frame(
    outcome_variable="LAZ",             
    RFlabel_ref="",               
    RFgroup="At-birth child characteristics",
    est_lab_title=est_lab_format,
    title=1
  ),
  data.frame(
    outcome_variable="WLZ",             
    RFlabel_ref="",               
    RFgroup="At-birth child characteristics",
    est_lab_title=est_lab_format,
    title=1
  ),
  data.frame(
    outcome_variable="waz",             
    RFlabel_ref="",               
    RFgroup="At-birth child characteristics",
    est_lab_title=est_lab_format,
    title=1
  ),
  plotdf %>% mutate(title=0)
)
    

plotdf <- plotdf %>% mutate(RFgroup = factor(RFgroup, levels = (c("At-birth child characteristics", "Postnatal child characteristics",  
                                                                  "Parental Characteristics", "Household & Environmental Characteristics"))))

plotdf <- plotdf %>% arrange(outcome_variable, RFgroup, title, -PAR) 
rflevels = unique(plotdf$RFlabel_ref)
plotdf$RFlabel_ref=factor(plotdf$RFlabel_ref, levels=rflevels)


#get abstract Z-scores
df <- plotdf %>% filter(outcome_variable!="waz",
                        intervention_variable %in% c("gagebrth","sex","birthwt","vagbrth","birthlen",
                                                     "mbmi","mwtkg", "mhtcm")) %>%
     arrange(outcome_variable, PAR)
             


pPAR_laz <- ggplot(plotdf %>% filter(outcome_variable=="LAZ"), aes(x=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
  geom_point(aes(y=-PAR),  size = 1.5) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2)) +
  geom_text(aes(label=est_lab), y=-0.21, color="grey20", size=1.25) +
  geom_text(aes(label=est_lab_title), y=-0.21, color="black", size=1.5,fontface = "bold") +
  coord_flip(ylim=c(-0.3, 0.48)) +
  labs(x = NULL,
       y = "Adjusted population intervention effect, difference in Z-score") +
  geom_hline(yintercept = 0) +
  scale_y_continuous(breaks = c(-0.2,-0.1,0,0.1,0.2,0.3,0.4, 0.5), labels=c("","","0","0.1","0.2","0.3","0.4","0.5")) +
  scale_color_manual(values = cbbPalette[c(6,3,2,4)], guide = guide_legend(reverse = TRUE) ) +
  theme(strip.background = element_blank(),
        strip.placement = "top",
        strip.text = element_text(hjust = 0, size=6, face="bold"),
        axis.text.y = element_text(size=4, hjust = 1),
        axis.text.x = element_text(size=8),
        axis.title.x = element_text(hjust = 1, size=6),
        plot.title = element_text(hjust = 0,size=9),
        axis.ticks.x = element_line(size = c(0,0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(shape=FALSE) + 
  ggtitle("Length-for-age Z-score") +
  ggforce::facet_col(facets = vars(RFgroup), 
                   scales = "free_y", 
                   space = "free") 
pPAR_laz




pPAR_laz_no_pie <- ggplot(plotdf %>% filter(outcome_variable=="LAZ"), aes(x=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
  geom_point(aes(y=-PAR),  size = 1.5) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2)) +
  coord_flip(ylim=c(-0.08, 0.53)) +
  labs(x = NULL,
       y = "Adjusted population intervention effect, difference in Z-score") +
  geom_hline(yintercept = 0) +
  scale_y_continuous(breaks = c(-0.2,-0.1,0,0.1,0.2,0.3,0.4, 0.5), labels=c("","","0","0.1","0.2","0.3","0.4","0.5")) +
  scale_color_manual(values = cbbPalette[c(6,3,2,4)], guide = guide_legend(reverse = TRUE) ) +
  theme(strip.background = element_blank(),
        strip.placement = "top",
        strip.text = element_text(hjust = 0, size=6, face="bold"),
        axis.text.y = element_text(size=6, hjust = 1),
        axis.text.x = element_text(size=8),
        axis.title.x = element_text(size=6),
        plot.title = element_text(hjust = 0,size=9),
        axis.ticks.x = element_line(size = c(0,0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(shape=FALSE) + 
  ggtitle("Length-for-age Z-score") +
  ggforce::facet_col(facets = vars(RFgroup), 
                     scales = "free_y", 
                     space = "free") 
pPAR_laz_no_pie


#need to add blank spaces or add early wasting

pPAR_wlz <- ggplot(plotdf %>% filter(outcome_variable=="WLZ"), aes(x=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
  geom_point(aes(y=-PAR),  size = 1.5) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2)) +
  geom_text(aes(label=est_lab), y=-0.16, color="grey20", size=1.25) +
  geom_text(aes(label=est_lab_title), y=-0.16, color="black", size=1.5, fontface = "bold") +
  #coord_flip(ylim=c(-0.185,0.3)) +
  coord_flip(ylim=c(-0.25,0.25)) +
  labs(x = NULL,
       y = "") +
  geom_hline(yintercept = 0) +
  scale_y_continuous(breaks = c(-0.3,-0.2,-0.1,0,0.1,0.2,0.3,0.4), labels=c("","","","0","0.1","0.2","0.3","0.4")) +
  scale_color_manual(values = cbbPalette[c(6,3,2,4)], guide = guide_legend(reverse = TRUE) ) +
  theme(strip.background = element_blank(),
        strip.placement = "top",
        strip.text = element_text(hjust = 0, size=8,  face="bold", color="white"),
        axis.ticks.y = element_blank(),
        axis.text.y = element_blank(),
        axis.text.x = element_text(size=8),
        plot.title = element_text(hjust = 0, size=9),
        axis.ticks.x = element_line(size = c(0,0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)),
        plot.margin = unit(c(-0.07, 0, -0.2, 0), "cm")) +
  guides(shape=FALSE) + 
  ggtitle("Weight-for-length Z-score") +
  #facet_grid(RFgroup~.,  scales="free_y")
  ggforce::facet_col(facets = vars(RFgroup), 
                     scales = "free_y", 
                     space = "free") 
pPAR_wlz

pPAR_wlz_no_pie <- ggplot(plotdf %>% filter(outcome_variable=="WLZ"), aes(x=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
  geom_point(aes(y=-PAR),  size = 1.5) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2)) +
  coord_flip(ylim=c(-0.02, 0.25)) +
  labs(x = NULL,
       y = NULL) +
  geom_hline(yintercept = 0) +
  scale_y_continuous(breaks = c(-0.2,-0.1,0,0.1,0.2,0.3,0.4, 0.5), labels=c("","","0","0.1","0.2","0.3","0.4","0.5")) +
  scale_color_manual(values = cbbPalette[c(6,3,2,4)], guide = guide_legend(reverse = TRUE) ) +
  theme(strip.background = element_blank(),
        strip.placement = "top",
        strip.text = element_text(hjust = 0, size=6, face="bold"),
        axis.ticks.y = element_blank(),
        axis.text.y = element_blank(),
        axis.text.x = element_text(size=8),
        axis.title.x = element_text(size=6),
        plot.title = element_text(hjust = 0,size=9),
        axis.ticks.x = element_line(size = c(0,0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(shape=FALSE) + 
  ggtitle("Weight-for-length Z-score") +
  ggforce::facet_col(facets = vars(RFgroup), 
                     scales = "free_y", 
                     space = "free") 
pPAR_wlz_no_pie




fig2 = plot_grid(pPAR_laz, pPAR_wlz, ncol = 2, rel_widths = c(2, 1))

#To do:
#Fix x-axis label position with this:
#https://stackoverflow.com/questions/33114380/centered-x-axis-label-for-muliplot-using-cowplot-package



#Nature form
#ggsave(fig2, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2.png"), width=18.6, height=18.3, units = 'cm')

# ggsave(fig2, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2.png"), width=16, height=8)
# 
# 
# ggsave(fig2, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2.png"), width=18.3, height=10, units = 'cm')
# ggsave(fig2, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2_alt.png"), width=11, height=8)
# ggsave(fig2, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2_alt2.png"), width=183, height=183/2, units = c("mm"))
# 


