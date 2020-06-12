
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load data
d <- readRDS(paste0(here::here(),"/results/desc_data_cleaned.rds"))

#Subset to primary analysis
d <- d %>% filter(analysis=="No Kenaba birth", (pooling!="country" | is.na(pooling)), is.na(country), cohort=="pooled")



d$nmeas.f <- clean_nmeans(d$nmeas)
d$nstudy.f <- gsub("N=","",d$nstudy.f)
d$nmeas.f <- gsub("N=","",d$nmeas.f)
d$nstudy.f <- gsub(" studies","",d$nstudy.f)
d$nmeas.f <- gsub(" children","",d$nmeas.f)



#-------------------------------------------------------------------------------------------
# Mean WLZ by month 
#-------------------------------------------------------------------------------------------

df <- d %>% filter(
  disease == "Wasting" &
    measure == "Mean WLZ" & 
    birth == "yes" &
    severe == "no" &
    age_range == "1 month" &
    cohort == "pooled" 
)
df <- droplevels(df)

df <- df %>% 
  arrange(agecat) %>%
  filter(!is.na(agecat)) %>%
  filter(!is.na(region)) %>%
  mutate(agecat = as.character(agecat)) %>%
  mutate(agecat = ifelse(agecat == "Two weeks", ".5", agecat)) %>%
  mutate(agecat = gsub(" month", "", agecat)) %>%
  mutate(agecat = gsub(" months", "", agecat)) %>%
  mutate(agecat = gsub("s", "", agecat)) %>%
  mutate(agecat = ifelse(agecat == "One", "1", agecat)) %>%
  mutate(agecat = as.numeric(agecat)) 


p <- ggplot(df,aes(y=est,x=agecat, group=region)) +
  stat_smooth(aes(fill=region, color=region), se=F, span = 1) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10),
                     limits = c(-1, 0.5)) +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) +
  scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                    name = 'Region') +
  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                     name = 'Region') +
  xlab("Child age, months")+
  ylab("Weight-for-length Z-score") +
  ggtitle("") +
  theme(legend.position="right")

ggsave(p, file=here::here("/figures/wasting/no-kenaba-BW/WLZ_by_region-no-Kenaba-BW.png"), width=10, height=4)



#-------------------------------------------------------------------------------------------
# Wasting prevalence
#-------------------------------------------------------------------------------------------
prev_plot <- ki_desc_plot(d,
                   Disease="Wasting",
                   Measure="Prevalence", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Child age, months",
                   ylabel='Point prevalence (95% CI)',
                   yrange=c(0,31),
                   returnData=T)





# save plot and underlying data
ggsave(prev_plot[[1]], file=paste0(here::here(),"/figures/wasting/no-kenaba-BW/fig-wast-prev-no-Kenaba-BW.png"), width=14, height=3)

saveRDS(prev_plot[[2]], file=paste0(figdata_dir_wasting,"figdata-wast-prev-no-Kenaba-BW.RDS"))




#-------------------------------------------------------------------------------------------
# Wasting cumulative incidence
#-------------------------------------------------------------------------------------------
ci_plot <- ki_combo_plot(d,
                        Disease="Wasting",
                        Measure=c("Cumulative incidence", "Incidence proportion"), 
                        Birth="yes", 
                        Severe="no", 
                        Age_range="3 months", 
                        Cohort="pooled",
                        xlabel="Child age, months",
                    yrange=c(0,55),
                    returnData=T)



# save plot and underlying data
ggsave(ci_plot[[1]], file=paste0(here::here(),"/figures/wasting/no-kenaba-BW/fig-wast-ci-no-Kenaba-BW.png"), width=14, height=3)

saveRDS(ci_plot[[2]], file=paste0(figdata_dir_wasting,"figdata-wast-ci-no-Kenaba-BW.RDS"))



#-------------------------------------------------------------------------------------------
# Wasting incidence rate
#-------------------------------------------------------------------------------------------

