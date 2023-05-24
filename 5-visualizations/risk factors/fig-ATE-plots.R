
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

#Plot themes
source(paste0(here::here(), "/5-visualizations/0-plot-themes.R"))
theme_set(theme_ki())



#Load data
RMAest_clean <- readRDS(paste0(BV_dir,"/results/rf results/pooled_ATE_results.rds"))

yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)

#hbgdki pallet
tableau10 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
scaleFUN <- function(x) sprintf("%.1f", x)



df <- RMAest_clean
df <- df %>% filter(outcome_variable=="haz"|outcome_variable=="whz") 
df <- droplevels(df)
unique(df$outcome_variable)
df$outcome_variable <- gsub("haz", "LAZ", df$outcome_variable)
df$outcome_variable <- gsub("whz", "WHZ", df$outcome_variable)

#subset to a smaller number of plots
length(unique(df$region)) * length(unique(df$outcome_variable)) * length(unique(df$intervention_variable))
df <- df %>% 
  filter(region=="Pooled", !(intervention_variable %in% c("anywast06","enstunt","enwast","lag_WHZ_quart")))
 length(unique(df$outcome_variable)) * length(unique(df$intervention_variable))


#Delete existing plots
#do.call(file.remove, list(list.files(paste0(BV_dir,"/figures/risk-factor/RR-plots/"), full.names = TRUE)))
 
 unique(df$agecat)
 df$agecat <- factor(df$agecat, levels = c("Birth",  "6 months" , "24 months", "0-6 months", "6-24 months", "0-24 months"))
 df <- df %>% filter(!is.na(agecat))
 
 i=unique(df$region)[1]
 j=unique(df$outcome_variable)[1]
 k=unique(df$intervention_variable)[29]
 
 length(unique(df$region))
 length(unique(df$outcome_variable))
 length(unique(df$intervention_variable))
 
 (unique(df$region))
 (unique(df$outcome_variable))
 (unique(df$intervention_variable))
 
 table(df$intervention_variable, df$intervention_level)
 
 
for(i in unique(df$region)){
  for(j in unique(df$outcome_variable)){
    for(k in unique(df$intervention_variable)){

      dpool <- df %>%
        filter(region==i,
               outcome_variable==j,
               intervention_variable == k) 
      
      if(nrow(dpool)>1){
        
        if(length(unique(dpool$intervention_level))>1){
          p <-  ggplot(dpool, aes(x=intervention_level)) + 
            geom_point(aes(y=ATE, fill=intervention_variable, color=intervention_variable), size = 3) +
            geom_linerange(aes(ymin=CI1, ymax=CI2, color=intervention_variable),
                           alpha=0.5, size = 1) +
            facet_wrap(~agecat, scales="free_x", nrow=1) +   #,  labeller = label_wrap) +
            labs(x = "Exposure level", y = "Mean difference") +
            geom_hline(yintercept = 0) +
            geom_text(aes(x=1.2, y=(max(dpool$CI2))-.1, label=paste0("N studies: ",max(dpool$Nstudies))), size=3,  hjust=0) +
            #scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
            scale_fill_manual(values=rep(tableau10,4)) +
            scale_colour_manual(values=rep(tableau10,4)) +
            theme(strip.background = element_blank(),
                  legend.position="none",
                  axis.text.y = element_text(size=12),
                  strip.text.x = element_text(size=10),
                  axis.text.x = element_text(size=10), #, angle = 20, hjust = 1),
                  panel.spacing = unit(0, "lines")) +
            ggtitle(paste0("Outcome: ", dpool$outcome_variable[1], "\nExposure:\n", dpool$RFlabel_ref[1])) 
          
        }else{
          p <- ggplot(dpool, aes(x=agecat)) + 
            geom_point(aes(y=ATE, fill=intervention_variable, color=intervention_variable), size = 3) +
            geom_linerange(aes(ymin=CI1, ymax=CI2, color=intervention_variable),
                           alpha=0.5, size = 1) +
            #facet_wrap(~intervention_level agecat, scales="free_x", nrow=1) +   #,  labeller = label_wrap) +
            labs(x = "Age category", y = paste0("Mean difference\nExposure level: ",dpool$intervention_level[1])) +
            geom_hline(yintercept = 0) +
            geom_text(aes(x=1.2, y=(max(dpool$CI2))-.1, label=paste0("N studies: ",max(dpool$Nstudies))), size=3,  hjust=0) +
            scale_fill_manual(values=rep(tableau10,4)) +
            scale_colour_manual(values=rep(tableau10,4)) +
            theme(strip.background = element_blank(),
                  legend.position="none",
                  axis.text.y = element_text(size=12),
                  strip.text.x = element_text(size=10),
                  axis.text.x = element_text(size=10), #, angle = 20, hjust = 1),
                  panel.spacing = unit(0, "lines")) +
            ggtitle(paste0("Outcome: ", dpool$outcome_variable[1], "\nExposure:\n", dpool$RFlabel_ref[1])) 
          
        }
      


      file_name <- paste0(BV_dir,"/figures/risk-factor/RR-plots/supplement/fig-",dpool$region[1], "-", dpool$outcome_variable[1], "-", gsub(" ","",dpool$intervention_variable[1]), "-ATE.png")
      file_name <- gsub(" ","",file_name)
      ggsave(p, file=file_name, height=4, width=7)
      
      }
    }
  }
}

# /home/andrew.mertens/causes/figures/risk-factor/RR-plots/








