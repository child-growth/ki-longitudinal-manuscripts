




rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)
library(cowplot)



# Plot parameters
yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)

# Colors
color_vec = c("#7F7F7F", "#E377C2")
main_color <- "#287D8EFF"


#Load data
par <- readRDS(paste0(BV_dir,"/results/rf results/pooled_Zscore_PAR_results.rds"))
unique(par$intervention_variable)
unique(par$outcome_variable)

#par <- par %>% filter(!(intervention_variable %in% c("anywast06","enstunt","enwast","pers_wast","vagbrth","safeh20")))
par <- par %>% filter(!(intervention_variable %in% c("anywast06","enstunt","enwast","pers_wast","vagbrth")))

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



par <- par %>% filter( agecat %in% c("Birth","6 months","24 months"), region!="N.America & Europe", !is.na(PAR)) %>%
  mutate(RFlabel_ref = paste0(RFlabel," shifted to ", intervention_level))


df <- par %>% subset(., select = c(region, agecat, outcome_variable, intervention_variable, PAR, CI1, CI2, RFlabel, RFlabel_ref,  RFtype, n_cell, n)) %>% 
  filter(!is.na(PAR)) %>% mutate(measure="PAR")


saveRDS(df, file=paste0(here::here(),"/data/temp_plotdf_extended.RDS"))


df <- readRDS(paste0(here::here(),"/data/temp_plotdf_extended.RDS"))

#Temp: update color to monochrome:
cbbPalette <- rep("grey20",11)


#----------------------------------------------------------
# Clean up plot dataframe
#----------------------------------------------------------

table(df$outcome_variable)
df$outcome_variable <- gsub("haz", "LAZ", df$outcome_variable)
df$outcome_variable <- gsub("whz", "WLZ", df$outcome_variable)


dpool <- df %>% ungroup() %>%
  filter(outcome_variable %in% c("LAZ", "WLZ"),
         !is.na(intervention_variable)) %>%
  mutate(ref_prev=n_cell/n) %>%
  group_by(intervention_variable, 
           outcome_variable) 

#flip birth reference
dpool %>% filter(agecat=="Birth", intervention_variable=="parity", region=="Pooled")

dpool 

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
    n= paste0(n, " (",perc_ref,"%)")#,
    #est_lab=paste0(n,"   ",est_lab)
  ) 

#est_lab_format="N (% shifted)   PIE (95% CI)"
est_lab_format="PIE (95% CI)"

plotdf <- bind_rows(
  data.frame(agecat="Birth", region="Pooled", outcome_variable="LAZ", RFlabel_ref="", RFgroup="At-birth child characteristics", est_lab_title=est_lab_format, title=1),
  data.frame(agecat="Birth", region="Pooled", outcome_variable="WLZ", RFlabel_ref="", RFgroup="At-birth child characteristics", est_lab_title=est_lab_format, title=1),
  #data.frame(agecat="Birth", region="Pooled", outcome_variable="waz", RFlabel_ref="", RFgroup="At-birth child characteristics", est_lab_title=est_lab_format, title=1),
  data.frame(agecat="6 months", region="Pooled", outcome_variable="LAZ", RFlabel_ref="", RFgroup="At-birth child characteristics", est_lab_title=est_lab_format, title=1),
  data.frame(agecat="6 months", region="Pooled", outcome_variable="WLZ", RFlabel_ref="", RFgroup="At-birth child characteristics", est_lab_title=est_lab_format, title=1),
  #data.frame(agecat="6 months", region="Pooled", outcome_variable="waz", RFlabel_ref="", RFgroup="At-birth child characteristics", est_lab_title=est_lab_format, title=1),
  data.frame(agecat="24 months", region="Pooled", outcome_variable="LAZ", RFlabel_ref="", RFgroup="At-birth child characteristics", est_lab_title=est_lab_format, title=1),
  data.frame(agecat="24 months", region="Pooled", outcome_variable="WLZ", RFlabel_ref="", RFgroup="At-birth child characteristics", est_lab_title=est_lab_format, title=1),
  #data.frame(agecat="24 months", region="Pooled", outcome_variable="waz", RFlabel_ref="", RFgroup="At-birth child characteristics", est_lab_title=est_lab_format, title=1),
  
  data.frame(agecat="24 months", region="Africa", outcome_variable="LAZ", RFlabel_ref="", RFgroup="At-birth child characteristics", est_lab_title=est_lab_format, title=1),
  data.frame(agecat="24 months", region="Africa", outcome_variable="WLZ", RFlabel_ref="", RFgroup="At-birth child characteristics", est_lab_title=est_lab_format, title=1),
  #data.frame(agecat="24 months", region="Africa", outcome_variable="waz", RFlabel_ref="", RFgroup="At-birth child characteristics", est_lab_title=est_lab_format, title=1),
  data.frame(agecat="24 months", region="Latin America", outcome_variable="LAZ", RFlabel_ref="", RFgroup="At-birth child characteristics", est_lab_title=est_lab_format, title=1),
  data.frame(agecat="24 months", region="Latin America", outcome_variable="WLZ", RFlabel_ref="", RFgroup="At-birth child characteristics", est_lab_title=est_lab_format, title=1),
  #data.frame(agecat="24 months", region="Latin America", outcome_variable="waz", RFlabel_ref="", RFgroup="At-birth child characteristics", est_lab_title=est_lab_format, title=1),
  data.frame(agecat="24 months", region="South Asia", outcome_variable="LAZ", RFlabel_ref="", RFgroup="At-birth child characteristics", est_lab_title=est_lab_format, title=1),
  data.frame(agecat="24 months", region="South Asia", outcome_variable="WLZ", RFlabel_ref="", RFgroup="At-birth child characteristics", est_lab_title=est_lab_format, title=1),
  #data.frame(agecat="24 months", region="South Asia", outcome_variable="waz", RFlabel_ref="", RFgroup="At-birth child characteristics", est_lab_title=est_lab_format, title=1)
  plotdf %>% mutate(title=0)
)



