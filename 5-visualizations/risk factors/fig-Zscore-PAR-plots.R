


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)





#Load data
par <- readRDS(paste0(BV_dir,"/results/rf results/pooled_Zscore_PAR_results.rds"))
unique(par$intervention_variable)
unique(par$outcome_variable)

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
    RFgroup = factor(RFgroup, levels = (c("At-birth child characteristics", "Postnatal child characteristics",  
                                             "Parental Characteristics", "Household & Environmental Characteristics"))),
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
    
plotdf <- plotdf %>% arrange(outcome_variable, RFgroup, title, -PAR) 
rflevels = unique(plotdf$RFlabel_ref)
plotdf$RFlabel_ref=factor(plotdf$RFlabel_ref, levels=rflevels)



# pPAR <- ggplot(plotdf, aes(x=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
#   geom_point(aes(y=-PAR),  size = 4) +
#   geom_linerange(aes(ymin=-CI1, ymax=-CI2)) +
#   geom_text(aes(label=est_lab), y=-0.15, color="grey20", size=3.25) +
#   #coord_flip(ylim=c(-0.2, 0.55)) +
#   coord_flip() +
#   labs(x = "Exposure",
#        y = "Attributable differences") +
#   geom_hline(yintercept = 0) +
#   #scale_y_continuous(breaks = c(-0.2,-0.1,0,0.1,0.2,0.3,0.4)) +
#   scale_color_manual(values = cbbPalette[c(2,3,4,6)], guide = guide_legend(reverse = TRUE) ) +
#   theme(strip.background = element_blank(),
#         #legend.position=c(0.9,0.2),
#         strip.text = element_text(hjust = 0, size=14,  face="bold"),
#         #strip.text.x.left = element_text(angle = 0, vjust = 1),
#         axis.text.y = element_text(size=10, hjust = 1),
#         axis.text.x = element_text(size=12),
#         plot.margin = unit(c(0, 0, 0, 0), "cm")) +
#   guides(shape=FALSE) + 
#   facet_wrap(~outcome_variable)
# 
# pPAR
# 
# 
# 
# # ggplot(plotdf, aes(y=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
# #   geom_text(aes(label=est_lab), x=-0.15, color="grey20", size=3.25) +
# #   geom_point(aes(x=-PAR),  size = 4) +
# #   geom_linerange(aes(xmin=-CI1, xmax=-CI2)) +
# #   facet_grid(RFgroup ~ outcome_variable, scales = "free", space = "fixed", switch="y") +
# #   scale_x_continuous( expand = c( 0.05 , 0.05 ) ) +
# #   labs(y = "Exposure",
# #        x = "Population Impact Effect") +
# #   geom_vline(xintercept = 0) +
# #   #scale_y_continuous(breaks = c(-0.2,-0.1,0,0.1,0.2,0.3,0.4)) +
# #   scale_color_manual(values = cbbPalette[c(6,5,3,4,2)], guide = guide_legend(reverse = TRUE) ) +
# #   theme(strip.background = element_blank(),
# #         #legend.position=c(0.9,0.2),
# #         strip.placement = "outside",
# #         strip.text = element_text(hjust = 0, size=14,  face="bold"),
# #         #strip.text.x.left = element_text(angle = 0, vjust = 1),
# #         axis.text.y = element_text(size=10, hjust = 1),
# #         axis.text.x = element_text(size=12),
# #         #plot.margin = unit(c(0, 0, 0, 0), "cm")
# #         ) +
# #   guides(shape=FALSE) 
# 
# 
# 
# ggsave(pPAR, file=paste0(BV_dir, "/figures/risk-factor/fig-PAR-combined.png"), height=10, width=8)
# saveRDS(pPAR, file=paste0(BV_dir, "/results/rf results/rf_Zpar_plot_objects.RDS"))
# 



