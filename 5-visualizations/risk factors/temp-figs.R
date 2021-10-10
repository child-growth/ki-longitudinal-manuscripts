rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)
library(gtable)


#Load data
# par <- readRDS(paste0(BV_dir,"/results/rf results/pooled_Zscore_PAR_results.rds"))

vim <- readRDS(paste0(res_dir, "rf results/longbow results/opttx_vim_results.RDS")) %>% 
  filter(type=="PAR", agecat=="24 months",!is.na(estimate)) %>%
  mutate(adjusted = adjustment_set!="unadjusted" , 1, 0) %>% filter(adjusted == 1)
vim <- RMA_clean(vim, outcome="continuous")

unique(vim$intervention_variable)
unique(vim$outcome_variable)
unique(vim$intervention_level)

# unique(par$intervention_level)
# unique(par$intervention_variable)

vim$RFlabel[vim$RFlabel=="Gestational age at birth"] <- "Gestational age"

# vim <- vim %>% mutate(RFlabel_ref = paste0(RFlabel, " shifted to ", intervention_level))


df <- vim %>% subset(., select = c(outcome_variable, intervention_variable, estimate, ci_lower, ci_upper, RFlabel, RFtype)) %>%
  filter(!is.na(estimate)) %>% mutate(measure="estimate")


# df <- par %>% subset(., select = c(outcome_variable, intervention_variable, PAR, CI1, CI2, RFlabel, RFlabel_ref,  RFtype, n_cell, n)) %>% 
#   filter(!is.na(PAR)) %>% mutate(measure="PAR")
# df[df$intervention_variable=="hhwealth_quart",]
# df[is.na(df$n),]


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
df$outcome_variable <- gsub("haz", "LAZ", df$outcome_variable)
df$outcome_variable <- gsub("whz", "WLZ", df$outcome_variable)


dpool <- df %>% ungroup() %>%
  filter(outcome_variable %in% c("LAZ", "WLZ"),
         !is.na(intervention_variable)) %>%
  # mutate(ref_prev=n_cell/n) %>%
  group_by(intervention_variable, 
           outcome_variable) 

#----------------------------------------------------------
# Plot PAR - combined LAZ and WLZ
#----------------------------------------------------------
# unique(dpool$RFtype)
plotdf <- dpool %>%
  mutate(
    # RFgroup = case_when(RFtype %in% c("Household","SES","WASH", "Time") ~ "Household & Environmental Characteristics",
    #                     RFtype %in% c("Parent background","Parent anthro" ) ~ "Parental Characteristics",
    #                     RFtype %in% c("Postnatal child health", "Breastfeeding") ~ "Postnatal child characteristics",
    #                     RFtype==RFtype ~ "At-birth child characteristics"),
    sig=ifelse((ci_lower<0 & ci_upper<0) | (ci_lower>0 & ci_upper>0), 1, 0),
    est_lab=paste0(sprintf("%0.2f", -estimate)," (",sprintf("%0.2f", -ci_upper),", ",sprintf("%0.2f", -ci_lower),")"),
    # perc_ref= round((1-ref_prev)*100),
    # n = format(n ,big.mark=",", trim=TRUE),
    # n= paste0(n, " (",perc_ref,"%)"),
    # est_lab=paste0(n,"   ",est_lab)
  ) #,
#est_lab=ifelse(sig==1, est_lab, "") already commented

# est_lab_format="N (% shifted)   PIE (95% CI)"
est_lab_format="VIM (95% CI)"

# adds a blank line to row to print column headers
# plotdf <- bind_rows(
#   data.frame(
#     outcome_variable="LAZ",             
#     RFlabel_ref="",               
#     RFgroup="At-birth child characteristics",
#     est_lab_title=est_lab_format,
#     title=1
#   ),
#   data.frame(
#     outcome_variable="WLZ",             
#     RFlabel_ref="",               
#     RFgroup="At-birth child characteristics",
#     est_lab_title=est_lab_format,
#     title=1
#   ),
#   data.frame(
#     outcome_variable="waz",             
#     RFlabel_ref="",               
#     RFgroup="At-birth child characteristics",
#     est_lab_title=est_lab_format,
#     title=1
#   ),
#   plotdf %>% mutate(title=0)
# )


# plotdf <- plotdf %>% mutate(RFgroup = factor(RFgroup, levels = (c("At-birth child characteristics", "Postnatal child characteristics",  
                                                                  # "Parental Characteristics", "Household & Environmental Characteristics"))))

# plotdf <- plotdf %>% arrange(outcome_variable, RFgroup, title, -PAR) 
plotdf <- plotdf %>% arrange(outcome_variable, -estimate) 
rflevels = unique(plotdf$RFlabel_ref)
# plotdf$RFlabel_ref=factor(plotdf$RFlabel_ref, levels=rflevels)

