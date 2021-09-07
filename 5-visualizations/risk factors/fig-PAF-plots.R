
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))
library(cowplot)



yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)

#hbgdki pallet
# tableau10 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
#                "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
tableau10 <- rep("grey30",10)

scaleFUN <- function(x) sprintf("%.1f", x)



df <- readRDS(paste0(BV_dir,"/results/rf results/pooled_PAF_results.rds"))
df <- df %>% filter(!(intervention_variable %in% c("anywast06","enstunt","enwast","pers_wast")),
                    outcome_variable %in% c("ever_stunted","ever_wasted"))
#df <- RMA_clean(df)
head(df)



table(df$intervention_level)
df[df$intervention_level==">=35",]
df[df$intervention_level==">=38",]

unique(df$outcome_variable)
df$outcome_variable <- gsub("ever_stunted", "Ever stunted", df$outcome_variable)
df$outcome_variable <- gsub("ever_wasted", "Ever wasted", df$outcome_variable)



unique(df$intervention_level)
unique(df$intervention_variable)
df$intervention_level <- as.character(df$intervention_level)
df$intervention_level[df$intervention_level=="Full or late term"] <- "Full/late term"
df$intervention_level[df$intervention_level=="[0%, 2%]"] <- "[0%,2%]"
df$intervention_level[df$intervention_level=="No" & !(df$intervention_variable %in% c("enwast","enstunt"))] <- "None"
df$intervention_level[df$intervention_variable %in% c("enwast","enstunt")] <- "No"
df$intervention_level[df$intervention_level=="Yes"] <- "All"
df$intervention_level[df$intervention_level=="Normal weight"] <- ">=18.5 BMI"
df$intervention_level[df$intervention_level=="1" & df$intervention_variable %in% c("brthmon","month")] <- "Jan."
df$intervention_level[df$intervention_level=="0" & df$intervention_variable %in% c("single")] <- "dftnered"
df$intervention_level[df$intervention_level=="1" & df$intervention_variable %in% c("dfity")] <- "Firstborn"
df$intervention_level[df$intervention_level=="None" & df$intervention_variable %in% c("vagbrth")] <- "C-section"
df$intervention_level[df$intervention_level=="None" & df$intervention_variable %in% c("hdlvry")] <- "No"

df$RFlabel[df$RFlabel=="Diarrhea <24 mo.  (% days"] <- "Diarrhea <24mo. (% days)"
df$RFlabel[df$RFlabel=="Diarrhea <6 mo. (% days)"] <- "Diarrhea <6mo. (% days)"
df$RFlabel[df$RFlabel=="Gestational age at birth"] <- "Gestational age"



all_vars <- unique(df$intervention_variable)
df <- df %>% filter( agecat=="0-24 months" | intervention_variable %in% c("perdiar6","predexfd6") & agecat=="6-24 months", 
                     region=="Pooled", !is.na(PAF)) %>%
  #mutate(RFlabel_ref = expression(bold(RFlabel)~' shifted to '~bold(intervention_level)))
  #mutate(RFlabel_ref = gsub(", ref: "," shifted to ",RFlabel_ref))
  mutate(RFlabel_ref = paste0(RFlabel," shifted to ", intervention_level))
sub_vars <- unique(df$intervention_variable)
all_vars[!(all_vars %in% sub_vars)]

temp<-df[df$intervention_variable=="fage"&!is.na(df$intervention_variable),]
temp

#Bold the intervention variable
# https://stackoverflow.com/questions/37758050/ggplot-displaying-expression-in-x-axis
# 
#  as.expression(bold(df$RFlabel[1])~' shifted to '~bold(df$intervention_level[1]))
#  as.expression(bquote(bold(df$RFlabel[1])))
#  dfse(text= paste("bold(df$RFlabel[", 1:7, "])", sep="") ) 


unique(df$RFlabel_ref)

df <- df %>% subset(., select = c(outcome_variable, intervention_variable, PAF, PAF.CI1, PAF.CI2, RFtype, RFlabel, RFlabel_ref, n_cell, n)) %>% 
  filter(!is.na(PAF)) %>% mutate(measure="PAF")