inc_combo_plot <- function(d, Disease, Measure, Birth, Severe, Age_range, 
                           Cohort="pooled",
                           xlabel="Age category",
                           ylabel="",
                           yrange=c(0,90),
                           legend.pos = c(.9,.32)){

    df <- d %>% filter(
    disease == Disease &
      measure == Measure &
      birth %in% Birth &
      severe == Severe &
      age_range %in% Age_range &
      cohort == Cohort &
      !is.na(region) & !is.na(agecat)
  )
  df <- df %>% filter(birth=="yes" | agecat=="0-3 months")
  df <- droplevels(df)

  
  #Keep N studies and children from only one study
  df$nmeas.f[df$age_range!="30 days"] <- NA
  df$nstudy.f[df$age_range!="30 days"] <- NA
  
  # remove N= from labels
  df <- df %>% mutate(nmeas.f = gsub('N=', '', nmeas.f)) %>%
    mutate(nstudy.f = gsub('N=', '', nstudy.f))
  
  # remove text from labels
  df <- df %>% mutate(nmeas.f = gsub(' children', '', nmeas.f)) %>%
    mutate(nstudy.f = gsub(' studies', '', nstudy.f))
  
  # Remove 'months' from x axis labels  
  df <- df %>% arrange(agecat)
  df$agecat <- as.character(df$agecat)
  df$agecat <- gsub(" months", "", df$agecat)
  df$agecat <- factor(df$agecat, levels=unique(df$agecat))
  
  p <- ggplot(df,aes(y=est,x=agecat)) +
    facet_wrap(~region, nrow=1) +
    geom_errorbar(aes(color=region, 
                      group=interaction(birth, region), ymin=lb, ymax=ub), 
                  width = 0, position = position_dodge(0.5)) +
    geom_point(aes(shape=birth, fill=region, color=region, group=interaction(birth, region)
    ), size = 2, position = position_dodge(0.5)) +
    scale_color_manual(values=tableau11, guide = FALSE) +
    scale_shape_manual(values = c(16, 17),
                       name = 'Measure', 
                       labels = c('Including wasting at birth', 'Excluding wasting at birth')) + 
    scale_fill_manual(values=tableau11, guide = FALSE) +
    xlab(xlabel) + ylab(ylabel) +
    scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
    theme(strip.text = element_text(size=20, margin = margin(t = 5))) +
    theme(axis.text.x = element_text(margin = 
                                       margin(t = 0, r = 0, b = 0, l = 0),
                                     size = 10)) +
    theme(axis.title.x = element_text(margin = 
                                        margin(t = 25, r = 0, b = 0, l = 0),
                                      size = 15)) +
    theme(axis.title.y = element_text(size = 15)) +
    ggtitle("") + guides(color = FALSE) 
  
  if(!is.null(yrange)){
    p <- p + coord_cartesian(ylim=yrange)
  }
  
  p <- p +  theme(legend.position = legend.pos,
                  legend.title = element_blank(),
                  legend.background = element_blank(),
                  legend.box.background = element_rect(colour = "black"))
  return(list(plot=p,data=df))
}


d <- d %>% mutate(birth=factor(birth, levels=c("yes","no"))) %>% arrange(birth)



inc_plot <- inc_combo_plot(d,
                   Disease="Wasting",
                   Measure="Incidence rate", 
                   Birth=c("yes","no"), 
                   Severe="no", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Child age, months",
                   ylabel='Episodes per 1000\nperson-days at risk',
                   yrange=c(0,7.5),
                   legend.pos = c(.92,.8))



# save plot and underlying data
ggsave(inc_plot$plot, file=paste0(here::here(),"/figures/wasting/no-kenaba-BW/fig-wast-ir-no-Kenaba-BW.png"), width=14, height=3)

saveRDS(inc_plot$data, file=paste0(figdata_dir_wasting,"figdata-wast-ir-no-Kenaba-BW.RDS"))


#-------------------------------------------------------------------------------------------
# Wasting recovery
#-------------------------------------------------------------------------------------------

rec_combo_plot <- function(d, Disease, Measure, Birth, Severe, Age_range, 
                          Cohort="pooled",
                          xlabel="Age at wasting episode onset",
                          ylabel="",
                          yrange=c(0,90),
                          legend.pos = c(.9,.32),
                          facet=T){
  
  df <- d %>% filter(
    disease == Disease &
      measure %in% Measure &
      birth == Birth &
      severe == Severe &
      age_range %in% Age_range &
      cohort == Cohort &
      !is.na(region) & !is.na(agecat)
  )
  df <- droplevels(df)
  
  #Keep N studies and children from only one study
  df$nmeas.f[df$age_range!="30 days"] <- NA
  df$nstudy.f[df$age_range!="30 days"] <- NA
  
  # remove N= from labels
  df <- df %>% mutate(nmeas.f = gsub('N=', '', nmeas.f)) %>%
    mutate(nstudy.f = gsub('N=', '', nstudy.f))
  
  # remove text from labels
  df <- df %>% mutate(nmeas.f = gsub(' children', '', nmeas.f)) %>%
    mutate(nstudy.f = gsub(' studies', '', nstudy.f))
  
  # Remove 'months' from x axis labels  
  df <- df %>% arrange(agecat)
  df$agecat <- as.character(df$agecat)
  df$agecat <- gsub(" months", "", df$agecat)
  df$agecat <- factor(df$agecat, levels=unique(df$agecat))

  p <- ggplot(df,aes(y=est,x=agecat)) +
    geom_errorbar(aes(color=region, 
                      group=interaction(age_range, region), ymin=lb, ymax=ub), 
                  width = 0, position = position_dodge(0.5)) +
    geom_point(aes(shape=age_range, fill=region, color=region, group=interaction(age_range, region)
    ), size = 2, position = position_dodge(0.5)) +
    scale_color_manual(values=tableau11,
                       guide = FALSE) +
    scale_shape_manual(values = c(16, 17, 18),
                       name = 'Measure', 
                       labels = c('30 days', '60 days', '90 days')) + 
    scale_fill_manual(values=tableau11, guide = FALSE) +
    xlab(xlabel)+
    ylab(ylabel) +
    scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
    theme(strip.text = element_text(size=22, margin = margin(t = 5))) +
    
    theme(axis.text.x = element_text(margin = 
                                       margin(t = 0, r = 0, b = 0, l = 0),
                                     size = 10)) +
    theme(axis.title.x = element_text(margin = 
                                        margin(t = 25, r = 0, b = 0, l = 0),
                                      size = 15)) +
    theme(axis.title.y = element_text(size = 15)) +
    
    ggtitle("") +
    
    guides(color = FALSE, shape=guide_legend(ncol=3)) 
    
  if(!is.null(yrange)){
    p <- p + coord_cartesian(ylim=yrange)
  }
  if(facet){
    p <- p + facet_wrap(~region, nrow=1) 
  }
  
  p <- p +  theme(legend.position = legend.pos,
                  legend.title = element_blank(),
                  legend.background = element_blank(),
                  legend.box.background = element_rect(colour = "black"))
  
  return(list(plot=p,data=df))
}



