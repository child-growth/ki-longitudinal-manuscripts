#-----------------------------------------
# Stunting recovery density
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# load fake data
d = readRDS("~/Dropbox/HBGD/Manuscripts/testdata2.RDS") 

stunt_data = readRDS(paste0(res_dir, "fakeflow2.RDS"))
stunt_data = stunt_data %>% ungroup()

# spaghetti plot of all kids
ggplot(d, aes(x=agedays, y=haz)) + 
  geom_line() + guides(colour=FALSE) +  
  aes(colour = factor(subjid))

# list of ids who recovered by 6 months
rec3m = stunt_data %>% filter(agecat=="0-3 months" & prev_stunted==1) %>%
  select(subjid) %>%
  mutate(subjid = as.numeric(subjid)) %>%
  mutate(rec3m = 1)

rec6m = stunt_data %>% filter(agecat=="3-6 months" & prev_stunted==1) %>%
  select(subjid) %>%
  mutate(subjid = as.numeric(subjid)) %>%
  mutate(rec6m = 1)

rec9m = stunt_data %>% filter(agecat=="6-9 months" & prev_stunted==1) %>%
  select(subjid) %>%
  mutate(subjid = as.numeric(subjid)) %>%
  mutate(rec9m = 1)

x3 = full_join(d, rec3m, by = c("subjid")) %>%
  filter(rec3m==1) %>%
  mutate(label = "Recovered by 3 months")

x6 = full_join(d, rec6m, by = c("subjid")) %>%
  filter(rec6m==1) %>%
  mutate(label = "Recovered by 6 months")

x9 = full_join(d, rec9m, by = c("subjid")) %>%
  filter(rec9m==1) %>%
  mutate(label = "Recovered by 9 months")

x = bind_rows(x3, x6, x9) %>%
  mutate(agem = agedays/ 30.4167)  %>%
  mutate(agem = ifelse(agem<0.04, 0, agem))

# spaghetti plot of kids who had recovered  
ggplot(x, aes(x=agem, y=haz)) + 
  geom_line() + guides(colour=FALSE) +  
  aes(colour = factor(subjid)) +
  geom_vline(data=filter(x, label=="Recovered by 3 months"), 
             aes(xintercept=3), linetype = "dashed") + 
  geom_vline(data=filter(x, label=="Recovered by 6 months"), 
             aes(xintercept=6), linetype = "dashed") + 
  geom_vline(data=filter(x, label=="Recovered by 9 months"), 
             aes(xintercept=9), linetype = "dashed") + 
  geom_hline(yintercept = -2) +
  facet_wrap(~label) +
  scale_x_continuous(limits=c(0,24), breaks = seq(0,24,2),
                     labels = seq(0,24,2)) +
  geom_smooth(se = FALSE, color="black")


# --------------------------------------------
# density plot of kids who recovered
# --------------------------------------------
x3_dens3 = x3 %>% filter(agedays==3*30.4167) %>% mutate(label2 = "3 month measurement")
x3_dens6 = x3 %>% filter(agedays==6*30.4167) %>% mutate(label2 = "6 month measurement")
x3_dens9 = x3 %>% filter(agedays==9*30.4167) %>% mutate(label2 = "9 month measurement")
x3_dens12 = x3 %>% filter(agedays==12*30.4167) %>% mutate(label2 = "12 month measurement")

x6_dens6 = x6 %>% filter(agedays==6*30.4167) %>% mutate(label2 = "6 month measurement")
x6_dens9 = x6 %>% filter(agedays==9*30.4167) %>% mutate(label2 = "9 month measurement")
x6_dens12 = x6 %>% filter(agedays==12*30.4167) %>% mutate(label2 = "12 month measurement")

x9_dens9 = x9 %>% filter(agedays==9*30.4167) %>% mutate(label2 = "9 month measurement")
x9_dens12 = x9 %>% filter(agedays==12*30.4167) %>% mutate(label2 = "12 month measurement")

x_dens = bind_rows(x3_dens3, x3_dens6, x3_dens9, x3_dens12,
                   x6_dens6, x6_dens9, x6_dens12,
                   x9_dens9, x9_dens12)

x_dens = x_dens %>% mutate(label2 = factor(label2, levels=
                                             c("3 month measurement",
                                               "6 month measurement",
                                               "9 month measurement",
                                               "12 month measurement")))

