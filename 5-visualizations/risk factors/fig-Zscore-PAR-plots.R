


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)





#Load data
par <- readRDS(paste0(BV_dir,"/results/rf results/pooled_Zscore_PAR_results.rds"))

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
  mutate(RFlabel_ref = paste0(RFlabel," shifted to ", intervention_level))

#Get top 10 variables for each
par %>% group_by(outcome_variable) %>% arrange(PAR) %>% slice(1:10) %>% select(outcome_variable, intervention_variable, PAR)
par %>% group_by(outcome_variable) %>% arrange(PAR) %>% slice(1:10) %>% select(intervention_variable)





#Bold the intervention variable
# https://stackoverflow.com/questions/37758050/ggplot-displaying-expression-in-x-axis
# 
#  as.expression(bold(par$RFlabel[1])~' shifted to '~bold(par$intervention_level[1]))
#  as.expression(bquote(bold(par$RFlabel[1])))
#  parse(text= paste("bold(par$RFlabel[", 1:7, "])", sep="") ) 
 
 
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
# Plot PAR - combined LAZ and WLZ
#----------------------------------------------------------
plotdf_laz <- dpool %>% filter(outcome_variable=="LAZ") %>%
  arrange(-PAR) 
rflevels = unique(plotdf_laz$RFlabel_ref)
plotdf_laz$RFlabel_ref=factor(plotdf_laz$RFlabel_ref, levels=rflevels)

plotdf_wlz <- dpool %>% filter(outcome_variable=="WLZ") %>% 
  arrange(-PAR)
rflevels = unique(plotdf_wlz$RFlabel_ref)
plotdf_wlz$RFlabel_ref=factor(plotdf_wlz$RFlabel_ref, levels=rflevels)

plotdf <- dpool %>% arrange(outcome_variable)
plotdf <- plotdf %>% arrange(outcome_variable, -PAR) 
rflevels = unique(plotdf$RFlabel_ref)
plotdf$RFlabel_ref=factor(plotdf$RFlabel_ref, levels=rflevels)