#----------------------------------------------------------
# Plot PAFameters
#----------------------------------------------------------


yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)

# Colors
color_vec = c("#7F7F7F", "#E377C2")



#----------------------------------------------------------
# Clean up plot dataframe
#----------------------------------------------------------



dpool <- df %>% ungroup() %>%
  filter(outcome_variable %in% c("Ever stunted", "Ever wasted" ),
         !is.na(intervention_variable)) %>%
  mutate(ref_prev=n_cell/n) %>%
  group_by(intervention_variable, 
           outcome_variable) 

dpool <- dpool %>%
  mutate(
    RFgroup = case_when(RFtype %in% c("Household","SES","WASH", "Time") ~ "Household & Environmental Characteristics",
                        RFtype %in% c("Parent background","Parent anthro" ) ~ "Parental Characteristics",
                        RFtype %in% c("Postnatal child health", "Breastfeeding") ~ "Postnatal child characteristics",
                        RFtype==RFtype ~ "At-birth child characteristics"),
    RFgroup = factor(RFgroup, levels = (c("At-birth child characteristics", "Postnatal child characteristics",  
                                          "Parental Characteristics", "Household & Environmental Characteristics")))#,
    # sig=ifelse((CI1<0 & CI2<0) | (CI1>0 & CI2>0), 1, 0),
    # est_lab=paste0(sprintf("%0.2f", -df)," (",sprintf("%0.2f", -CI2),", ",sprintf("%0.2f", -CI1),")"),
    # perc_ref= round((1-ref_prev)*100),
    # n = format(n ,big.mark=",", trim=TRUE),
    # n= paste0(n, " (",perc_ref,"%)")#,
    #est_lab=paste0(n,"   ",est_lab)
  ) 

#----------------------------------------------------------
# Plot LAZ PAF
#----------------------------------------------------------

plotdf_stunt <- dpool %>% filter(outcome_variable=="Ever stunted") %>%
  arrange(PAF) 
rflevels = unique(plotdf_stunt$RFlabel_ref)
plotdf_stunt$RFlabel_ref=factor(plotdf_stunt$RFlabel_ref, levels=rflevels)
tail(plotdf_stunt)
#nlab <- paste0(round((plotdf$n_cell-plotdf$n)/1000),"k (",round((1-plotdf$ref_prev)*100),"%) to ref: ",plotdf$intervention_level)
#RFlabel <- plotdf$RFlabel_ref
#PAF <- plotdf$PAF
#plotdf$PAF2 <- ifelse(plotdf$measure=="Population attributable difference", PAF, NA)

# plotdf$measure = "Population attributable difference"
# 
# #copy existing data, offset by 0.1
# plotdf_copy = plotdf
# plotdf_copy$measure = "Variable importance measure"
# plotdf_copy$PAF = plotdf_copy$PAF + 0.1
# plotdf_copy$PAF.CI1 = plotdf_copy$PAF.CI1 + 0.1
# plotdf_copy$PAF.CI2 = plotdf_copy$PAF.CI2 + 0.1



# pPAF_stunt <-  ggplot(plotdf_stunt, aes(x=RFlabel_ref)) + 
#   geom_point(aes(y=PAF ), color="grey30", size = 4) +
#   geom_linerange(aes(ymin=PAF.CI1 , ymax=PAF.CI2 ), color="grey30") +
#   coord_flip(ylim=c(-5, 40)) +
#   labs(#x = "Exposure, and to which level of exposure the cohorts are shifted",
#     x = "Exposure",
#     y = "Attributable fraction (%) in\nstunting cumulative incidence") +
#   geom_hline(yintercept = 0) +
#   theme(strip.background = element_blank(),
#         legend.position="right",
#         axis.text.y = element_text(size=, hjust = 1),
#         axis.text.x = element_text(size=12)) +
#   guides(color=FALSE, shape=FALSE)
# pPAF_stunt


