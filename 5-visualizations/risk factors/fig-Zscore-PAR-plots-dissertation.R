


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)





#Load data
par <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_PAR_results.rds"))

dim(par)

unique(par$intervention_level)
unique(par$intervention_variable)
par$intervention_level <- as.character(par$intervention_level)
par$intervention_level[par$intervention_level=="Full or late term"] <- "Full/late term"
par$intervention_level[par$intervention_level=="(0%, 5%]"] <- "(0%,5%]"
par$intervention_level[par$intervention_level=="No"] <- "None"
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
  #mutate(RFlabel_ref = expression(bold(RFlabel)~' shifted to '~bold(intervention_level)))
  #mutate(RFlabel_ref = gsub(", ref: "," shifted to ",RFlabel_ref))
  mutate(RFlabel_ref = paste0(RFlabel," shifted to ", intervention_level))

#Bold the intervention variable
# https://stackoverflow.com/questions/37758050/ggplot-displaying-expression-in-x-axis
# 
#  as.expression(bold(par$RFlabel[1])~' shifted to '~bold(par$intervention_level[1]))
#  as.expression(bquote(bold(par$RFlabel[1])))
#  parse(text= paste("bold(par$RFlabel[", 1:7, "])", sep="") ) 
 
 
unique(par$RFlabel_ref)

df <- par %>% subset(., select = c(outcome_variable, intervention_variable, PAR, CI1, CI2, RFlabel, RFlabel_ref,  RFtype, n_cell, n)) %>% 
  filter(!is.na(PAR)) %>% mutate(measure="PAR")



#----------------------------------------------------------
# Plot parameters
#----------------------------------------------------------


yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)

# Colors
color_vec = c("#7F7F7F", "#E377C2")

main_color <- "#287D8EFF"

#Viridis colors
#287D8EFF
#29AF7FFF

#----------------------------------------------------------
# Clean up plot dataframe
#----------------------------------------------------------

unique(df$outcome_variable)
df$outcome_variable <- gsub("y_rate_haz", "HAZ velocity", df$outcome_variable)
df$outcome_variable <- gsub("y_rate_len", "Length velocity", df$outcome_variable)
df$outcome_variable <- gsub("y_rate_wtkg", "Weight velocity", df$outcome_variable)
df$outcome_variable <- gsub("haz", "LAZ", df$outcome_variable)
df$outcome_variable <- gsub("whz", "WLZ", df$outcome_variable)

unique(df$RFtype)
df$RFtype[df$RFtype =="Time"] <-"WASH"
df$RFtype[df$RFtype =="WASH"] <-"WASH/season"
df$RFtype[df$RFtype =="Parent anthro" | df$RFtype =="Parent background"] <-"Parental"
#df$RFtype[df$RFtype =="SES"] <-"Socio-economic"
#df$RFtype[df$RFtype =="Breastfeeding"] <-"Postnatal child health"
df$RFtype[df$RFtype =="SES" |  df$RFtype =="Household"] <-"SES/Household size"

df$RFtype[df$RFtype =="Breastfeeding" | df$intervention_variable =="hfoodsec"] <-"Nutrition"
unique(df$RFtype)
df$Category <- factor(df$RFtype, levels=c("Birth characteristics", "Parental", "SES/Household size",
                                        "WASH/season","Postnatal child health", "Nutrition"    ))

                         



dpool <- df %>% ungroup() %>%
  filter(outcome_variable %in% c("LAZ", "WLZ" ),
         !is.na(intervention_variable)) %>%
  mutate(ref_prev=n_cell/n) %>%
  group_by(intervention_variable, 
           outcome_variable) 

#----------------------------------------------------------
# Plot LAZ PAR
#----------------------------------------------------------

plotdf_laz <- dpool %>% filter(outcome_variable=="LAZ") %>%
  arrange(-PAR) 
rflevels = unique(plotdf_laz$RFlabel_ref)
plotdf_laz$RFlabel_ref=factor(plotdf_laz$RFlabel_ref, levels=rflevels)





pPAR_laz <-  ggplot(plotdf_laz, aes(x=RFlabel_ref, color=Category)) + 
  geom_point(aes(y=-PAR) , size = 4) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2)) +
  coord_flip(ylim=c(-0.2, 0.55)) +
  scale_color_manual(values=tableau10) +
  labs(#x = "Exposure, and to which level of exposure the cohorts are shifted",
       x = "Exposure",
       y = "Attributable difference in LAZ") +
  geom_hline(yintercept = 0) +
  theme(strip.background = element_blank(),
        legend.position=c(0.75, 0.5),
        legend.title = element_text( size = 10),
        legend.text = element_text(size = 8),
        axis.text.y = element_text(size=, hjust = 1),
        axis.text.x = element_text(size=12)) +
  guides( shape=FALSE)
pPAR_laz



#----------------------------------------------------------
# Plot WLZ PAR
#----------------------------------------------------------

plotdf_wlz <- dpool %>% filter(outcome_variable=="WLZ") %>%
  arrange(-PAR) 
rflevels = unique(plotdf_wlz$RFlabel_ref)
plotdf_wlz$RFlabel_ref=factor(plotdf_wlz$RFlabel_ref, levels = rflevels)


pPAR_wlz <-  ggplot(plotdf_wlz, aes(x=RFlabel_ref, color=Category)) + 
  geom_point(aes(y=-PAR),  size = 4) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2)) +
  coord_flip(ylim=c(-0.2, 0.55)) +
  scale_color_manual(values=tableau10) +
  labs(x = "Exposure", y = "Attributable difference in WLZ") +
  geom_hline(yintercept = 0) +
  theme(strip.background = element_blank(),
        legend.position=c(0.75, 0.5),
        legend.title = element_text( size = 10),
        legend.text = element_text(size = 8),
        axis.text.y = element_text(size=10, hjust = 1),
        axis.text.x = element_text(size=12),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides( shape=FALSE)
pPAR_wlz


saveRDS(list(pPAR_laz, pPAR_wlz), file=paste0(here::here(), "/results/rf results/rf_Zpar_plot_objects_dissertation.RDS"))