pPAR <- ggplot(plotdf, aes(x=RFlabel_ref)) + 
  geom_point(aes(y=-PAR), color=main_color, size = 4) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2), color=main_color) +
  coord_flip(ylim=c(-0.2, 0.55)) +
  labs(x = "Exposure",
       y = "Attributable differences") +
  geom_hline(yintercept = 0) +
  theme(strip.background = element_blank(),
        legend.position="right",
        axis.text.y = element_text(size=10, hjust = 1),
        axis.text.x = element_text(size=12),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(color=FALSE, shape=FALSE) + 
  facet_wrap(~outcome_variable)

pPAR

ggsave(pPAR, file=paste0(BV_dir, "/figures/risk-factor/fig-PAR-combined.png"), height=10, width=8)
saveRDS(pPAR, file=paste0(BV_dir, "/results/rf results/rf_Zpar_plot_objects.RDS"))




#----------------------------------------------------------
# Plot margin tables
#----------------------------------------------------------

#Create side table
mtab_df <- plotdf %>% arrange(outcome_variable, PAR) %>%
  mutate(intervention_variable = as.character(intervention_variable))

mtab_df <- mtab_df %>% ungroup %>%
  mutate(
    intervention_variable = factor(intervention_variable, levels=unique(intervention_variable)),
    perc_ref= round((1-ref_prev)*100),
    n = format(n ,big.mark=",", trim=TRUE),
    n= paste0(n, " (",perc_ref,"%)")) %>%
  subset(., select = c(outcome_variable, intervention_variable, n)) 

#make wide-format
mtab_df <- mtab_df %>% 
  spread(outcome_variable, n) %>%
  arrange(intervention_variable)
mtab_df[is.na(mtab_df)] <- ""
mtab_df <- mtab_df %>% 
  subset(., select = -c(intervention_variable )) 


#Use tableGrob to create a plot with the appearrence of a table
mtab_df_tbl <- tableGrob(mtab_df,
                             row = NULL,
                             cols = c("LAZ N\n(% shifted)", "WLZ N\n(% shifted)"),
                             theme = ttheme_minimal(base_size = 9, padding = unit(c(0, 0), "mm")))

mtab_df_tbl$heights <- unit(c(0.055, rep(0.0275, nrow(mtab_df_tbl) - 1)), "npc")
mtab_df_tbl$widths <- unit(c(0.25,0.35), "npc")
mtab_df_tbl <- gtable_add_grob(mtab_df_tbl,
                                   grobs = segmentsGrob( # line across the bottom
                                     x0 = unit(0,"npc"),
                                     y0 = unit(0,"npc"),
                                     x1 = unit(1,"npc"),
                                     y1 = unit(0,"npc"),
                                     gp = gpar(lwd = 2.0)),
                                   t = 1, b = 1, l = 1, r = 2)



#save the plots seperately 
saveRDS(mtab_df_tbl, file=paste0(BV_dir, "/results/rf results/rf_Zpar_margin_plot_objects.RDS"))





# 
# #----------------------------------------------------------
# # Plot margin tables
# #----------------------------------------------------------
# 
# #Create data underlying LAZ side table
# mtab_df_laz <- plotdf_laz %>% arrange(PAR) %>%
#   mutate(perc_ref= round((1-ref_prev)*100)) %>%
#   subset(., select = c(n, perc_ref))
# 
# # add comma to N (aka print 23,045 instead of 23045)
# mtab_df_laz$n = format(mtab_df_laz$n ,big.mark=",", trim=TRUE)
# 
# #Use tableGrob to create a plot with the appearrence of a table
# mtab_df_laz_tbl <- tableGrob(mtab_df_laz,
#                              row = NULL,
#                              cols = c("Total\nN", "% shifted\nto ref."),
#                              theme = ttheme_minimal(base_size = 9, padding = unit(c(0, 0), "mm")))
# 
# mtab_df_laz_tbl$heights <- unit(c(0.055, rep(0.0275, nrow(mtab_df_laz_tbl) - 1)), "npc")
# mtab_df_laz_tbl$widths <- unit(c(0.25,0.35), "npc")
# mtab_df_laz_tbl <- gtable_add_grob(mtab_df_laz_tbl,
#                                    grobs = segmentsGrob( # line across the bottom
#                                      x0 = unit(0,"npc"),
#                                      y0 = unit(0,"npc"),
#                                      x1 = unit(1,"npc"),
#                                      y1 = unit(0,"npc"),
#                                      gp = gpar(lwd = 2.0)),
#                                    t = 1, b = 1, l = 1, r = 2)
# 
# #grid.arrange(mtab_df_laz_tbl)
# 
# 
# 
# #Repeat for WLZ
# mtab_df_wlz <- plotdf_wlz %>% arrange(PAR) %>%
#   mutate(perc_ref= round((1-ref_prev)*100)) %>%
#   subset(., select = c(n, perc_ref))
# 
# mtab_df_wlz$n = format(mtab_df_wlz$n ,big.mark=",", trim=TRUE)
# 
# # mytheme <- gridExtra::ttheme_minimal(
# #   base_size = 9, padding = unit(c(0, 0), "mm"),
# #   core = list(padding=unit(c(0, 4), "mm"))
# # )
# 
# mtab_df_wlz_tbl <- tableGrob(mtab_df_wlz, 
#                              rows = NULL,
#                              cols = c("Total\nN", "% shifted\nto ref."),
#                              theme = ttheme_minimal(base_size = 9, padding = unit(c(0, 0), "mm")))
# 
# 
# mtab_df_wlz_tbl$heights <- unit(c(0.055, rep(0.03075, nrow(mtab_df_wlz_tbl) - 1)), "npc")
# #mtab_df_wlz_tbl$widths <- unit(rep(0.25, ncol(mtab_df_wlz_tbl)), "npc")
# mtab_df_wlz_tbl$widths <- unit(c(0.25,0.35), "npc")
# 
# mtab_df_wlz_tbl <- gtable_add_grob(mtab_df_wlz_tbl,
#                                    grobs = segmentsGrob( # line across the bottom
#                                      x0 = unit(0,"npc"),
#                                      y0 = unit(0,"npc"),
#                                      x1 = unit(1,"npc"),
#                                      y1 = unit(0,"npc"),
#                                      gp = gpar(lwd = 2.0)),
#                                    t = 1, b = 1, l = 1, r = 2)
# 
# #save the plots seperately 
# saveRDS(list(mtab_df_laz_tbl, mtab_df_wlz_tbl), file=paste0(BV_dir, "/results/rf results/rf_Zpar_margin_plot_objects.RDS"))
# 