pPAF_stunt <- ggplot(plotdf_stunt, aes(x=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
  geom_point(aes(y=PAF),  size = 4) +
  geom_linerange(aes(ymin=PAF.CI1, ymax=PAF.CI2)) +
  # geom_text(aes(label=est_lab), y=-0.21, color="grey20", size=3.25) +
  # geom_text(aes(label=est_lab_title), y=-0.21, color="black", size=3.5, fontface = "bold") +
  #coord_flip(ylim=c(-0.3, 0.48)) +
  coord_flip() +
  labs(x = NULL,
       y = "Attributable fraction (%) in\nstunting cumulative incidence") +
  geom_hline(yintercept = 0) +
  #scale_y_continuous(breaks = c(-0.2,-0.1,0,0.1,0.2,0.3,0.4, 0.5)) +
  scale_color_manual(values = cbbPalette[c(6,3,2,4)], guide = guide_legend(reverse = TRUE) ) +
  theme(strip.background = element_blank(),
        strip.placement = "top",
        strip.text = element_text(hjust = 0, size=12,  face="bold"),
        axis.text.y = element_text(size=10, hjust = 1),
        axis.text.x = element_text(size=12),
        plot.title = element_text(hjust = 0),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(shape=FALSE) + 
  ggtitle("Stunting cumulative incidence\nfrom 0-24 months") +
  ggforce::facet_col(facets = vars(RFgroup), 
                     scales = "free_y", 
                     space = "free") 
pPAF_stunt




plotdf_wast <- dpool %>% filter(outcome_variable=="Ever wasted") %>%
  arrange(PAF) 
rflevels = unique(plotdf_wast$RFlabel_ref)
plotdf_wast$RFlabel_ref=factor(plotdf_wast$RFlabel_ref, levels=rflevels)
tail(plotdf_wast)


pPAF_wast <- ggplot(plotdf_wast, aes(x=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
  geom_point(aes(y=PAF),  size = 4) +
  geom_linerange(aes(ymin=PAF.CI1, ymax=PAF.CI2)) +
  # geom_text(aes(label=est_lab), y=-0.21, color="grey20", size=3.25) +
  # geom_text(aes(label=est_lab_title), y=-0.21, color="black", size=3.5, fontface = "bold") +
  #coord_flip(ylim=c(-0.3, 0.48)) +
  coord_flip() +
  labs(x = NULL,
       y = "Attributable fraction (%) in\nwasting cumulative incidence") +
  geom_hline(yintercept = 0) +
  #scale_y_continuous(breaks = c(-0.2,-0.1,0,0.1,0.2,0.3,0.4, 0.5)) +
  scale_color_manual(values = cbbPalette[c(6,3,2,4)], guide = guide_legend(reverse = TRUE) ) +
  theme(strip.background = element_blank(),
        strip.placement = "top",
        strip.text = element_text(hjust = 0, size=12,  face="bold"),
        axis.text.y = element_text(size=10, hjust = 1),
        axis.text.x = element_text(size=12),
        #axis.title.x = element_text(hjust = 1),
        plot.title = element_text(hjust = 0),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(shape=FALSE) + 
  ggtitle("Wasting cumulative incidence\nfrom 0-24 months") +
  ggforce::facet_col(facets = vars(RFgroup), 
                     scales = "free_y", 
                     space = "free") 
pPAF_wast





ggsave(pPAF_stunt, file=paste0(BV_dir,"/figures/risk-factor/fig-stunt-ci-PAF.png"), height=10, width=8)
ggsave(pPAF_wast, file=paste0(BV_dir,"/figures/risk-factor/fig-wast-ci-PAF.png"), height=10, width=8)

save(pPAF_stunt, pPAF_wast, file=paste0(BV_dir,"/results/rf results/rf_paf_plot_objects.Rdata"))


plot_PAF = plot_grid(pPAF_stunt, pPAF_wast, labels = c("A","B"), ncol = 2, nrow = 1)

ggsave(plot_PAF, file=paste0(BV_dir, "/figures/manuscript-figure-composites/risk-factor/extended-data/fig-PAF.png"), height=14, width=14)



