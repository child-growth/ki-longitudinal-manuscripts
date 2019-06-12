


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())



#Load data
df <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_PAR_results.rds"))

#----------------------------------------------------------
# Plot parameters
#----------------------------------------------------------


yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)

#hbgdki pallet
tableau10 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")

# All dark grey
tableau10 <- rep("grey30",10)

# Different shades of grey
tableau10 = c("grey50", "grey30")

# Colors!
tableau10 = c("#E377C2","#7F7F7F")

scaleFUN <- function(x) sprintf("%.1f", x)



#----------------------------------------------------------
# Clean up plot dataframe
#----------------------------------------------------------

unique(df$outcome_variable)
df$outcome_variable <- gsub("y_rate_haz", "HAZ velocity", df$outcome_variable)
df$outcome_variable <- gsub("y_rate_len", "Length velocity", df$outcome_variable)
df$outcome_variable <- gsub("y_rate_wtkg", "Weight velocity", df$outcome_variable)
df$outcome_variable <- gsub("haz", "LAZ", df$outcome_variable)
df$outcome_variable <- gsub("whz", "WLZ", df$outcome_variable)


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

plotdf$measure = "Population attributable difference"

#copy existing data, offset by 0.1
plotdf_copy = plotdf
plotdf_copy$measure = "Variable importance measure"
plotdf_copy$PAR = plotdf_copy$PAR + 0.1
plotdf_copy$CI1 = plotdf_copy$CI1 + 0.1
plotdf_copy$CI2 = plotdf_copy$CI2 + 0.1


#----------------------------------------------------------
# ANNA: CREATE PLOTS HERE
# Plot margin tables
#----------------------------------------------------------

#Create data underlying LAZ side table
# 3 columns (use these as column names) 1) "Total N", 2) "% shifted to reference", 3) "% shifted to optimal"
# NOTE: VIM percent shifted now set to 0 until results are generated

mtab_df <- dpool %>% filter(outcome_variable=="LAZ") %>%
  arrange(-PAR) %>%
  mutate(perc_ref= round((1-ref_prev)*100), perc_vim=0) %>%
  subset(., select = c(n, perc_ref, perc_vim))

#Formatting to do:
# add comma to N (aka print 23,045 instead of 23045)

#Use geom_tile() to create a plot with the appearrence of a table



#Repeat for WLZ
mtab_df <- dpool %>% filter(outcome_variable=="WLZ") %>%
  arrange(-PAR) %>%
  mutate(perc_ref= round((1-ref_prev)*100), perc_vim=0) %>%
  subset(., select = c(n, perc_ref, perc_vim))

#save the plots seperately (I'll combine together later)

#----------------------------------------------------------
# Plot PAR
#----------------------------------------------------------

#append tables for single ggplot call
plotdf = rbind(plotdf, plotdf_copy)

pPAR_laz <-  ggplot(plotdf, aes(x=as.numeric(factor(reorder(RFlabel, -PAR))))) + 
  geom_point(aes(y=-PAR,  color=measure, shape = measure), size = 4) +
  geom_errorbar(aes(ymin=-CI1, ymax=-CI2, color=measure),  alpha=0.8) +
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
  scale_shape_manual(values=c(4, 19))+
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

plotdf$measure = "Population attributable difference"

#copy existing data, offset by 0.1
plotdf_copy = plotdf
plotdf_copy$measure = "Variable importance measure"
plotdf_copy$PAR = plotdf_copy$PAR + 0.1
plotdf_copy$CI1 = plotdf_copy$CI1 + 0.1
plotdf_copy$CI2 = plotdf_copy$CI2 + 0.1

#append tables for single ggplot call
plotdf = rbind(plotdf, plotdf_copy)

pPAR_wlz <-  ggplot(plotdf, aes(x=as.numeric(factor(reorder(RFlabel, -PAR))))) + 
  geom_point(aes(y=-PAR,  color=measure, shape = measure), size = 4) +
  geom_errorbar(aes(ymin=-CI1, ymax=-CI2, color=measure),  alpha=0.8) +
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
  scale_shape_manual(values=c(4, 19))+
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













i <- unique(df$region)[1]
j <- unique(df$outcome_variable)[5]
k <- unique(df$agecat)[6]

for(i in unique(df$region)){
  for(j in unique(df$outcome_variable)){
    for(k in unique(df$agecat)){

      dpool <- df %>%
        filter(region==i,
               outcome_variable==j,
               agecat == k) %>%
        filter(!is.na(intervention_variable))

      ppar <-  ggplot(dpool, aes(x=reorder(RFlabel_ref, -PAR))) +
        geom_point(aes(y=-PAR,  color=RFtype), size = 4) +
        geom_linerange(aes(ymin=-CI1, ymax=-CI2, color=RFtype)) +
        coord_flip() +
        labs(x = "Exposure", y = "Difference in outcome after setting\nwhole population exposure to reference level") +
        geom_hline(yintercept = 0) +
        scale_colour_manual(values=tableau10, name = "Exposure\nCategory") +
        theme(strip.background = element_blank(),
              legend.position="right",
              axis.text.y = element_text(hjust = 1),
              strip.text.x = element_text(size=12),
              axis.text.x = element_text(size=12,
                                         margin = margin(t = -20)),
              axis.title.x = element_text(margin = margin(t = 20))) +
        ggtitle(paste0("Population attributable difference\n", dpool$outcome_variable[1]," - ", dpool$agecat[1],", ", dpool$region[1])) +
        guides(color=FALSE, shape=FALSE)

      ggsave(ppar, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/Zscore-PAR/fig-",dpool$region[1], "-", dpool$outcome_variable[1], "-", gsub(" ","",dpool$agecat[1]), "-Z-PAR.png"), height=10, width=8)
    }
  }
}






