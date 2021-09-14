

rm(list = ls())

source(paste0(here::here(), "/0-config.R"))

d <- readRDS(rf_co_occurrence_path) %>% filter(measurefreq == "monthly", agedays < 730)

#Only include children with at least 4 measures
d <- d %>% group_by(studyid, country, subjid) %>% mutate(N=n()) %>% filter(N >= 4)

#Proportion of measurements crossing -2 

#remove outliers
d <- d %>% mutate(
  haz=case_when(abs(haz)<6 ~ haz),
  whz=case_when(abs(whz)<5 ~ whz),
  waz=case_when(waz > -6 & waz < 5 ~ waz),
)
summary(d$waz)

#SD
df<- d %>% group_by(studyid, country, region, subjid) %>% 
  summarize(SDwhz=sd(whz),SDhaz=sd(haz),SDwaz=sd(waz)) %>% ungroup() 

ggplot(df, aes(x=SDwhz, group=region, fill=region, color=region)) +geom_density(alpha=0.5) +theme(legend.position = "right") #+ facet_wrap(~region)
ggplot(df, aes(x=SDwhz, group=country, fill=country, color=country)) +geom_density(alpha=0.5) +theme(legend.position = "right") + facet_wrap(~region)

df %>%
  summarize(mean(SDwhz, na.rm=T), mean(SDhaz, na.rm=T), mean(SDwaz, na.rm=T))

df2 <- d %>% group_by(studyid, country, region, subjid) %>% 
  mutate(change=whz-lag(whz)) %>% 
  summarize(change=mean(abs(change), na.rm=T)) %>%
  ungroup() 
ggplot(df2, aes(x=change, group=region, fill=region, color=region)) +geom_density(alpha=0.5) +theme(legend.position = "right") #+ facet_wrap(~region)


df3 <- d %>% group_by(studyid, country, region, subjid) %>% 
  summarize(whz=mean(whz, na.rm=T)) %>%
  group_by(studyid, country, region) %>%
  summarize(SDwhz=sd(whz)) %>% ungroup() 
ggplot(df3, aes(x=SDwhz, group=region, fill=region, color=region)) +geom_density(alpha=0.5) +theme(legend.position = "right") #+ facet_wrap(~region)


#Look at variability in wasting incidence by cohort/region
load(paste0(ghapdata_dir, "Wasting_inc_data.RData"))

#Subset to monthly
d <- d %>% filter(measurefreq == "monthly") %>% filter(agedays < 730)
head(d)

#mean number of wasting episodes per child
df <- d %>% group_by(studyid, region, country, subjid) %>% 
  summarize(num_wast=sum(wast_inc), first_meas=min(agedays), last_meas=max(agedays), num_meas=n()) 

head(df)
df <- df  %>% group_by(studyid, country) %>% 
  mutate(first_meas=median(first_meas), last_meas=median(last_meas), num_meas=median(num_meas)) %>%
  #make sure followup time it the same
  filter(first_meas<40, last_meas>600, num_meas>-20 , num_meas<30) %>%
  mutate(region=factor(region, levels=c("Overall", "Africa","Latin America","South Asia")))

df  %>% group_by(studyid, country) %>% slice(1) %>% as.data.frame()

wast_IQR=df %>% group_by(region) %>% do(res=IQR(.$num_wast))
wast_IQR$res

#median and IQR 
IQR(df$num_wast)
fivenum(df$num_wast)
summary(df$num_wast)

#mean duration of wasting
p<-ggplot(df, aes(x=num_wast, group=region, color=region, fill=region)) + 
  geom_histogram(aes(y=..density..), binwidth = 0.5) + 
  scale_y_continuous(breaks = c(.2,.4,.6,.8), labels=c("20%","40%","60%","80%")) +
  scale_color_manual(values=rep("grey30",3)) +
  scale_fill_manual(values=tableau10) +
  coord_cartesian(expand = c(0,0), ylim=c(0,1)) +
  ylab("") + xlab("N episodes") +
  facet_wrap(~region)

df$mean_sd <- paste0(sprintf("%.2f",mean(df$num_wast))," (",sprintf("%.2f",sd(df$num_wast)),")")
p_overall <- ggplot(df, aes(x=num_wast), color="grey30", fill="grey30") + 
  geom_histogram(aes(y=..density..), binwidth = 1) + 
  geom_text(aes(x=2, y=.8, label=mean_sd)) +
  scale_y_continuous(breaks = c(.2,.4,.6,.8), labels=c("20%","40%","60%","80%")) +
  scale_x_continuous(breaks = 0:4, limits = c(-.5,4.5)) +
  coord_cartesian(expand = c(0,0), ylim=c(0,1)) +
  ylab("") + xlab("N episodes") +
  theme(axis.title=element_text(size=10)) 

df_Africa <- df %>% filter(region=="Africa") 
df_Africa$mean_sd <- paste0(sprintf("%.2f",mean(df_Africa$num_wast))," (",sprintf("%.2f",sd(df_Africa$num_wast)),")")
df_Africa$mean_sd[-1] <- NA
p_Africa <- ggplot(df_Africa, aes(x=num_wast)) + 
  geom_histogram(aes(y=..density..), binwidth = 1,  color="grey30", fill=tableau10[1]) + 
  geom_text(aes(x=2, y=.8, label=mean_sd)) +
  scale_y_continuous(breaks = c(.2,.4,.6,.8), labels=c("20%","40%","60%","80%")) +
  scale_x_continuous(breaks = 0:4, limits = c(-.5,4.5)) +
  coord_cartesian(expand = c(0,0), ylim=c(0,1)) +
  ylab("") + xlab("N episodes") +
  theme(axis.title=element_text(size=10)) 

