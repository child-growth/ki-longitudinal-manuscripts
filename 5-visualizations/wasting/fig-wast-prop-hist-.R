

rm(list = ls())

source(paste0(here::here(), "/0-config.R"))

d <- readRDS(wasting_data_path) %>% filter(measurefreq == "monthly", agedays < 730)

#Only include children with at least 2 measures
d <- d %>% group_by(studyid, country, subjid) %>% mutate(N=n()) %>% filter(N >= 2)


#Subset to monthly
d <- d %>% filter(measurefreq == "monthly") %>% filter(agedays < 730)

#look at proportion of episodes wasted
head(d)
d_propinc <- d %>% filter(!is.na(whz)) %>% group_by(studyid, subjid, region) %>% summarise(prop_wast=mean(whz < (-2))*100)
summary(d_propinc$prop_wast)


temp <- d_propinc %>% mutate(region="Overall")
plotdf <- bind_rows(d_propinc, temp) %>% mutate(region=factor(region, levels=c("Overall","Africa","Latin America","South Asia")))


p <- ggplot(plotdf, aes(x = prop_wast, color=region, fill=region)) +  
  geom_histogram(aes(y = stat(density) * 500), binwidth = 5) + 
  #facet_wrap(~region, scales = "free") +   
  facet_wrap(~region, nrow=1) +   
  ylab("Percent of children") + 
  xlab("Percent of measurements where child was wasted") +
  scale_x_continuous(expand=c(0,0), breaks=c(0,20,40,60,80)) +
  scale_y_continuous(expand = expansion(add = c(0, 5))) +
  #scale_y_continuous(expand=c(0.1,0.1)) +
  scale_color_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C")) + 
  scale_fill_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C")) + 
  theme_ki() 
p

#Add pretty breaks with more


# p_inset <- ggplot(plotdf %>% filter(prop_wast>0), aes(x = prop_wast, color=region, fill=region)) +
#   geom_histogram(aes(y = stat(density) * 500), binwidth = 5) +
#   #facet_wrap(~region, scales = "free") +   
#   facet_wrap(~region) +   
#   ylab("Percent of children") +
#   xlab("Percent of measurements where child was wasted") +
#   scale_x_continuous(expand=c(0,0)) +
#   scale_y_continuous(expand = expansion(add = c(0, 5))) +
#   scale_color_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C")) +
#   scale_fill_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C")) +
#   theme_ki()
# p_inset


p_overall <- ggplot(plotdf %>% filter(prop_wast>0, region=="Overall"), aes(x = prop_wast, color=region, fill=region)) +
  geom_histogram(aes(y = stat(density) * 500), binwidth = 5) + ylab(NULL) + xlab(NULL) +
  scale_x_continuous(limits=c(1,100), expand=c(0,0), breaks=c(0,20,50,80)) +
  scale_y_continuous(expand = expansion(add = c(0, 5))) +
  scale_color_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C"), drop=F) +
  scale_fill_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C"), drop=F) +
  theme_ki()

p_LatinAmerica <- ggplot(plotdf %>% filter(prop_wast>0, region=="Latin America"), aes(x = prop_wast, color=region, fill=region)) +
  geom_histogram(aes(y = stat(density) * 500), binwidth = 5) + ylab(NULL) + xlab(NULL) +
  scale_x_continuous(limits=c(1,100), expand=c(0,0), breaks=c(0,20,50,80)) +
  scale_y_continuous(expand = expansion(add = c(0, 5))) +
  scale_color_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C"), drop=F) +
  scale_fill_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C"), drop=F) +
  theme_ki()

p_Africa <- ggplot(plotdf %>% filter(prop_wast>0, region=="Africa"), aes(x = prop_wast, color=region, fill=region)) +
  geom_histogram(aes(y = stat(density) * 500), binwidth = 5) + ylab(NULL) + xlab(NULL) +
  scale_x_continuous(limits=c(1,100), expand=c(0,0), breaks=c(0,20,50,80)) +
  scale_y_continuous(expand = expansion(add = c(0, 5))) +
  scale_color_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C"), drop=F) +
  scale_fill_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C"), drop=F) +
  theme_ki()

p_SouthAsia <- ggplot(plotdf %>% filter(prop_wast>0, region=="South Asia"), aes(x = prop_wast, color=region, fill=region)) +
  geom_histogram(aes(y = stat(density) * 500), binwidth = 5) + ylab(NULL) + xlab(NULL) +
  scale_x_continuous(limits=c(1,100), expand=c(0,0), breaks=c(0,20,50,80)) +
  scale_y_continuous(expand = expansion(add = c(0, 5))) +
  scale_color_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C"), drop=F) +
  scale_fill_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C"), drop=F) +
  theme_ki()




annotation_custom2 <- function (grob, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf, data) 
{
  layer(data = data %>% mutate(region=factor(region, levels=c("Overall", "Africa","Latin America","South Asia"))),
        stat = StatIdentity, position = PositionIdentity, 
        geom = ggplot2:::GeomCustomAnn,
        inherit.aes = TRUE, params = list(grob = grob, 
                                          xmin = xmin, xmax = xmax, 
                                          ymin = ymin, ymax = ymax))
}

x_min=10
x_max=100
y_min=10
y_max=100
  

full_plot <-  p 
# full_plot <-  p +
#   annotation_custom2(ggplotGrob(p_overall), data=data.frame(region="Overall", prop_wast=0),
#                      xmin=x_min, xmax=x_max, ymin=y_min, ymax=y_max) +
#   annotation_custom2(ggplotGrob(p_SouthAsia), data=data.frame(region="South Asia", prop_wast=0),
#                      xmin=x_min, xmax=x_max, ymin=y_min, ymax=y_max) +
#   annotation_custom2(ggplotGrob(p_Africa), data=data.frame(region="Africa", prop_wast=0),
#                      xmin=x_min, xmax=x_max, ymin=y_min, ymax=y_max) +
#   annotation_custom2(ggplotGrob(p_LatinAmerica), data=data.frame(region="Latin America", prop_wast=0),
#                      xmin=x_min, xmax=x_max, ymin=y_min, ymax=y_max) 
#   full_plot




# save plot 
ggsave(full_plot, file=paste0(BV_dir,"/figures/wasting/fig-supp-5b-wast-prop-histogram.png"), width=6, height=5)

#ggsave(p, file=paste0(BV_dir,"/figures/wasting/pooled_pers024.png"), width=8, height=5)