# #----------------------------------------------------------
# # Plot margin tables
# #----------------------------------------------------------
# 
# #Create side table
# mtab_df <- plotdf %>% arrange(outcome_variable, PAR) %>%
#   mutate(intervention_variable = as.character(intervention_variable))
# 
# mtab_df <- mtab_df %>% ungroup %>%
#   mutate(
#     intervention_variable = factor(intervention_variable, levels=unique(intervention_variable)),
#     perc_ref= round((1-ref_prev)*100),
#     n = format(n ,big.mark=",", trim=TRUE),
#     n= paste0(n, " (",perc_ref,"%)")) %>%
#   subset(., select = c(outcome_variable, intervention_variable, n)) 
# 
# #make wide-format
# mtab_df <- mtab_df %>% 
#   spread(outcome_variable, n) %>%
#   arrange(intervention_variable)
# mtab_df[is.na(mtab_df)] <- ""
# mtab_df <- mtab_df %>% 
#   subset(., select = -c(intervention_variable )) 
# 
# 
# #Use tableGrob to create a plot with the appearrence of a table
# mtab_df_tbl <- tableGrob(mtab_df,
#                              row = NULL,
#                              cols = c("LAZ N\n(% shifted)", "WLZ N\n(% shifted)"),
#                              theme = ttheme_minimal(base_size = 9,
#                                                     plot.margin = unit(c(0, 0, 0, 0), "cm"),
#                                                     padding = unit(c(0, 0), "mm")))
# 
# mtab_df_tbl$heights <- unit(c(0.055, rep(0.0275, nrow(mtab_df_tbl) - 1)), "npc")
# mtab_df_tbl$widths <- unit(c(0.25,0.35), "npc")
# mtab_df_tbl <- gtable_add_grob(mtab_df_tbl,
#                                    grobs = segmentsGrob( # line across the bottom
#                                      x0 = unit(0,"npc"),
#                                      y0 = unit(0,"npc"),
#                                      x1 = unit(1,"npc"),
#                                      y1 = unit(0,"npc"),
#                                      gp = gpar(lwd = 2.0)),
#                                    t = 1, b = 1, l = 1, r = 2)
# 
# 
# 
# #save the plots seperately 
# saveRDS(mtab_df_tbl, file=paste0(BV_dir, "/results/rf results/rf_Zpar_margin_plot_objects.RDS"))


