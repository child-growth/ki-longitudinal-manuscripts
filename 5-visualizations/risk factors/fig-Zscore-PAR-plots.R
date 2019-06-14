


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())



#Load data
vim <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_VIM_results.rds"))
par <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_PAR_results.rds"))

head(vim)
dim(par)

par <- par %>% filter( agecat=="24 months", region=="Pooled")
vim <- vim %>% filter(agecat=="24 months", region=="Pooled")

vim2 <- vim %>% subset(., select = c(outcome_variable, intervention_variable, PAR, CI1, CI2, RFlabel)) %>% mutate(measure="Population attributable difference")
par2 <- par %>% subset(., select = c(outcome_variable, intervention_variable, PAR, CI1, CI2, RFlabel, n_cell, n))  %>% mutate(measure="Variable importance measure")

v <- unique(vim2$intervention_variable)
p <- unique(par2$intervention_variable)
v[!(v %in% p)]
p[!(p %in% v)]

df <- bind_rows(par2, vim2)


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
  filter(#region=="Pooled",
         outcome_variable %in% c("LAZ", "WLZ" )#,
         #agecat %in% c("24 months")
         ) %>%
  filter(!is.na(intervention_variable)) %>%
  mutate(ref_prev=n_cell/n) %>%
  group_by(intervention_variable, 
           #intervention_level, 
           outcome_variable) 

#----------------------------------------------------------
# Plot LAZ PAR
#----------------------------------------------------------

plotdf <- dpool %>% filter(outcome_variable=="LAZ") %>%
  arrange(-PAR) %>%
  mutate(RFlabel_ref=factor(RFlabel, levels=unique(RFlabel)))
nlab <- paste0(round((plotdf$n_cell-plotdf$n)/1000),"k (",round((1-plotdf$ref_prev)*100),"%) to ref: ",plotdf$intervention_level)
RFlabel <- plotdf$RFlabel
PAR <- plotdf$PAR
plotdf$PAR2 <- ifelse(plotdf$measure=="Population attributable difference", PAR, NA)

# plotdf$measure = "Population attributable difference"
# 
# #copy existing data, offset by 0.1
# plotdf_copy = plotdf
# plotdf_copy$measure = "Variable importance measure"
# plotdf_copy$PAR = plotdf_copy$PAR + 0.1
# plotdf_copy$CI1 = plotdf_copy$CI1 + 0.1
# plotdf_copy$CI2 = plotdf_copy$CI2 + 0.1



pPAR_laz <-  ggplot(plotdf, aes(x=as.numeric(factor(reorder(RFlabel, -PAR2))))) + 
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
                                         labels = rep("", length(nlab)))) +#reorder(nlab, PAR))) +
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


#----------------------------------------------------------
# Plot WLZ PAR
#----------------------------------------------------------

plotdf <- dpool %>% filter(outcome_variable=="WLZ") %>%
  arrange(-PAR) %>%
  mutate(RFlabel_ref=factor(RFlabel, levels=unique(RFlabel)))
nlab <- paste0(round((plotdf$n_cell-plotdf$n)/1000),"k (",round((1-plotdf$ref_prev)*100),"%) to ref: ",plotdf$intervention_level)
RFlabel <- plotdf$RFlabel
PAR <- plotdf$PAR
plotdf$PAR2 <- ifelse(plotdf$measure=="Population attributable difference", PAR, NA)


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
                                         labels = rep("", length(nlab))))+#reorder(nlab, PAR))) +
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








#----------------------------------------------------------
# ANNA: CREATE PLOTS HERE
# Plot margin tables
#----------------------------------------------------------

#Create data underlying LAZ side table
# 3 columns (use these as column names) 1) "Total N", 2) "% shifted to reference", 3) "% shifted to optimal"
# NOTE: VIM percent shifted now set to 0 until results are generated

mtab_df_laz <- dpool %>% filter(outcome_variable=="LAZ") %>%
  arrange(-PAR) %>%
  mutate(perc_ref= round((1-ref_prev)*100), perc_vim=0) %>%
  subset(., select = c(n, perc_ref, perc_vim))

#Formatting to do:
# add comma to N (aka print 23,045 instead of 23045)

mtab_df_laz$n = format(mtab_df_laz$n ,big.mark=",", trim=TRUE)

#Use tableGrob to create a plot with the appearrence of a table

mtab_df_laz_tbl <- tableGrob(mtab_df_laz,
                             row = NULL,
                             cols = c("N", "% shifted to \nreference", "% shifted to \noptimal"), 
                             theme = ttheme_minimal(base_size =9))

mtab_df_laz_tbl$heights <- unit(c(0.055, rep(0.025, nrow(mtab_df_laz_tbl) - 1)), "npc")
mtab_df_laz_tbl$widths <- unit(rep(0.2, ncol(mtab_df_laz_tbl)), "npc")
mtab_df_laz_tbl <- gtable_add_grob(mtab_df_laz_tbl,
                                   grobs = segmentsGrob( # line across the bottom
                                     x0 = unit(0,"npc"),
                                     y0 = unit(0,"npc"),
                                     x1 = unit(1,"npc"),
                                     y1 = unit(0,"npc"),
                                     gp = gpar(lwd = 2.0)),
                                   t = 1, b = 1, l = 1, r = 3)

# grid.arrange(mtab_df_laz_tbl)
# 
# grid.arrange(pPAR_laz, mtab_df_laz_tbl,
#              nrow = 1,
#              ncol = 2,
#              heights= 1, 
#              widths = c(1, 0.5))


#Repeat for WLZ
mtab_df_wlz <- dpool %>% filter(outcome_variable=="WLZ") %>%
  arrange(-PAR) %>%
  mutate(perc_ref= round((1-ref_prev)*100), perc_vim=0) %>%
  subset(., select = c(n, perc_ref, perc_vim))

mtab_df_wlz$n = format(mtab_df_wlz$n ,big.mark=",", trim=TRUE)

#Use tableGrob to create a plot with the appearrence of a table

mtab_df_wlz_tbl <- tableGrob(mtab_df_wlz, 
                             rows = NULL,
                             cols = c("N", "% shifted to \nreference", "% shifted to \noptimal"), 
                             theme = ttheme_minimal(base_size =9))

mtab_df_wlz_tbl$heights <- unit(c(0.055, rep(0.025, nrow(mtab_df_wlz_tbl) - 1)), "npc")
mtab_df_wlz_tbl$widths <- unit(rep(0.2, ncol(mtab_df_wlz_tbl)), "npc")

mtab_df_wlz_tbl <- gtable_add_grob(mtab_df_wlz_tbl,
                                   grobs = segmentsGrob( # line across the bottom
                                     x0 = unit(0,"npc"),
                                     y0 = unit(0,"npc"),
                                     x1 = unit(1,"npc"),
                                     y1 = unit(0,"npc"),
                                     gp = gpar(lwd = 2.0)),
                                   t = 1, b = 1, l = 1, r = 3)

grid.arrange(mtab_df_wlz_tbl)

# grid.arrange(pPAR_wlz, mtab_df_wlz_tbl,
#              nrow = 1,
#              ncol = 2,
#              heights= 1, 
#              widths = c(1, 0.5))

#save the plots seperately 
save(mtab_df_laz_tbl, mtab_df_wlz_tbl, file="C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/rf_Zpar_margin_plot_objects.Rdata")







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






