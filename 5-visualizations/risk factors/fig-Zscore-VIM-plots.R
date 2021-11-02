rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)


# Load and process data
vim <- readRDS(paste0(res_dir, "rf results/longbow results/opttx_vim_results.RDS")) %>% 
  filter(type=="PAR", agecat=="24 months",!is.na(estimate)) #%>%
  # mutate(adjusted = adjustment_set!="unadjusted" , 1, 0) %>% filter(adjusted == 1)

pool.Zpar <- function(d){
  nstudies <- d %>% summarize(N=n())
  
  fit<-NULL
  try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="REML", measure="GEN"))
  if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="ML", measure="GEN"))}
  if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="DL", measure="GEN"))}
  if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="HE", measure="GEN"))}
  
  if(is.null(fit)){
    est<-data.frame(VIM=NA, CI1=NA,  CI2=NA)
  }else{
    est<-data.frame(fit$b, fit$ci.lb, fit$ci.ub)
    colnames(est)<-c("VIM","CI1","CI2")    
  }
  est$Nstudies <- nstudies$N
  rownames(est) <- NULL
  return(est)
}

RMAest <- vim %>%
  group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.Zpar(.)) %>% as.data.frame()

df <- RMA_clean(RMAest, outcome="continuous")

df$RFlabel[df$RFlabel=="Gestational age at birth"] <- "Gestational age"

  
df <- df %>% subset(., select = c(outcome_variable, intervention_variable, VIM, 
                                      CI1, CI2, RFlabel, RFtype, Nstudies)) %>%
  filter(!is.na(VIM)) %>% mutate(measure="VIM")



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


plotdf <- dpool %>%
  mutate(
    RFgroup = case_when(RFtype %in% c("Household","SES","WASH", "Time") ~ "Household & Environmental Characteristics",
                        RFtype %in% c("Parent background","Parent anthro") ~ "Parental Characteristics",
                        RFtype %in% c("Postnatal child health", "Breastfeeding") ~ "Postnatal Child Characteristics",
                        RFtype==RFtype ~ "At-birth child characteristics"),
    sig=ifelse((CI1<0 & CI2<0) | (CI1>0 & CI2>0), 1, 0),
    est_lab=paste0(sprintf("%0.2f", -VIM)," (",sprintf("%0.2f", -CI2),", ",sprintf("%0.2f", -CI1),")"),
    # perc_ref= round((1-ref_prev)*100),
    Nstudies = format(Nstudies,big.mark=",", trim=TRUE),
    # n= paste0(n, " (",perc_ref,"%)"),
    # est_lab=paste0(n,"   ",est_lab)
  ) #,

# est_lab_format="N (% shifted)   VIM (95% CI)"
est_lab_format="N   VIM (95% CI)"

# adds a blank line to row to print column headers
plotdf <- bind_rows(
  data.frame(
    outcome_variable="LAZ",
    RFlabel="",
    # RFlabel_ref="",
    RFgroup="At-birth child characteristics",
    est_lab_title=est_lab_format,
    title=1
  ),
  data.frame(
    outcome_variable="WLZ",
    # RFlabel_ref="",
    RFlabel="",
    RFgroup="At-birth child characteristics",
    est_lab_title=est_lab_format,
    title=1
  ),
  plotdf %>% mutate(title=0)
)


plotdf <- plotdf %>% mutate(RFgroup = factor(RFgroup, levels = (c("At-birth child characteristics", "Postnatal Child Characteristics",  
                                                                  "Parental Characteristics", "Household & Environmental Characteristics"))))

plotdf <- plotdf %>% arrange(outcome_variable, RFgroup, title, -VIM)
plotdf <- plotdf %>% arrange(outcome_variable, -VIM) 
rflevels = unique(plotdf$RFlabel) # rflevels = unique(plotdf$RFlabel_ref)

plotdf$RFlabel=factor(plotdf$RFlabel, levels=rflevels)
# plotdf$RFlabel_ref=factor(plotdf$RFlabel_ref, levels=rflevels)



pVIM_laz <- ggplot(plotdf %>% filter(outcome_variable=="LAZ"), aes(x=RFlabel, group=RFgroup, color=RFgroup)) + 
  geom_point(aes(y=-VIM),  size = 1.5) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2)) +
  geom_text(aes(label=est_lab), y=-0.21, color="grey20", size=1.25) +
  geom_text(aes(label=est_lab_title), y=-0.21, color="black", size=1.5,fontface = "bold") +
  # geom_text(label="VIM (95% CI)", y=-0.15, x=4, color="grey20", size=3.25,  face="bold") +
  # geom_text(label="N (% shifted) PIE (95% CI)"
  geom_text(aes(label=Nstudies), y=.6, color="grey20", size=3.25) +
  coord_flip(ylim=c(-0.3, 0.48)) +
  labs(x = NULL,
       y = "Adjusted population intervention effect, difference in Z-score") +
  geom_hline(yintercept = 0) +
  scale_y_continuous(breaks = c(-0.2,-0.1,0,0.1,0.2,0.3,0.4, 0.5), labels=c("","","0","0.1","0.2","0.3","0.4","0.5")) +
  #scale_x_discrete(expand = expansion(add  = c(.5, 1.5))) +
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
  #facet_grid(RFgroup~.,  scales="free_y", space="free_y")
  #facet_wrap(~RFgroup,  scales="free_y", ncol=1)
  ggforce::facet_col(facets = vars(RFgroup), 
                     scales = "free_y", 
                     space = "free") 
pVIM_laz



#need to add blank spaces or add early wasting


pVIM_wlz <- ggplot(plotdf %>% filter(outcome_variable=="WLZ"), aes(x=RFlabel, group=RFgroup, color=RFgroup)) + 
  geom_point(aes(y=-VIM),  size = 1.5) +
  geom_linerange(aes(ymin=-CI1, ymax=-CI2)) +
  # geom_text(aes(label=est_lab), y=-0.16, color="grey20", size=1.25) +
  # geom_text(aes(label=est_lab_title), y=-0.16, color="black", size=1.5, fontface = "bold") +
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
pVIM_wlz




fig2 = plot_grid(pVIM_laz, pVIM_wlz, ncol = 2, rel_widths = c(2, 1))

#To do:
#Fix x-axis label position with this:
#https://stackoverflow.com/questions/33114380/centered-x-axis-label-for-muliplot-using-cowplot-package

# #/data/KI/ki-manuscript-output/figures/manuscript-figure-composites/risk-factor/
# ggsave(fig2, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2.png"), width=16, height=8)
# ggsave(fig2, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2_alt.png"), width=11, height=8)
# ggsave(fig2, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig2_alt.png"), width=183, height=183/2, units = c("mm"))