pPAR_laz <- ggplot(plotdf %>% filter(outcome_variable=="LAZ"), aes(x=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
  geom_point(aes(y=-PAR),  size = 4) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2)) +
  geom_text(aes(label=est_lab), y=-0.21, color="grey20", size=3.25) +
  geom_text(aes(label=est_lab_title), y=-0.21, color="black", size=3.5, fontface = "bold") +
  #geom_text(label="N (% shifted) PIE (95% CI)", y=-0.15, x=4, color="grey20", size=3.25,  face="bold") +
  #geom_text(aes(label=n), y=.6, color="grey20", size=3.25) +
  coord_flip(ylim=c(-0.3, 0.48)) +
  labs(x = NULL,
       y = "Population intervention effect, difference in z-score") +
  geom_hline(yintercept = 0) +
  scale_y_continuous(breaks = c(-0.2,-0.1,0,0.1,0.2,0.3,0.4, 0.5)) +
  #scale_x_discrete(expand = expansion(add  = c(.5, 1.5))) +
  scale_color_manual(values = cbbPalette[c(2,3,4,6)], guide = guide_legend(reverse = TRUE) ) +
  theme(strip.background = element_blank(),
        strip.placement = "top",
        strip.text = element_text(hjust = 0, size=12,  face="bold"),
        axis.text.y = element_text(size=10, hjust = 1),
        axis.text.x = element_text(size=12),
        axis.title.x = element_text(hjust = 1),
        plot.title = element_text(hjust = 0),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(shape=FALSE) + 
  ggtitle("Length-for-age Z-score") +
  #facet_grid(RFgroup~.,  scales="free_y", space="free_y")
  #facet_wrap(~RFgroup,  scales="free_y", ncol=1)
  ggforce::facet_col(facets = vars(RFgroup), 
                   scales = "free_y", 
                   space = "free") 
pPAR_laz


#need to add blank spaces or add early wasting

pPAR_wlz <- ggplot(plotdf %>% filter(outcome_variable=="WLZ"), aes(x=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
  geom_point(aes(y=-PAR),  size = 4) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2)) +
  geom_text(aes(label=est_lab), y=-0.125, color="grey20", size=3.25) +
  geom_text(aes(label=est_lab_title), y=-0.125, color="black", size=3.5, fontface = "bold") +
  coord_flip(ylim=c(-0.185,0.27)) +
  labs(x = NULL,
       y = "") +
  geom_hline(yintercept = 0) +
  scale_y_continuous(breaks = c(-0.2,-0.1,0,0.1,0.2,0.3,0.4)) +
  scale_color_manual(values = cbbPalette[c(2,3,4,6)], guide = guide_legend(reverse = TRUE) ) +
  theme(strip.background = element_blank(),
        strip.placement = "top",
        strip.text = element_text(hjust = 0, size=12,  face="bold", color="white"),
        axis.ticks.y = element_blank(),
        axis.text.y = element_blank(),
        axis.text.x = element_text(size=12),
        plot.title = element_text(hjust = 0),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(shape=FALSE) + 
  ggtitle("Weight-for-length Z-score") +
  #facet_grid(RFgroup~.,  scales="free_y")
  ggforce::facet_col(facets = vars(RFgroup), 
                     scales = "free_y", 
                     space = "free") 
pPAR_wlz



# blank <- grid.rect(gp=gpar(col="white"))
# pPar_plot_table = grid.arrange(mtab_df_tbl, blank, nrow = 2, heights = c(12, 0.1))
#pPar_f = grid.arrange(blank,pPAR,  nrow = 2, heights = c(0.6,12))

#fig2 = plot_grid(pPAR_laz, pPAR_wlz, mtab_df_tbl, ncol = 3, rel_widths = c(1.5, 1, 0.6))
fig2 = plot_grid(pPAR_laz, pPAR_wlz, ncol = 2, rel_widths = c(1.5, 1))
fig2
#To do:
#Fix x-axis label position with this:
#https://stackoverflow.com/questions/33114380/centered-x-axis-label-for-muliplot-using-cowplot-package

ggsave(fig2, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2.png"), width=16, height=8)
#/data/KI/ki-manuscript-output/figures/manuscript-figure-composites/risk-factor/


plotdf_waz <- plotdf %>% filter(outcome_variable=="waz") %>% droplevels()
plotdf_waz <- plotdf_waz %>% arrange(outcome_variable, RFgroup, -PAR) 
rflevels = unique(plotdf_waz$RFlabel_ref)
plotdf_waz$RFlabel_ref=factor(plotdf_waz$RFlabel_ref, levels=rflevels)

pPAR_waz <- ggplot(plotdf_waz, aes(x=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
  geom_point(aes(y=-PAR),  size = 4) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2)) +
  geom_text(aes(label=est_lab), y=-0.125, color="grey20", size=3.25) +
  geom_text(aes(label=est_lab_title), y=-0.125, color="black", size=3.5, fontface = "bold") +
  coord_flip(ylim=c(-0.185,0.552)) +
  labs(x = NULL,
       y = "") +
  geom_hline(yintercept = 0) +
  scale_y_continuous(breaks = c(-0.2,-0.1,0,0.1,0.2,0.3,0.4)) +
  scale_color_manual(values = cbbPalette[c(2,3,4,6)], guide = guide_legend(reverse = TRUE) ) +
  theme(strip.background = element_blank(),
        strip.placement = "top",
        strip.text = element_text(hjust = 0, size=12,  face="bold", color="white"),
        axis.text.x = element_text(size=12),
        plot.title = element_text(hjust = 0),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(shape=FALSE) + 
  ggtitle("Weight-for-age Z-score") +
  ggforce::facet_col(facets = vars(RFgroup), 
                     scales = "free_y", 
                     space = "free") 
pPAR_waz
ggsave(pPAR_waz, file=paste0(BV_dir, "/figures/risk-factor/fig-PAR-waz.png"), height=10, width=8)