df_LatinAmerica <- df %>% filter(region=="Latin America") 
df_LatinAmerica$mean_sd <- paste0(sprintf("%.2f",mean(df_LatinAmerica$num_wast))," (",sprintf("%.2f",sd(df_LatinAmerica$num_wast)),")")
df_LatinAmerica$mean_sd[-1] <- NA
p_LatinAmerica <- ggplot(df_LatinAmerica, aes(x=num_wast)) + 
  geom_histogram(aes(y=..density..), binwidth = 1,  color="grey30", fill=tableau10[2]) + 
  geom_text(aes(x=2, y=.8, label=mean_sd)) +
  scale_y_continuous(breaks = c(.2,.4,.6,.8), labels=c("20%","40%","60%","80%")) +
  scale_x_continuous(breaks = 0:4, limits = c(-.5,4.5)) +
  coord_cartesian(expand = c(0,0), ylim=c(0,1)) +
  ylab("") + xlab("N episodes") +
  theme(axis.title=element_text(size=10)) 

df_SouthAsia <- df %>% filter(region=="South Asia")
df_SouthAsia$mean_sd <- paste0(sprintf("%.2f",mean(df_SouthAsia$num_wast))," (",sprintf("%.2f",sd(df_SouthAsia$num_wast)),")")
df_SouthAsia$mean_sd[-1] <- NA
p_SouthAsia <- ggplot(df_SouthAsia, aes(x=num_wast)) + 
  geom_histogram(aes(y=..density..), binwidth = 1,  color="grey30", fill=tableau10[3]) + 
  geom_text(aes(x=2, y=.8, label=mean_sd)) +
  scale_y_continuous(breaks = c(.2,.4,.6,.8), labels=c("20%","40%","60%","80%")) +
  scale_x_continuous(breaks = 0:4, limits = c(-.5,4.5)) +
  coord_cartesian(expand = c(0,0), ylim=c(0,1)) +
  ylab("") + xlab("N episodes") +
  theme(axis.title=element_text(size=10))


ggsave(p, file=paste0(BV_dir,"/figures/wasting/wast_episode_hist.png"), width=4.5, height=2.5)
ep_hist<-list(p_overall, p_Africa, p_LatinAmerica, p_SouthAsia, df_Africa)
saveRDS(ep_hist, file=paste0(BV_dir,"/figures/plot-objects/wast_episode_hist.rds"))


inc_plot <- readRDS(paste0(BV_dir,"/figures/plot-objects/inc_plot_object.rds"))$plot


annotation_custom2 <- function (grob, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf, data) 
{
  layer(data = data %>% mutate(region=factor(region, levels=c("Overall", "Africa","Latin America","South Asia"))),
        stat = StatIdentity, position = PositionIdentity, 
        geom = ggplot2:::GeomCustomAnn,
        inherit.aes = TRUE, params = list(grob = grob, 
                                          xmin = xmin, xmax = xmax, 
                                          ymin = ymin, ymax = ymax))
}

inc_plot2 <- inc_plot + theme(legend.pos = c(0.1,-.225),
                              legend.key.size = unit(0.1, "cm"),
                              legend.key = element_rect(fill = "transparent", colour = "transparent"))

inc_plot2

# inc_plot2 <- inc_plot + theme(legend.position = "bottom")
# inc_plot2

full_plot <-  inc_plot2 +
  annotation_custom2(ggplotGrob(p_overall), data=data.frame(region="Overall", agecat="0-3", est=0),
                     xmin=3, xmax=8.8, ymin=3, ymax=10.8) +
  annotation_custom2(ggplotGrob(p_SouthAsia), data=data.frame(region="South Asia", agecat="0-3", est=0),
                     xmin=3, xmax=8.8, ymin=3, ymax=10.8) +
  annotation_custom2(ggplotGrob(p_Africa), data=data.frame(region="Africa", agecat="12-15", est=0),
                     xmin=3, xmax=8.8, ymin=3, ymax=10.8) +
  annotation_custom2(ggplotGrob(p_LatinAmerica), data=data.frame(region="Latin America", agecat="12-15", est=0),
                     xmin=3, xmax=8.8, ymin=3, ymax=10.8) 
full_plot
 
saveRDS(full_plot, paste0(BV_dir,"/figures/plot-objects/inc_plot_object_inset.rds"))


# #Add histogram insets
# #https://www.blopig.com/blog/2019/08/combining-inset-plots-with-facets-using-ggplot2/
# ## This function allows us to specify which facet to annotate
# annotation_custom2 <- function (grob, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf, data){
#   layer(data = data, stat = StatIdentity, position = PositionIdentity, 
#         geom = ggplot2:::GeomCustomAnn,
#         inherit.aes = TRUE, params = list(grob = grob, 
#                                           xmin = xmin, xmax = xmax, 
#                                           ymin = ymin, ymax = ymax))
# }
# 
# temp <- inc_plot[[1]] + 
#   annotation_custom2(grob=ggplotGrob(ep_hist[[1]]), 
#                      data = data.frame(category="Overall"),
#                      ymin =1, ymax=10, xmin=0, xmax=20)
# temp
# 
