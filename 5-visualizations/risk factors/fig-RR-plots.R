
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

#Plot themes
source(paste0(here::here(), "/5-visualizations/0-plot-themes.R"))
theme_set(theme_ki())



#Load data
RMAest_clean <- readRDS(paste0(BV_dir,"/results/rf results/pooled_RR_results.rds"))

yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)

#hbgdki pallet
tableau10 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
scaleFUN <- function(x) sprintf("%.1f", x)



df <- RMAest_clean
df <- droplevels(df)
unique(df$outcome_variable)
df$outcome_variable <- gsub("ever_stunted", "Ever stunted", df$outcome_variable)
df$outcome_variable <- gsub("ever_wasted", "Ever wasted", df$outcome_variable)
df$outcome_variable <- gsub("ever_co", "Ever wasted and stunted", df$outcome_variable)
df$outcome_variable <- gsub("pers_wast", "Persistenly wasted", df$outcome_variable)
df$outcome_variable <- gsub("stunted", "Stunted", df$outcome_variable)
df$outcome_variable <- gsub("wasted", "Wasted", df$outcome_variable)
df$outcome_variable <- gsub("sstunted", "Severely stunted", df$outcome_variable)
df$outcome_variable <- gsub("swasted", "Severely wasted", df$outcome_variable)
df$outcome_variable <- gsub("s03rec24", "Stunting recovery", df$outcome_variable)
df$outcome_variable <- gsub("wast_rec90d", "Wasting recovery", df$outcome_variable)

#Breastfeeding RRs for wasting responses
d2 <- df %>% filter(outcome_variable=="Wasted" | outcome_variable=="Severely wasted",  
                    intervention_variable=="predexfd6", intervention_level != baseline_level, region=="Pooled")  %>%
  select(agecat , RR, RR.CI1, RR.CI2) %>% mutate(RR=round(RR,2), RR.CI1=round(RR.CI1,2), RR.CI2=round(RR.CI2,2))
head(d2)

#subset to a smaller number of plots
length(unique(df$region)) * length(unique(df$outcome_variable)) * length(unique(df$intervention_variable))
df <- df %>% filter(outcome_variable %in% c("Ever Stunted", "Ever Wasted", "Ever wasted and stunted"))
 length(unique(df$outcome_variable)) * length(unique(df$intervention_variable))


#Delete existing plots
#do.call(file.remove, list(list.files(paste0(BV_dir,"/figures/risk-factor/RR-plots/"), full.names = TRUE)))
 
 i=unique(df$region)[1]
 j=unique(df$outcome_variable)[1]
 k=unique(df$intervention_variable)[1]
 
 length(unique(df$region))
 length(unique(df$outcome_variable))
 length(unique(df$intervention_variable))
 
 unique(df$intervention_variable)

for(i in unique(df$region)){
  for(j in unique(df$outcome_variable)){
    for(k in unique(df$intervention_variable)){

      dpool <- df %>%
        filter(region==i,
               outcome_variable==j,
               intervention_variable == k) 
      
      if(nrow(dpool)>1){
      
      p <-  ggplot(dpool, aes(x=intervention_level)) + 
        geom_point(aes(y=RR, fill=intervention_variable, color=intervention_variable), size = 3) +
        geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=intervention_variable),
                       alpha=0.5, size = 1) +
        facet_wrap(~agecat, scales="free_x", nrow=1) +   #,  labeller = label_wrap) +
        labs(x = "Exposure level", y = "Relative risk") +
        geom_hline(yintercept = 1) +
        geom_text(aes(x=1.2, y=(max(dpool$RR.CI2))-.1, label=paste0("N studies: ",Nstudies)), size=3,  hjust=0) +
        scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
        scale_fill_manual(values=rep(tableau10,4)) +
        scale_colour_manual(values=rep(tableau10,4)) +
        theme(strip.background = element_blank(),
              legend.position="none",
              axis.text.y = element_text(size=12),
              strip.text.x = element_text(size=10),
              axis.text.x = element_text(size=10), #, angle = 20, hjust = 1),
              panel.spacing = unit(0, "lines")) +
        ggtitle(paste0("Outcome:", dpool$outcome_variable[1], "\nExposure:", dpool$intervention_variable[1],"\nRegion: ", dpool$region[1])) 
      

      file_name <- paste0(BV_dir,"/figures/risk-factor/RR-plots/fig-",dpool$region[1], "-", dpool$outcome_variable[1], "-", gsub(" ","",dpool$intervention_variable[1]), "-RR.png")
      file_name <- gsub(" ","",file_name)
      ggsave(p, file=file_name, height=8, width=10)
      
      }
    }
  }
}


# /home/andrew.mertens/causes/figures/risk-factor/RR-plots/








