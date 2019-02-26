#-----------------------------------------
# Process data for stunting flow chart

# Currently uses fake data
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

load("~/Dropbox/HBGD/Manuscripts/testdata.RData")

colnames(d)[which(colnames(d)=="whz")]="haz"

# simulate some kids with no stunting
template = d[d$subjid==1, c("subjid","agedays")]
recst1 = template %>% mutate(haz = seq(-2.5,3, length=nrow(template))) %>% mutate(subjid=51)
recst2 = template %>% mutate(haz = seq(-2.5,1, length=nrow(template)))  %>% mutate(subjid=52)
recst3 = template %>% mutate(haz = seq(-2.5,0, length=nrow(template))) %>% mutate(subjid=53)
recst4 = template %>% mutate(haz = seq(-2.5,-1, length=nrow(template))) %>% mutate(subjid=54)
recst5 = template %>% mutate(haz = seq(-2.5,-1.9, length=nrow(template))) %>% mutate(subjid=55)
nost1 = template %>% mutate(haz = rep(2,nrow(template))) %>% mutate(subjid=56)
nost2 = template %>% mutate(haz = rep(2,nrow(template))) %>% mutate(subjid=57)
nost3 = template %>% mutate(haz = rep(2,nrow(template))) %>% mutate(subjid=58)
nost4 = template %>% mutate(haz = rep(2,nrow(template))) %>% mutate(subjid=59)
nost5 = template %>% mutate(haz = rep(2,nrow(template))) %>% mutate(subjid=60)

addon = bind_rows(recst1, recst2, recst3, recst4, recst5,
                  nost1, nost2, nost3, nost4, nost5)

d = bind_rows(d, addon)

##########################################
# Define indicators of stunting at each time point
##########################################

# define age windows
d = d %>% 
  mutate(agecat = case_when(
    agedays==1 ~ "Birth",
    agedays>1 & agedays<=3*30.4167 ~ "3 months",
    agedays>3*30.4167 & agedays<=6*30.4167 ~ "6 months",
    agedays>6*30.4167 & agedays<=9*30.4167 ~ "9 months",
    agedays>9*30.4167 & agedays<=12*30.4167 ~ "12 months",
    agedays>12*30.4167 & agedays<=15*30.4167 ~ "15 months",
    agedays>15*30.4167 & agedays<=18*30.4167 ~"18 months",
    agedays>18*30.4167 & agedays<=21*30.4167 ~ "21 months",
    agedays>21*30.4167& agedays<=24*30.4167 ~ "24 months",
    TRUE ~ ""
  )) %>%
  mutate(agecat=factor(agecat,levels=c("Birth","3 months","6 months","9 months",
                                       "12 months","15 months","18 months","21 months","24 months")))

# check age categories
d %>%
  group_by(agecat) %>%
  summarise(n=sum(!is.na(agedays)),
            min=min(agedays/30.4167),
            mean=mean(agedays/30.4167),
            max=max(agedays/30.4167))

# identify ever stunted children
stunt_data = d %>%
  filter(!is.na(agecat)) %>%
  group_by(subjid, agecat) %>%
  arrange(subjid) %>%
  
  summarize(minhaz = min(haz)) %>%
  
  # create indicator for whether the child 
  # was stunted in CURRENT age category
  mutate(stunted=ifelse(minhaz< -2,1,0)) %>%
  
  # create indicator for whether the child 
  # was stunted in PREVIOUS age category
  group_by(subjid) %>%
  mutate(minhaz_prev=ifelse(
    agecat=="Birth",NA,      
    ifelse(agecat=="3 months",minhaz[agecat=="Birth"],
           ifelse(agecat=="6 months",minhaz[agecat=="3 months"],
                  ifelse(agecat=="9 months",minhaz[agecat=="6 months"],
                         ifelse(agecat=="12 months",minhaz[agecat=="9 months"],
                                ifelse(agecat=="15 months",minhaz[agecat=="12 months"],
                                       ifelse(agecat=="18 months",minhaz[agecat=="15 months"],
                                              ifelse(agecat=="21 months",minhaz[agecat=="18 months"],
                                                     ifelse(agecat=="24 months",minhaz[agecat=="21 months"],
                                                            NA)))))))))) %>%
  mutate(still_stunted = ifelse(minhaz_prev < -2 & minhaz < -2, 1, 0),
         prev_stunted = ifelse(minhaz_prev < -2 & minhaz >= -2 , 1, 0)) 


# create indicator for whether the child 
# was NEVER stunted 
stunt_data = stunt_data %>%
  group_by(subjid) %>%
  mutate(cum_minhaz = cummin(minhaz)) %>%
  mutate(never_stunted = ifelse(cum_minhaz >= -2, 1, 0)) %>%
  
  # create indicator for whether the child 
  # was NEWLY stunted 
  mutate(newly_stunted = ifelse(never_stunted==0 & still_stunted==0 & prev_stunted==0, 1, 0)) %>%
  mutate(newly_stunted = ifelse(agecat=="Birth" & minhaz< -2, 1, newly_stunted)) %>%
  select(subjid, agecat, minhaz, minhaz_prev, cum_minhaz, stunted, 
         never_stunted, prev_stunted, newly_stunted, still_stunted) 

# Check that no child was classified in more
# than one category at any time point 
summary = stunt_data %>%
  group_by(agecat) %>%
  summarise(
    nchild=length(unique(subjid)),
    newly_stunted = sum(newly_stunted),
    still_stunted = sum(still_stunted),
    prev_stunted = sum(prev_stunted),
    never_stunted = sum(never_stunted)) %>%
  mutate(newly_stunted = newly_stunted/nchild,
         still_stunted = still_stunted/nchild,
         prev_stunted = prev_stunted/nchild,
         never_stunted = never_stunted/nchild)

summary = summary %>%
  mutate(still_stunted = ifelse(agecat=="Birth",0,still_stunted),
         prev_stunted = ifelse(agecat=="Birth",0,prev_stunted)) 

summary = summary %>%
  mutate(sum = still_stunted + newly_stunted + prev_stunted + never_stunted)

summary

saveRDS(stunt_data, file=paste0(res_dir, "fakeflow.RDS"))