rec_plot <- rec_combo_plot(d,
                   Disease="Wasting",
                   Measure="Recovery", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range=c("30 days","60 days","90 days"), 
                   Cohort="pooled",
                   xlabel="Child age, months",
                   ylabel='Percent recovered\n(95% CI)',
                   yrange=c(0,100),
                   legend.pos = c(.1,.88))



# save plot and underlying data
ggsave(rec_plot[[1]], file=paste0(here::here(),"/figures/wasting/no-kenaba-BW/fig-wast-rec-no-Kenaba-BW.png"), width=14, height=4.5)
saveRDS(rec_plot[[2]], file=paste0(figdata_dir_wasting,"figdata-wast-rec-no-Kenaba-BW.RDS"))

#-------------------------------------------------------------------------------------------
# Persistent Wasting 
#-------------------------------------------------------------------------------------------

perswast_plot <- ki_desc_plot(d,
                   Disease="Wasting",
                   Measure="Persistent wasting", 
                   Birth="yes", 
                   Severe="no", 
                   Age_range="6 months", 
                   Cohort="pooled",
                   xlabel="Child age, months",
                   ylabel = 'Proportion (%)',
                   yrange=c(0,20),
                   returnData=T)

# save plot and underlying data
ggsave(perswast_plot$plot, file=paste0(here::here(),"/figures/wasting/no-kenaba-BW/fig-pers-wast-no-Kenaba-BW.png"), width=10, height=5)

saveRDS(perswast_plot[[2]], file=paste0(figdata_dir_wasting,"figdata-pers-wast-no-Kenaba-BW.RDS"))





#-------------------------------------------------------------------------------------------
# Prevalence of co-occurrence
#-------------------------------------------------------------------------------------------
co_plot <- ki_desc_plot(d,
                   Disease="co-occurrence",
                   Measure="Prevalence",
                   Birth="yes",
                   Severe="no",
                   Age_range="3 months",
                   Cohort="pooled",
                   xlabel="Child age, months",
                   ylabel='Point prevalence of co-occurrent\nwasting and stunting (95% CI)',
                   yrange=c(0,11),
                   returnData=T)




# save plot and underlying data
ggsave(co_plot[[1]], file=paste0(here::here(),"/figures/wasting/no-kenaba-BW/fig-co-prev-no-Kenaba-BW.png"), width=14, height=3)

saveRDS(co_plot[[2]], file=paste0(figdata_dir_wasting,"figdata-co-prev-no-Kenaba-BW.RDS"))



#-------------------------------------------------------------------------------------------
# Underweight prevalence
#-------------------------------------------------------------------------------------------
underweight_plot <- ki_desc_plot(d,
                   Disease="Underweight",
                   Measure="Prevalence",
                   Birth="yes",
                   Severe="no",
                   Age_range="3 months",
                   Cohort="pooled",
                   xlabel="Child age, months",
                   ylabel='Point prevalence (95% CI)',
                   returnData = T,
                   yrange=c(0,45))


# save plot and underlying data
ggsave(underweight_plot[[1]], file=paste0(here::here(),"/figures/wasting/no-kenaba-BW/fig-uw-prev-no-Kenaba-BW.png"), width=14, height=3)

saveRDS(underweight_plot[[2]], file=paste0(figdata_dir_wasting,"figdata-uw-prev-no-Kenaba-BW.RDS"))

#-------------------------------------------------------------------------------------------
# Severe Wasting prevalence
#-------------------------------------------------------------------------------------------

sevwast_plot <- ki_desc_plot(d,
                   Disease="Wasting",
                   Measure="Prevalence", 
                   Birth="yes", 
                   Severe="yes", 
                   Age_range="3 months", 
                   Cohort="pooled",
                   xlabel="Child age, months",
                   ylabel='Point prevalence (95% CI)',
                   yrange=c(0,10),
                   returnData=T)



# save plot and underlying data
ggsave(sevwast_plot[[1]], file=paste0(here::here(),"/figures/wasting/no-kenaba-BW/fig-sev-wast-no-Kenaba-BW.png"), width=14, height=3)

saveRDS(sevwast_plot[[2]], file=paste0(figdata_dir_wasting,"figdata-sev-wast-no-Kenaba-BW.RDS"))