plotdf <- plotdf %>% mutate(RFgroup = factor(RFgroup, levels = (c("At-birth child characteristics", "Postnatal child characteristics",  
                                                                  "Parental Characteristics", "Household & Environmental Characteristics"))))

plotdf <- plotdf %>% arrange(outcome_variable, RFgroup, agecat, region, title, -PAR) 
rflevels = unique(plotdf$RFlabel_ref)
plotdf$RFlabel_ref=factor(plotdf$RFlabel_ref, levels=rflevels)





plotdf_agestrat <- plotdf %>% filter(agecat %in% c("Birth","6 months","24 months"), region=="Pooled", outcome_variable %in% c("LAZ", "WLZ"), !is.na(PAR))  
plotdf_regionstrat <- plotdf %>% filter(agecat=="24 months", region!="Pooled", outcome_variable %in% c("LAZ", "WLZ"), !is.na(PAR))  


plot_ext_par <- function(d, outcome, agecat, region, text_pos=NULL, range=NULL, xaxis=F, xaxis_lab=NULL){
  
  xaxis_lab <- ifelse(xaxis,xaxis_lab,"")
  plot_title <- ifelse(region=="Pooled", agecat, region)
    
  d<- plotdf %>% filter(outcome_variable==!!(outcome), agecat==!!(agecat), region==!!(region))
  d <- d %>% arrange(outcome_variable, RFgroup, agecat, region, title, -PAR) 
  rflevels = unique(d$RFlabel_ref)
  d$RFlabel_ref=factor(d$RFlabel_ref, levels=rflevels)
  
  if(is.null(text_pos)){
    text_pos <- min(-d$CI2, na.rm=T)-0.05
  }
  if(is.null(range)){
    range <- c(min(-d$CI2, na.rm=T)-0.1, max(-d$CI1, na.rm=T))
  }
  
  p <- ggplot(d, aes(x=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
    geom_point(aes(y=-PAR),  size = 4) +
    geom_linerange(aes(ymin=-CI1, ymax=-CI2), alpha=0.8) +
    geom_text(aes(label=est_lab), y=text_pos, color="grey20", size=3.25) +
    geom_text(aes(label=est_lab_title), y=text_pos, color="black", size=3.5, fontface = "bold") +
    coord_flip(ylim=range) +
    labs(x = NULL,
         y = xaxis_lab) +
    geom_hline(yintercept = 0) +
    #scale_x_discrete(labels = function(x) stringr::str_wrap(x, width = 25)) +
    scale_y_continuous(breaks =scales::pretty_breaks(n=6)) +
    scale_color_manual(values = cbbPalette[c(6,3,2,4)], guide = guide_legend(reverse = TRUE), drop = F) +
    theme(strip.background = element_blank(),
          strip.placement = "top",
          strip.text = element_text(hjust = 0, size=12,  face="bold"),
          axis.text.y = element_text(size=10, hjust=1),
          axis.text.x = element_text(size=12),
          plot.margin = unit(c(0, 0, 0, 1.2), "cm")) +
    guides(shape="none") + 
    ggtitle(plot_title) +
    ggforce::facet_col(facets = vars(RFgroup), 
                       scales = "free_y", 
                       space = "free") 
  return(p)
}



plot_laz_birth <- plot_ext_par(d=plotdf, outcome="LAZ", agecat="Birth", region="Pooled", text_pos=-0.55, range=c(-0.6, 0.4))
plot_laz_6 <- plot_ext_par(d=plotdf, outcome="LAZ", agecat="6 months", region="Pooled", text_pos=-0.25, range=c(-0.3, 0.8))
plot_laz_24 <- plot_ext_par(d=plotdf, outcome="LAZ", agecat="24 months", region="Pooled", text_pos=-0.15, range=c(-0.2, 0.6), xaxis=T, xaxis_lab="Population intervention effect, difference in LAZ")

plot_wlz_birth <- plot_ext_par(d=plotdf, outcome="WLZ", agecat="Birth", region="Pooled", text_pos=-0.4, range=c(-0.45, 0.4))
plot_wlz_6 <- plot_ext_par(d=plotdf, outcome="WLZ", agecat="6 months", region="Pooled", text_pos=-0.07, range=c(-0.09, 0.2))
plot_wlz_24 <- plot_ext_par(d=plotdf, outcome="WLZ", agecat="24 months", region="Pooled", text_pos=-0.07, range=c(-0.09, 0.25), xaxis=T, xaxis_lab="Population intervention effect, difference in WLZ")

plot_laz_africa <- plot_ext_par(d=plotdf, outcome="LAZ", agecat="24 months", region="Africa", text_pos=-0.55, range=c(-0.6, 0.5))
plot_laz_la <- plot_ext_par(d=plotdf, outcome="LAZ", agecat="24 months", region="Latin America", text_pos=-0.55, range=c(-0.6, 0.5))
plot_laz_sa <- plot_ext_par(d=plotdf, outcome="LAZ", agecat="24 months", region="South Asia", text_pos=-0.55, range=c(-0.6, 0.5), xaxis=T, xaxis_lab="Population intervention effect, difference in LAZ")

plot_wlz_africa <- plot_ext_par(d=plotdf, outcome="WLZ", agecat="24 months", region="Africa", text_pos=-0.5, range=c(-0.6, 0.4))
plot_wlz_la <- plot_ext_par(d=plotdf, outcome="WLZ", agecat="24 months", region="Latin America", text_pos=-0.5, range=c(-0.6, 0.4))
plot_wlz_sa <- plot_ext_par(d=plotdf, outcome="WLZ", agecat="24 months", region="South Asia", text_pos=-0.5, range=c(-0.6, 0.4), xaxis=T, xaxis_lab="Population intervention effect, difference in WLZ")


plot_laz_region = grid.arrange(plot_laz_africa, plot_laz_la, plot_laz_sa, ncol = 1, nrow = 3,
                               top = textGrob("Population intervention effect - LAZ, stratified by region",gp=gpar(fontsize=26,font=2)))
plot_wlz_region = grid.arrange(plot_wlz_africa, plot_wlz_la, plot_wlz_sa, ncol = 1, nrow = 3,
                               top = textGrob("Population intervention effect - WLZ, stratified by region",gp=gpar(fontsize=26,font=2)))

ggsave(plot_laz_region, file=paste0(BV_dir, "/figures/manuscript-figure-composites/risk-factor/extended-data/fig-laz-PAR-strat-region.png"), height=18, width=12)
ggsave(plot_wlz_region, file=paste0(BV_dir, "/figures/manuscript-figure-composites/risk-factor/extended-data/fig-wlz-PAR-strat-region.png"), height=18, width=12)

ggsave(plot_laz_region, file=paste0(here(), "/figures/fig-laz-PAR-strat-region.png"), height=18, width=13)
ggsave(plot_wlz_region, file=paste0(here(), "/figures/fig-wlz-PAR-strat-region.png"), height=18, width=13)



plot_laz_age = grid.arrange(plot_laz_birth, plot_laz_6, plot_laz_24, ncol = 1, nrow = 3,
                            top = textGrob("Population intervention effect - LAZ, stratified by age",gp=gpar(fontsize=26,font=2)),
                            heights = c(10,15,15))


plot_wlz_age = grid.arrange(plot_wlz_birth, plot_wlz_6, plot_wlz_24, ncol = 1, nrow = 3,
                            top = textGrob("Population intervention effect - WLZ, stratified by age",gp=gpar(fontsize=26,font=2)),
                            heights = c(10,15,15))

ggsave(plot_laz_age, file=paste0(BV_dir, "/figures/manuscript-figure-composites/risk-factor/extended-data/fig-laz-PAR-strat-age.png"), height=18, width=12)
ggsave(plot_wlz_age, file=paste0(BV_dir, "/figures/manuscript-figure-composites/risk-factor/extended-data/fig-wlz-PAR-strat-age.png"), height=18, width=12)


ggsave(plot_laz_age, file=paste0(here(), "/figures/fig-laz-PAR-strat-age.png"), height=18, width=13)
ggsave(plot_wlz_age, file=paste0(here(), "/figures/fig-wlz-PAR-strat-age.png"), height=18, width=13)