pPAR_laz <- ggplot(plotdf %>% filter(outcome_variable=="LAZ")) + 
  geom_point(aes(y=-estimate),  size = 4) +
  geom_linerange(aes(ymin=-ci_lower, ymax=-ci_upper)) +
  geom_text(aes(label=est_lab), y=-0.21, color="grey20", size=3.25) +
  # geom_text(aes(label=est_lab_title), y=-0.21, color="black", size=3.5, fontface = "bold") +
  coord_flip(ylim=c(-0.3, 0.48)) +
  labs(x = NULL,
       y = "Adjusted population intervention effect, difference in Z-score") +
  geom_hline(yintercept = 0) +
  scale_y_continuous(breaks = c(-0.2,-0.1,0,0.1,0.2,0.3,0.4, 0.5), labels=c("","","0","0.1","0.2","0.3","0.4","0.5")) +
  #scale_x_discrete(expand = expansion(add  = c(.5, 1.5))) +
  scale_color_manual(values = cbbPalette[c(6,3,2,4)], guide = guide_legend(reverse = TRUE) ) +
  theme(strip.background = element_blank(),
        strip.placement = "top",
        strip.text = element_text(hjust = 0, size=12,  face="bold"),
        axis.text.y = element_text(size=10, hjust = 1),
        axis.text.x = element_text(size=12),
        axis.title.x = element_text(hjust = 1),
        plot.title = element_text(hjust = 0),
        axis.ticks.x = element_line(size = c(0,0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(shape=FALSE) + 
  ggtitle("Length-for-age Z-score")
  # ggforce::facet_col(facets = vars(RFgroup), 
  #                    scales = "free_y", 
  #                    space = "free") 
pPAR_laz

# pPAR_laz <- ggplot(plotdf %>% filter(outcome_variable=="LAZ"), aes(x=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
#   geom_point(aes(y=-PAR),  size = 4) +
#   geom_linerange(aes(ymin=-CI1, ymax=-CI2)) +
#   geom_text(aes(label=est_lab), y=-0.21, color="grey20", size=3.25) +
#   geom_text(aes(label=est_lab_title), y=-0.21, color="black", size=3.5, fontface = "bold") +
#   #geom_text(label="N (% shifted) PIE (95% CI)", y=-0.15, x=4, color="grey20", size=3.25,  face="bold") +
#   #geom_text(aes(label=n), y=.6, color="grey20", size=3.25) +
#   coord_flip(ylim=c(-0.3, 0.48)) +
#   labs(x = NULL,
#        y = "Adjusted population intervention effect, difference in Z-score") +
#   geom_hline(yintercept = 0) +
#   scale_y_continuous(breaks = c(-0.2,-0.1,0,0.1,0.2,0.3,0.4, 0.5), labels=c("","","0","0.1","0.2","0.3","0.4","0.5")) +
#   #scale_x_discrete(expand = expansion(add  = c(.5, 1.5))) +
#   scale_color_manual(values = cbbPalette[c(6,3,2,4)], guide = guide_legend(reverse = TRUE) ) +
#   theme(strip.background = element_blank(),
#         strip.placement = "top",
#         strip.text = element_text(hjust = 0, size=12,  face="bold"),
#         axis.text.y = element_text(size=10, hjust = 1),
#         axis.text.x = element_text(size=12),
#         axis.title.x = element_text(hjust = 1),
#         plot.title = element_text(hjust = 0),
#         axis.ticks.x = element_line(size = c(0,0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)),
#         plot.margin = unit(c(0, 0, 0, 0), "cm")) +
#   guides(shape=FALSE) + 
#   ggtitle("Length-for-age Z-score") +
#   #facet_grid(RFgroup~.,  scales="free_y", space="free_y")
#   #facet_wrap(~RFgroup,  scales="free_y", ncol=1)
#   ggforce::facet_col(facets = vars(RFgroup), 
#                      scales = "free_y", 
#                      space = "free") 
# pPAR_laz


#need to add blank spaces or add early wasting

pPAR_wlz <- ggplot(plotdf %>% filter(outcome_variable=="WLZ"), aes(x=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
  geom_point(aes(y=-PAR),  size = 4) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2)) +
  geom_text(aes(label=est_lab), y=-0.16, color="grey20", size=3.25) +
  geom_text(aes(label=est_lab_title), y=-0.16, color="black", size=3.5, fontface = "bold") +
  #coord_flip(ylim=c(-0.185,0.3)) +
  coord_flip(ylim=c(-0.25,0.3)) +
  labs(x = NULL,
       y = "") +
  geom_hline(yintercept = 0) +
  scale_y_continuous(breaks = c(-0.3,-0.2,-0.1,0,0.1,0.2,0.3,0.4), labels=c("","","","0","0.1","0.2","0.3","0.4")) +
  scale_color_manual(values = cbbPalette[c(6,3,2,4)], guide = guide_legend(reverse = TRUE) ) +
  theme(strip.background = element_blank(),
        strip.placement = "top",
        strip.text = element_text(hjust = 0, size=12,  face="bold", color="white"),
        axis.ticks.y = element_blank(),
        axis.text.y = element_blank(),
        axis.text.x = element_text(size=12),
        plot.title = element_text(hjust = 0),
        axis.ticks.x = element_line(size = c(0,0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(shape=FALSE) + 
  ggtitle("Weight-for-length Z-score") +
  #facet_grid(RFgroup~.,  scales="free_y")
  ggforce::facet_col(facets = vars(RFgroup), 
                     scales = "free_y", 
                     space = "free") 
pPAR_wlz




fig2 = plot_grid(pPAR_laz, pPAR_wlz, ncol = 2, rel_widths = c(2, 1))

#To do:
#Fix x-axis label position with this:
#https://stackoverflow.com/questions/33114380/centered-x-axis-label-for-muliplot-using-cowplot-package

# #/data/KI/ki-manuscript-output/figures/manuscript-figure-composites/risk-factor/
# ggsave(fig2, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2.png"), width=16, height=8)
# ggsave(fig2, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2_alt.png"), width=11, height=8)
# ggsave(fig2, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2_alt.png"), width=183, height=183/2, units = c("mm"))
