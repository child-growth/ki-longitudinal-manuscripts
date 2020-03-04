
#-----------------------------------
# Check for secular trends in anthropometry data
# by cohort year
#-----------------------------------


#-----------------------------------------------------------------------------------------
# Load FINAL dataset and drop studies 
# Output: long form dataset with all variables used in the ki manuscript analysis, minus those 
# covariates created from raw SAS datasets
#
# Author: Andrew Mertens (amertens@berkeley.edu)
#-----------------------------------------------------------------------------------------



# Instructions for downloading FINAL dataset

# Go to https://git.ghap.io/stash/projects/HBGD/repos/adhoc/browse
# click clone button
# Copy link (mine is https://andrew.mertens@git.ghap.io/stash/scm/hbgd/adhoc.git)
# Open Sourcetree (Click window icon in bottom left, then search magnifying glass icon
# in the top right, and search Sourcetree to find)
# Click clone button in source tree 
# Paste link in source path box
# Add U:/data/FINAL/ to the destination path (make sure FINAL folder is empty)
# Click clone



rm(list=ls())
source(paste0(here::here(), "/0-config.R"))



#Read rds file and drop unneeded columns that Vishak extracted that are either used elsewhere in covariate creation or 
# were too rare to include as exposures (to avoid memory allocation issues)
d<-readRDS(included_studies_path)


#Drop obs without birth year
d <- d[!is.na(brthyr)]


#Drop yearly studies
monthly_vec <- c("MAL-ED",   
                 "CMC-V-BCS-2002",              
                 "IRC",               
                 "EE",           
                 "ResPak",  
                 "PROVIDE",  
                 "TanzaniaChild2",           
                 "Keneba",  
                 "Guatemala BSC",       
                 "GMS-Nepal",             
                 "CONTENT")

quarterly_vec <- c("iLiNS-Zinc",  
                   "JiVitA-3",          
                   "JiVitA-4", 
                   "LCNI-5",          
                   "NIH-Birth",
                   "NIH-Crypto",   
                   "PROBIT",         
                   "SAS-CompFeed",   
                   "SAS-FoodSuppl",   
                   "ZVITAMBO",   
                   "CMIN",                 
                   "COHORTS")

yearly_vec <- c("WASH-Bangladesh",       
                "WASH-Kenya",  
                "iLiNS-DOSE",     
                "iLiNS-DYAD-M", 
                "iLiNS-DYAD-G",
                "AgaKhanUniv",           
                "Burkina Faso Zn",    
                "VITAMIN-A",  
                "Vitamin-B12",
                "Serrinha-VitA",   
                "EU",        
                "ZnMort"
)


d <- d[, measurefreq := c("monthly", "quarterly", "yearly")[1* (studyid %in% monthly_vec) +
                                                              2 * (studyid %in% quarterly_vec) + 
                                                              3 * (studyid %in% yearly_vec)]]
gc()



#Mark COHORTS and CMIN cohorts with different measurement frequency than quarterly
d[studyid=="CMIN" & country %in% c("BANGLADESH", "PERU"), measurefreq := "monthly"]
gc()

#Mark yearly cohorts
d <- d[studyid=="COHORTS" & country %in% c("BRAZIL", "SOUTH AFRICA"), measurefreq := "yearly"]
gc()

#Drop yearly studies except for four with high quality mortality data used in the mortality analysis
df <- d[d$measurefreq!="yearly", ]
rm(d)
gc()

#Mark region
df <- mark_region(df)
df <- df %>% rename(Region=region)

#Drop missing anthropometry
d <- df[!is.na(df$haz),]



#Drop europe
d <- d %>% filter(Region != "N.America & Europe")
d <- droplevels(d)


#Get IQR by birth year
d <- d %>%
  group_by(Region, brthyr) %>%
  mutate(positionInCategory = 1:n(),
         med_haz=ifelse(positionInCategory==1, median(haz), NA),
         Q1=ifelse(positionInCategory==1, quantile(haz,0.25), NA),
         Q3=ifelse(positionInCategory==1, quantile(haz,0.75), NA))
  
  
  
#Scatterplot by region
p <- ggplot(d, aes(x=brthyr, y=haz, color=Region, group=Region)) + 
  geom_point(alpha=0.05) + 
  # geom_point(aes(y=med_haz), color="black", shape=95, size=4, stroke=3) + 
  # geom_point(aes(y=Q1), color="grey50", shape=95, size=3, stroke=3) + 
  # geom_point(aes(y=Q3), color="grey50", shape=95, size=3, stroke=3) + 
  geom_smooth(aes(y=med_haz), color="black", se=F) + 
  geom_smooth(aes(y=Q1), color="black", linetype="dashed", se=F) + 
  geom_smooth(aes(y=Q3), color="black", linetype="dashed", se=F) + 
  facet_wrap(~Region) +
  scale_color_manual(values=tableau10) + theme(legend.position = "right") + coord_cartesian(ylim=c(-6,6)) + xlab("Birth year") +
  ylab("LAZ") +
  guides(color = guide_legend(override.aes = list(alpha=1)))


