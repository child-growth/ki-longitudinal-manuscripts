

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())


#Load mortality outcomes
df <- mort <- readRDS("U:/UCB-SuperLearner/Manuscript analysis data/mortality.rds")
mort <- mort %>% filter(!is.na(agedth)) %>%
  subset(., select = -c(agedays))

df <- df %>% filter(!(studyid %in% c("ki1055867-WomenFirst","ki1000301-DIVIDS","ki0047075b-MAL-ED", 
                                     "ki1000304b-SAS-FoodSuppl", "ki1017093b-PROVIDE", "ki1066203-TanzaniaChild2", "ki1113344-GMS-Nepal"))) #drop studies qith too few outcomes
length(unique(df$studyid[!is.na(df$dead),]))
table(df$dead)
df %>% group_by(studyid, subjid) %>% slice(1) %>% ungroup() %>% 
  summarize(sum(dead, na.rm=T), n())




#  load full data
dfull<-fread("U:/data/Stunting/Full-compiled-data/FINAL.csv", header = T)


#--------------------------------------------
# Subset to  just identifying and haz data
#--------------------------------------------

#change names to lower case
colnames(dfull) <- tolower(colnames(dfull))
d<-dfull %>% subset(., select=c(studyid, subjid, country, tr, agedays, haz, whz, waz, muaz))

#--------------------------------------------
# Examine the number of obs and children in extra studies
#--------------------------------------------

df2 <- d %>% filter(studyid %in% c("ki1112895-Burkina Faso Zn","ki1000304-VITAMIN-A","ki1148112-iLiNS-DOSE","ki1148112-iLiNS-DYAD-M")) %>% filter(!is.na(haz)) %>%
            filter(haz > (-6) & haz < 6, whz > (-5) & whz < 5)
df2 %>% group_by(studyid, subjid) %>% slice(1) %>% ungroup() %>% 
  summarize(n())
df2 %>%  summarize(n())


#--------------------------------------------
# Subset to  just identifying and haz data
#--------------------------------------------

#convert subjid to character for the merge with covariate dataset
d$subjid <- as.character(d$subjid)
mort$subjid <- as.character(mort$subjid)

dim(mort)
df_full <- left_join(mort, d, by=c("studyid","country","subjid"))
dim(df_full)

df <- df_full %>% filter(!is.na(haz))


unique(df$studyid)
df <- df %>% filter(!(studyid %in% c("ki1055867-WomenFirst","ki1000301-DIVIDS")))

df <- df %>% filter(agedays <= agedth)

df <- df %>% ungroup() %>% arrange(agedth) %>% 
             mutate(id = paste0(studyid, " ", country," ", subjid),
                    id = factor(id, levels=unique(id)),
                    wast=ifelse(whz< (-2),1,0),
                    stunt=ifelse(haz< (-2),1,0),
                    underweight=ifelse(waz< (-2),1,0),
                    sevwast=ifelse(whz< (-3),1,0),
                    sevstunt=ifelse(haz< (-3),1,0),
                    sevunderweight=ifelse(waz< (-3),1,0),
                    co=ifelse(whz< (-2) & haz< (-2),1,0),
                    whz_change=lead(whz) - whz,
                    haz_change=lead(haz) - haz
                    ) %>%
            mutate(status = case_when(
              sevstunt==0 & sevwast==0 & co==1   ~ "Wasted and stunted",
              wast==1 & sevwast==0 & co==0   ~ "Wasted",
              wast==1 & sevwast==1   ~ "Severely wasted",
              stunt==1 & sevstunt==0 & co==0   ~ "Stunted",
              stunt==1 & sevstunt==1   ~ "Severely stunted",
              sevstunt==1 & sevwast==1~ "Co-occurrent severe wasting and stunting",
              TRUE ~ "Not faltered"
            )) %>%
  mutate(status = factor(status, levels = c("Not faltered", 
                                              #"Recovered",
                                              "Stunted",
                                              #"Underweight",       
                                              "Wasted",                                             
                                              # "Stunted+Underweight",                                              
                                              # "Wasted+Underweight",                                             
                                              # "Wasted+Stunted+Underweight"
                                              "Severely stunted",
                                              "Severely wasted",
                                              "Wasted and stunted",
                                              "Co-occurrent severe wasting and stunting"
  )))