# distribution plot of kids who recovered
ggplot(x_dens, aes(x=haz)) + 
  geom_density(aes(fill=label2), alpha=0.75) + 
  facet_wrap(~label) +
  scale_fill_manual("", values = c("#1B4F72", "#2E86C1", "#85C1E9","#EBF5FB"), 
                    guide = guide_legend()) +
  theme(legend.position="bottom")

















# # IGNORE EVERYTHING BELOW HERE
# # impute study id
# d <- d %>% 
#   mutate(
#     studyid = case_when(
#       subjid<29 ~ 1,
#       subjid>=29 ~ 2
#   ),
#     country = case_when(
#       subjid<29 ~ "Country 1",
#       subjid>=29 ~ "Country 2"
#     )
# 
# )
# 
# # subset to monthly data
# # d <- d %>% filter(measurefreq=="monthly")
# 
# # create age in months
# d <- d %>% mutate(agem=agedays/30.4167)
# 
# # sort data
# d <- d %>% arrange(subjid, agedays)
# 
# # make subjid character
# d <- d %>% ungroup() %>% mutate(subjid=as.character(subjid))
# 
# # define age windows with 2 week buffer around age point
# # (ie, for 6 months, consider recovery in the window  up to 7 months)
# d = d %>% 
#   mutate(agecat=ifelse(agedays==1,"Birth",
#                        ifelse(agedays>1 & agedays<=3.5*30.4167,"3 months",
#                               ifelse(agedays>3.5*30.4167 & agedays<=6.5*30.4167,"6 months",
#                                      ifelse(agedays>6.5*30.4167 & agedays<=9.5*30.4167,"9 months",
#                                             ifelse(agedays>9.5*30.4167 & agedays<=12.5*30.4167,"12 months",
#                                                    ifelse(agedays>12.5*30.4167 & agedays<=15.5*30.4167,"15 months",
#                                                           ifelse(agedays>15.5*30.4167 & agedays<=18.5*30.4167,"18 months",
#                                                                  ifelse(agedays>18.5*30.4167 & agedays<=21.5*30.4167,"21 months",
#                                                                         ifelse(agedays>21.5*30.4167 & agedays<=24.5*30.4167,"24 months",
#                                                                                ifelse(agedays>24.5*30.4167 & agedays<=27.5*30.4167,"27 months",
#                                                                                       ifelse(agedays>27.5*30.4167 & agedays<=30.5*30.4167,"30 months",
#                                                                                              ifelse(agedays>30.5*30.4167 & agedays<=33.5*30.4167,"33 months",
#                                                                                                     ifelse(agedays>33.5*30.4167 & agedays<=36.5*30.4167,"36 months",
#                                                                                                            ifelse(agedays>36.5*30.4167 & agedays<=39.5*30.4167,"39 months",
#                                                                                                                   ifelse(agedays>39.5*30.4167 & agedays<=42.5*30.4167,"42 months",
#                                                                                                                          ifelse(agedays>42.5*30.4167 & agedays<=45.5*30.4167,"45 months",
#                                                                                                                                 ifelse(agedays>45.5*30.4167& agedays<=48.5*30.4167,"48 months","")))))))))))))))))) %>%
#   mutate(agecat=factor(agecat,levels=c("Birth","3 months","6 months","9 months","12 months","18 months","24 months",
#                                        "27 months", "30 months", "33 months", "36 months", "39 months", "42 months", 
#                                        "45 months", "48 months")))
# # check age categories
# d %>%
#   group_by(agecat) %>%
#   summarise(n=sum(!is.na(agedays)),
#             min=min(agedays/30.4167),
#             mean=mean(agedays/30.4167,na.rm=TRUE),
#             max=max(agedays/30.4167))
# 
# d$agem=round(d$agem)
# 
# 
# # stunted by age x, recovered by age y
# # children with recovery=NA didn't have 2 measurements
# # in the age window, so recovery could not be assessed
# rec.03=rec.age(data=d,s.agem=1,r.agem=3)
# rec.36=rec.age(data=d,s.agem=3,r.agem=6)
# rec.69=rec.age(data=d,s.agem=6,r.agem=9)
# rec.912=rec.age(data=d,s.agem=9,r.agem=12)
# rec.1215=rec.age(data=d,s.agem=12,r.agem=15)
# rec.1518=rec.age(data=d,s.agem=15,r.agem=18)
# rec.1821=rec.age(data=d,s.agem=18,r.agem=21)
# rec.2124=rec.age(data=d,s.agem=21,r.agem=24)
# 
# # mean LAZ for 