ggsave(p, file = here::here("/figures/shared/laz_secular_trend.png"), width=8, height=4)




#Subset to monthly
df <- df[df$measurefreq=="monthly", ]

#Get IQR by birth year
df <- df %>%
  group_by(Region, brthyr) %>%
  mutate(positionInCategory = 1:n(),
         med_haz=ifelse(positionInCategory==1, median(haz, na.rm=T), NA),
         Q1haz=ifelse(positionInCategory==1, quantile(haz,0.25, na.rm=T), NA),
         Q3haz=ifelse(positionInCategory==1, quantile(haz,0.75, na.rm=T), NA),
         med_waz=ifelse(positionInCategory==1, median(waz, na.rm=T), NA),
         Q1waz=ifelse(positionInCategory==1, quantile(waz,0.25, na.rm=T), NA),
         Q3waz=ifelse(positionInCategory==1, quantile(waz,0.75, na.rm=T), NA),
         med_whz=ifelse(positionInCategory==1, median(whz, na.rm=T), NA),
         Q1whz=ifelse(positionInCategory==1, quantile(whz,0.25, na.rm=T), NA),
         Q3whz=ifelse(positionInCategory==1, quantile(whz,0.75, na.rm=T), NA))
         

#Drop missing anthropometry
d <- df[!is.na(df$haz),]
#Scatterplot by region
pHaz <- ggplot(d, aes(x=brthyr, y=haz, color=Region, group=Region)) + geom_point(alpha=0.05) + facet_wrap(~Region) +
  geom_smooth(aes(y=med_haz),method = "gam", formula = y ~ s(x, k = 3), color="black", se=F) + 
  geom_smooth(aes(y=Q1haz),method = "gam", formula = y ~ s(x, k = 3), color="black", linetype="dashed", se=F) + 
  geom_smooth(aes(y=Q3haz),method = "gam", formula = y ~ s(x, k = 3), color="black", linetype="dashed", se=F) + 
  scale_color_manual(values=tableau10) + theme(legend.position = "right") + coord_cartesian(ylim=c(-6,6)) + xlab("Birth year") +
  ylab("LAZ") +
  guides(color = guide_legend(override.aes = list(alpha=1)))







#Drop missing anthropometry
d <- df[!is.na(df$waz),]
#Scatterplot by region
pWaz <- ggplot(d, aes(x=brthyr, y=waz, color=Region, group=Region)) + geom_point(alpha=0.05) + facet_wrap(~Region) +
  geom_smooth(aes(y=med_waz),method = "gam", formula = y ~ s(x, k = 3), color="black", se=F) + 
  geom_smooth(aes(y=Q1waz),method = "gam", formula = y ~ s(x, k = 3), color="black", linetype="dashed", se=F) + 
  geom_smooth(aes(y=Q3waz),method = "gam", formula = y ~ s(x, k = 3), color="black", linetype="dashed", se=F) + 
  scale_color_manual(values=tableau10) + theme(legend.position = "right") + coord_cartesian(ylim=c(-6,6)) + xlab("Birth year") +
  ylab("WAZ") +
  guides(color = guide_legend(override.aes = list(alpha=1)))






#Drop missing anthropometry
d <- df[!is.na(df$whz),]
#Scatterplot by region
pWhz <- ggplot(d, aes(x=brthyr, y=whz, color=Region, group=Region)) + geom_point(alpha=0.05) + facet_wrap(~Region) +
  geom_smooth(aes(y=med_whz),method = "gam", formula = y ~ s(x, k = 3), color="black", se=F) + 
  geom_smooth(aes(y=Q1whz),method = "gam", formula = y ~ s(x, k = 3), color="black", linetype="dashed", se=F) + 
  geom_smooth(aes(y=Q3whz),method = "gam", formula = y ~ s(x, k = 3), color="black", linetype="dashed", se=F) + 
  scale_color_manual(values=tableau10) + theme(legend.position = "right") + coord_cartesian(ylim=c(-6,6)) + xlab("Birth year") +
  ylab("WLZ") +
  guides(color = guide_legend(override.aes = list(alpha=1)))


ggsave(pHaz, file = here::here("/figures/shared/laz_secular_trend_monthly.png"), width=8, height=4)
ggsave(pWaz, file = here::here("/figures/shared/waz_secular_trend_monthly.png"), width=8, height=4)
ggsave(pWhz, file = here::here("/figures/shared/wlz_secular_trend_monthly.png"), width=8, height=4)