df$severe <- ifelse(df$status %in% c("Severely stunted", "Severely wasted", "Co-occurrent severe wasting and stunting"), "Severe", "Not severe")
df$severe2 <- ifelse(df$status %in% c("Severely stunted", "Severely wasted", "Co-occurrent severe wasting and stunting", "Wasted and stunted"), "Severe", "Not severe")

df$status2 <- "Not faltered"
df$status2[grepl("asted",df$status)] <- "Wasted"
df$status2[grepl("tunted",df$status)] <- "Stunted"
df$status2[df$status=="Wasted and stunted"] <- "Wasted and stunted"
df$status2 <- factor(df$status2, levels=c("Not faltered", "Stunted", "Wasted", "Wasted and stunted"))
table(df$status2)
summary(df$haz_change)
summary(df$whz_change)

df$haz_change_cat <- cut(df$haz_change, breaks = c(-100,-1,1,100), labels = c("> 1 SD decrease","< 1 SD change","> 1 SD increase"))
df$whz_change_cat <- cut(df$whz_change, breaks = c(-100,-1,1,100), labels = c("> 1 SD decrease","< 1 SD change","> 1 SD increase"))

#-----------------------------------------
# define hybrid color palette
#   -Get colors from co-occurrence flow plot
#-----------------------------------------

n=8
viridis_cols = viridis(
  n = n,
  alpha = 1,
  begin = 0,
  end = 1,
  direction = 1,
  option = "C"
)

 
plot_cols = rev(brewer.pal(n = 6, name = "PiYG"))

#Colors 1 and 2 are never faltered and recovered

#Stunting
plot_cols[2] = tableau10[1]
plot_cols[4] = tableau10[1]

#Underweight
#plot_cols[4] = tableau10[1]

#Wasting
plot_cols[3] = tableau10[2]
plot_cols[5] = tableau10[2]

#Combination of faltering:
# plot_cols[6] = viridis_cols[8]
# plot_cols[7] = viridis_cols[8]
plot_cols[6] = tableau10[5]
plot_cols[7] = tableau10[5]

plot_cols2 <- plot_cols[c(1,2,3,6)]

#drop deaths after 2 years
df <- df %>% filter(agedth < 731) #%>% 
  #mutate(id=paste0(studyid,subjid))

p <- ggplot() + 
  geom_point(data = df, aes(x=agedth, y=id), color="grey40") +
  geom_point(data = df, aes(x=agedays, y=id, color=status2, alpha=severe2, shape=severe)) +
  scale_color_manual("", values = plot_cols2, guide=guide_legend(title="Growth faltering")) +
  scale_shape_discrete(guide=guide_legend(title="Severity")) +
  scale_alpha_discrete(range=c(0.5, 1), guide=guide_legend(title="Severity")) +
  coord_cartesian(xlim=c(0, 730)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 0:24*30.41, labels = 0:24) +
  ylab("Child") + xlab("Age in months") + theme_bw() +
  theme(axis.text.y = element_blank(),
        axis.ticks.y = element_blank(),
        plot.background = element_rect(fill = "white", color = NA),
        legend.position = c(0.8, 0.3)) 
print(p)


ggsave(p, file=paste0(here::here(),"/figures/risk factor/fig-mortality-timing.png"), width=8, height=5)

#Save plot object
save(p, file=paste0(here::here(),"/figures/risk factor/fig-mortality-timing-plot-object.Rdata"))

# p <- ggplot() + 
#   geom_point(data = df, aes(x=agedth, y=id)) +
#   #geom_point(data = df, aes(x=agedays, y=id, color=status), alpha=0.5) +
#   geom_line(data = df, aes(x=agedays, y=id, color=whz_change_cat, group=id)) +
#   #scale_color_manual("", values = plot_cols) +
#   coord_cartesian(xlim=c(0, 730)) +
#   ylab("") + xlab("Age in months") +
#   theme(axis.text.y = element_blank(),
#         axis.ticks.y = element_blank(),
#         legend.position = c(0.8, 0.3))+
#   scale_color_viridis(na.value="grey90", option = "C", discrete = T,
#                       direction = -1,
#                       end = 0.8,
#                       guide=guide_legend(title="Mean WLZ",title.vjust = 1,
#                                          label.position="bottom",label.hjust=0.5,nrow=1))
# print(p)

