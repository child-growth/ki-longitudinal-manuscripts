


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
par$intervention_level[par$intervention_level=="[0%, 2%]"] <- "[0%,2%]"
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

#nlab <- paste0(round((plotdf$n_cell-plotdf$n)/1000),"k (",round((1-plotdf$ref_prev)*100),"%) to ref: ",plotdf$intervention_level)
#RFlabel <- plotdf$RFlabel_ref
#PAR <- plotdf$PAR
#plotdf$PAR2 <- ifelse(plotdf$measure=="Population attributable difference", PAR, NA)

# plotdf$measure = "Population attributable difference"
# 
# #copy existing data, offset by 0.1
# plotdf_copy = plotdf
# plotdf_copy$measure = "Variable importance measure"
# plotdf_copy$PAR = plotdf_copy$PAR + 0.1
# plotdf_copy$CI1 = plotdf_copy$CI1 + 0.1
# plotdf_copy$CI2 = plotdf_copy$CI2 + 0.1



pPAR_laz <-  ggplot(plotdf_laz, aes(x=RFlabel_ref)) + 
  geom_point(aes(y=-PAR), color=main_color, size = 4) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2), color=main_color) +
  coord_flip(ylim=c(-0.2, 0.55)) +
  labs(#x = "Exposure, and to which level of exposure the cohorts are shifted",
       x = "Exposure",
       y = "Attributable difference in LAZ") +
  geom_hline(yintercept = 0) +
  theme(strip.background = element_blank(),
        legend.position="right",
        axis.text.y = element_text(size=, hjust = 1),
        axis.text.x = element_text(size=12)) +
  guides(color=FALSE, shape=FALSE)
pPAR_laz



#----------------------------------------------------------
# Plot WLZ PAR
#----------------------------------------------------------

plotdf_wlz <- dpool %>% filter(outcome_variable=="WLZ") %>%
  arrange(-PAR) 
rflevels = unique(plotdf_wlz$RFlabel_ref)
plotdf_wlz$RFlabel_ref=factor(plotdf_wlz$RFlabel_ref, levels = rflevels)


pPAR_wlz <-  ggplot(plotdf_wlz, aes(x=RFlabel_ref)) + 
  geom_point(aes(y=-PAR), color=main_color, size = 4) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2), color=main_color) +
  coord_flip(ylim=c(-0.2, 0.55)) +
  labs(x = "Exposure", y = "Attributable difference in WLZ") +
  geom_hline(yintercept = 0) +
  theme(strip.background = element_blank(),
        legend.position="right",
        axis.text.y = element_text(size=10, hjust = 1),
        axis.text.x = element_text(size=12),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(color=FALSE, shape=FALSE)


ggsave(pPAR_laz, file=paste0(here::here(), "/figures/risk-factor/fig-laz-PAR.png"), height=10, width=8)
ggsave(pPAR_wlz, file=paste0(here::here(), "/figures/risk-factor/fig-wlz-PAR.png"), height=10, width=8)



saveRDS(list(pPAR_laz, pPAR_wlz), file=paste0(here::here(), "/results/rf results/rf_Zpar_plot_objects.RDS"))


pPAR_wlz2 <-  ggplot(plotdf_wlz, aes(x=RFlabel_ref)) + 
  geom_point(aes(y=-PAR), color=main_color, size = 4) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2), color=main_color) +
  coord_flip(ylim=c(-0.05, 0.3)) +
  labs(x = "Exposure", y = "Attributable difference in WLZ") +
  geom_hline(yintercept = 0) +
  theme(strip.background = element_blank(),
        legend.position="right",
        axis.text.y = element_text(size=10, hjust = 1),
        axis.text.x = element_text(size=12),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(color=FALSE, shape=FALSE)




ggsave(pPAR_wlz2, file=paste0(here::here(), "/figures/risk-factor/fig-wlz-PAR_presentation.png"), height=6, width=8)


#----------------------------------------------------------
# Plot margin tables
#----------------------------------------------------------

#Create data underlying LAZ side table
mtab_df_laz <- plotdf_laz %>% arrange(PAR) %>%
  mutate(perc_ref= round((1-ref_prev)*100)) %>%
  subset(., select = c(n, perc_ref))

# add comma to N (aka print 23,045 instead of 23045)
mtab_df_laz$n = format(mtab_df_laz$n ,big.mark=",", trim=TRUE)

#Use tableGrob to create a plot with the appearrence of a table
mtab_df_laz_tbl <- tableGrob(mtab_df_laz,
                             row = NULL,
                             cols = c("Total\nN", "% shifted\nto ref."),
                             theme = ttheme_minimal(base_size = 9, padding = unit(c(0, 0), "mm")))

mtab_df_laz_tbl$heights <- unit(c(0.055, rep(0.0275, nrow(mtab_df_laz_tbl) - 1)), "npc")
mtab_df_laz_tbl$widths <- unit(c(0.25,0.35), "npc")
mtab_df_laz_tbl <- gtable_add_grob(mtab_df_laz_tbl,
                                   grobs = segmentsGrob( # line across the bottom
                                     x0 = unit(0,"npc"),
                                     y0 = unit(0,"npc"),
                                     x1 = unit(1,"npc"),
                                     y1 = unit(0,"npc"),
                                     gp = gpar(lwd = 2.0)),
                                   t = 1, b = 1, l = 1, r = 2)

#grid.arrange(mtab_df_laz_tbl)



#Repeat for WLZ
mtab_df_wlz <- plotdf_wlz %>% arrange(PAR) %>%
  mutate(perc_ref= round((1-ref_prev)*100)) %>%
  subset(., select = c(n, perc_ref))

mtab_df_wlz$n = format(mtab_df_wlz$n ,big.mark=",", trim=TRUE)

# mytheme <- gridExtra::ttheme_minimal(
#   base_size = 9, padding = unit(c(0, 0), "mm"),
#   core = list(padding=unit(c(0, 4), "mm"))
# )

mtab_df_wlz_tbl <- tableGrob(mtab_df_wlz, 
                             rows = NULL,
                             cols = c("Total\nN", "% shifted\nto ref."),
                             theme = ttheme_minimal(base_size = 9, padding = unit(c(0, 0), "mm")))


mtab_df_wlz_tbl$heights <- unit(c(0.055, rep(0.03075, nrow(mtab_df_wlz_tbl) - 1)), "npc")
#mtab_df_wlz_tbl$widths <- unit(rep(0.25, ncol(mtab_df_wlz_tbl)), "npc")
mtab_df_wlz_tbl$widths <- unit(c(0.25,0.35), "npc")

mtab_df_wlz_tbl <- gtable_add_grob(mtab_df_wlz_tbl,
                                   grobs = segmentsGrob( # line across the bottom
                                     x0 = unit(0,"npc"),
                                     y0 = unit(0,"npc"),
                                     x1 = unit(1,"npc"),
                                     y1 = unit(0,"npc"),
                                     gp = gpar(lwd = 2.0)),
                                   t = 1, b = 1, l = 1, r = 2)

#save the plots seperately 
saveRDS(list(mtab_df_laz_tbl, mtab_df_wlz_tbl), file=paste0(here::here(), "/results/rf results/rf_Zpar_margin_plot_objects.RDS"))



