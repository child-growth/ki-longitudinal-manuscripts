
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
d<-fread(paste0(ghapdata_dir,"FINAL.csv"), header = T,
         drop = c( "AGEIMPFL",  #"WTKG", "REGION",   
                   #"HTCM",    "LENCM", 
                   "BAZ", "HCAZ",      
                   "REGCTRY", "REGCTYP", "CITYTOWN", "HHID",    
                   "FEEDING", "DURBRST", "ENSTUNT", "FWTKG", "FBMI",
                   "BRFEED", "SUMEP",   "SUMDIAR", "SUMDAYS",
                   "PCTDIAR", "IMPSAN",  "SOAP",    "SAFEH2O", "H2OTIME",
                   "CHICKEN", "COW",     "CATTLE",  "INCTOT", 
                   "INCTOTU", "BFEDFL",  "EXBFEDFL","WEANFL",  "ANMLKFL", "PWMLKFL",
                   "FORMLKFL","BOTTLEFL","H20FEDFL","OTHFEDFL","SLDFEDFL","NBFYES",   "CMFDINT", "DIARFL",  "LSSTLFL",
                   "NUMLS",   "BLDSTLFL","DIARFL_R","LSSTFL_R","NUMLS_R", "BLDSTL_R",
                   "DUR_R"))
gc()

colnames(d) <- tolower(colnames(d))
gc()

#Drop studies Vishak added to data product that don't meet inclusion criteria
dim(d)
d <- d[!(studyid %in% c("ki1000301-DIVIDS", "ki1055867-WomenFirst", "ki1135782-INCAP"))]
dim(d)
gc()

#Drop obs without birth year
d <- d[!is.na(brthyr)]


#Drop yearly studies
monthly_vec <- c("ki0047075b-MAL-ED",   
                 "ki1000108-CMC-V-BCS-2002",              
                 "ki1000108-IRC",               
                 "ki1000109-EE",           
                 "ki1000109-ResPak",  
                 "ki1017093b-PROVIDE",  
                 "ki1066203-TanzaniaChild2",           
                 "ki1101329-Keneba",  
                 "ki1112895-Guatemala BSC",       
                 "ki1113344-GMS-Nepal",             
                 "ki1114097-CONTENT")

quarterly_vec <- c("ki1112895-iLiNS-Zinc",  
                   "kiGH5241-JiVitA-3",          
                   "kiGH5241-JiVitA-4", 
                   "ki1148112-LCNI-5",          
                   "ki1017093-NIH-Birth",
                   "ki1017093c-NIH-Crypto",   
                   "ki1119695-PROBIT",         
                   "ki1000304b-SAS-CompFeed",   
                   "ki1000304b-SAS-FoodSuppl",   
                   "ki1126311-ZVITAMBO",   
                   "ki1114097-CMIN",                 
                   "ki1135781-COHORTS")

yearly_vec <- c("ki1000110-WASH-Bangladesh",       
                "ki1000111-WASH-Kenya",  
                "ki1148112-iLiNS-DOSE",     
                "ki1148112-iLiNS-DYAD-M", 
                "ki1033518-iLiNS-DYAD-G",
                "ki1000125-AgaKhanUniv",           
                "ki1112895-Burkina Faso Zn",    
                "ki1000304-VITAMIN-A",  
                "ki1000304-Vitamin-B12",
                "ki1000107-Serrinha-VitA",   
                "ki1000304-EU",        
                "ki1000304-ZnMort"
)


d <- d[, measurefreq := c("monthly", "quarterly", "yearly")[1* (studyid %in% monthly_vec) +
                                                              2 * (studyid %in% quarterly_vec) + 
                                                              3 * (studyid %in% yearly_vec)]]
gc()



#Mark COHORTS and CMIN cohorts with different measurement frequency than quarterly
d[studyid=="ki1114097-CMIN" & country %in% c("BANGLADESH", "PERU"), measurefreq := "monthly"]
gc()

#Mark yearly cohorts
d <- d[studyid=="ki1135781-COHORTS" & country %in% c("BRAZIL", "SOUTH AFRICA"), measurefreq := "yearly"]
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
d <- d %>% filter(region != "N.America & Europe")

#Scatterplot by region
p <- ggplot(d, aes(x=brthyr, y=haz, color=Region, group=Region)) + geom_point(alpha=0.05) + facet_wrap(~Region) +
  scale_color_manual(values=tableau10) + theme(legend.position = "right") + coord_cartesian(ylim=c(-6,6)) + xlab("Birth year") +
  ylab("LAZ") +
  guides(color = guide_legend(override.aes = list(alpha=1)))


ggsave(p, file = here::here("/figures/shared/laz_secular_trend.png"), width=8, height=4)




#Subset to monthly
df <- df[df$measurefreq=="monthly", ]


#Drop missing anthropometry
d <- df[!is.na(df$haz),]
#Scatterplot by region
pHaz <- ggplot(d, aes(x=brthyr, y=haz, color=Region, group=Region)) + geom_point(alpha=0.05) + facet_wrap(~Region) +
  scale_color_manual(values=tableau10) + theme(legend.position = "right") + coord_cartesian(ylim=c(-6,6)) + xlab("Birth year") +
  ylab("LAZ") +
  guides(color = guide_legend(override.aes = list(alpha=1)))

#Drop missing anthropometry
d <- df[!is.na(df$waz),]
#Scatterplot by region
pWaz <- ggplot(d, aes(x=brthyr, y=waz, color=Region, group=Region)) + geom_point(alpha=0.05) + facet_wrap(~Region) +
  scale_color_manual(values=tableau10) + theme(legend.position = "right") + coord_cartesian(ylim=c(-6,6)) + xlab("Birth year") +
  ylab("WAZ") +
  guides(color = guide_legend(override.aes = list(alpha=1)))

#Drop missing anthropometry
d <- df[!is.na(df$whz),]
#Scatterplot by region
pWhz <- ggplot(d, aes(x=brthyr, y=whz, color=Region, group=Region)) + geom_point(alpha=0.05) + facet_wrap(~Region) +
  scale_color_manual(values=tableau10) + theme(legend.position = "right") + coord_cartesian(ylim=c(-6,6)) + xlab("Birth year") +
  ylab("WLZ") +
  guides(color = guide_legend(override.aes = list(alpha=1)))


ggsave(pHaz, file = here::here("/figures/shared/laz_secular_trend_monthly.png"), width=8, height=4)
ggsave(pWaz, file = here::here("/figures/shared/waz_secular_trend_monthly.png"), width=8, height=4)
ggsave(pWhz, file = here::here("/figures/shared/wlz_secular_trend_monthly.png"), width=8, height=4)


