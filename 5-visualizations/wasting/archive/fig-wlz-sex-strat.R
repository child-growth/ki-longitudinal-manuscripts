
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load data
d <- readRDS(paste0(here::here(),"/results/sex_strat_wasting_desc_data.RDS"))
quantiles <- readRDS(paste0(here::here(),"/results/quantile_data_wasting_sex_strat.RDS"))
quantiles.BW <- readRDS(paste0(here::here(),"/results/quantile_data_wasting_sex_BW_strat.RDS"))


d$est[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] <-
  d$est[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] * 100
d$lb[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] <-
  d$lb[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] * 100
d$ub[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] <-
  d$ub[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" )] * 100

#d %>% filter(measure=="Prevalence", disease=="co-occurrence", cohort!="pooled")

d$nmeas.f <- clean_nmeans(d$nmeas)
d$nstudy.f <- gsub("N=","",d$nstudy.f)
d$nmeas.f <- gsub("N=","",d$nmeas.f)
d$nstudy.f <- gsub(" studies","",d$nstudy.f)
d$nmeas.f <- gsub(" children","",d$nmeas.f)


#-------------------------------------------------------------------------------------------
# Mean WLZ by month 
#-------------------------------------------------------------------------------------------

df <- d %>% filter(
  disease == "wasting" &
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
  facet_wrap(~sex)+
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10),
                     limits = c(-1, 0.5)) +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) +
  scale_fill_manual(values=tableau11, drop=TRUE, 
                    name = 'Region') +
  scale_color_manual(values=tableau11, drop=TRUE,
                     name = 'Region') +
  xlab("Child age, months")+
  ylab("Weight-for-length Z-score") +
  ggtitle("") +
  theme(legend.position="right")

ggsave(p, file=here::here("/figures/wasting/WLZ_by_sex.png"), width=10, height=4)


df2 <- df %>% mutate(agecat=ifelse(agecat==0.5,0,agecat))

p <- ggplot(df2,aes(y=est,x=agecat, group=sex, color=sex)) +
  geom_point(aes(fill=sex), position = position_dodge(0.5)) +
  geom_errorbar(aes(ymin=lb, ymax=ub), width = 0, position = position_dodge(0.5)) +
  facet_wrap(~region) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10),
                     limits = c(-1.5, 2)) +
  scale_x_continuous(limits = c(-0.5,24.5), breaks = seq(0,24,2), labels = seq(0,24,2)) +
  scale_fill_manual(values=tableau10, drop=TRUE, name = 'Sex') +
  scale_color_manual(values=tableau10, drop=TRUE, name = 'Sex') +
  xlab("Child age, months") +
  ylab("Weight-for-length Z-score") +
  ggtitle("") +
  coord_cartesian(xlim = c(0,24), ylim = c(-1.4, 1.7)) +
  theme(legend.position="bottom")

p

ggsave(p, file=here::here("/figures/wasting/WLZ_by_sex_alt.png"), width=10, height=8)



#-------------------------------------------------------------------------------------------
# Mean WLZ by month - birthweight strat
#-------------------------------------------------------------------------------------------

df <- d %>% filter(
  disease == "wasting" &
    measure == "Mean WLZ - BW" & 
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
  filter(!is.na(birthwt)) %>%
  mutate(agecat = as.character(agecat)) %>%
  mutate(agecat = ifelse(agecat == "Two weeks", ".5", agecat)) %>%
  mutate(agecat = gsub(" month", "", agecat)) %>%
  mutate(agecat = gsub(" months", "", agecat)) %>%
  mutate(agecat = gsub("s", "", agecat)) %>%
  mutate(agecat = ifelse(agecat == "One", "1", agecat)) %>%
  mutate(agecat = as.numeric(agecat)) 


p <- ggplot(df,aes(y=est,x=agecat, group=region)) +
  stat_smooth(aes(fill=region, color=region), se=F, span = 1) +
  facet_wrap(birthwt~sex)+
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10),
                     limits = c(-1.5, 0.5)) +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) +
  scale_fill_manual(values=tableau11, drop=TRUE, 
                    name = 'Region') +
  scale_color_manual(values=tableau11, drop=TRUE,
                     name = 'Region') +
  xlab("Child age, months")+
  ylab("Weight-for-length Z-score") +
  ggtitle("") +
  theme(legend.position="right")

ggsave(p, file=here::here("/figures/wasting/WLZ_by_sex_and_BW.png"), width=10, height=4)



df2 <- df %>% mutate(agecat=ifelse(agecat==0.5,0,agecat))

p <- ggplot(df2,aes(y=est,x=agecat, group=sex, color=sex)) +
  geom_point(aes(fill=sex), position = position_dodge(0.5)) +
  geom_errorbar(aes(ymin=lb, ymax=ub), width = 0, position = position_dodge(0.5)) +
  facet_wrap(region~birthwt, ncol=2) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10),
                     limits = c(-2.5, 1.1)) +
  scale_x_continuous(limits = c(-0.5,24.5), breaks = seq(0,24,2), labels = seq(0,24,2)) +
  scale_fill_manual(values=tableau10, drop=TRUE, name = 'Sex') +
  scale_color_manual(values=tableau10, drop=TRUE, name = 'Sex') +
  xlab("Child age, months") +
  ylab("Weight-for-length Z-score") +
  ggtitle("") +
  coord_cartesian(xlim = c(0,24), ylim = c(-2.5, 1)) +
  theme(legend.position="bottom")

p


ggsave(p, file=here::here("/figures/wasting/wlz_by_sex_and_BW_alt.png"), width=10, height=4)


#-------------------------------------------------------------------------------------------
# Mean WLZ by month with quantiles
#-------------------------------------------------------------------------------------------

quantile_d_overall <- quantiles$quantile_d_overall %>% mutate(region="Overall")
df <- rbind(quantile_d_overall, quantiles$quantile_d)

df$agecat <- factor(df$agecat, 
                    levels=c("Two weeks", "One month",
                             paste0(2:24," months")))

df <- df %>% 
  arrange(agecat) %>%
  filter(region!="Europe")
df <-droplevels(df)

df <- df %>% 
  ungroup(agecat) %>%
  arrange(agecat) %>%
  filter(!is.na(agecat)) %>%
  filter(!is.na(region)) %>%
  mutate(agecat = as.character(agecat)) %>%
  mutate(agecat = ifelse(agecat == "Two weeks", ".5", agecat)) %>%
  mutate(agecat = gsub(" month", "", agecat)) %>%
  mutate(agecat = gsub(" months", "", agecat)) %>%
  mutate(agecat = gsub("s", "", agecat)) %>%
  mutate(agecat = ifelse(agecat == "One", "1", agecat)) %>%
  mutate(agecat = as.numeric(agecat)) %>%
  mutate(region = ifelse(region=="Asia", "South Asia", region)) %>% 
  gather(`ninetyfifth_perc`, `fiftieth_perc`, `fifth_perc`, key = "interval", value = "WLZ") %>% 
  mutate(region = factor(region, levels = c("Overall", "Africa", "Latin America", "South Asia")))


mean_wlz_plot <- ggplot(df,aes(x = agecat, group = region)) +
  geom_smooth(aes(y = WLZ, color = region, group = interval, linetype = interval), se = F, span = 1) +
  facet_wrap(region~sex, nrow=2) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) + 
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) + 
  scale_color_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C"), drop=TRUE, limits = levels(df$measure), 
                     name = 'Region') +
  scale_linetype_manual(name = "interval", values = c("fiftieth_perc" = "solid",
                                                      "ninetyfifth_perc" = "dashed",
                                                      "fifth_perc" = "dotted"),
                        breaks = c("fiftieth_perc",
                                   "ninetyfifth_perc",
                                   "fifth_perc"),
                        labels = c("Mean", "95th percentile", "5th percentile")) +
  xlab("Child age, months") +
  ylab("Weight-for-length Z-score") +
  ggtitle("") +
  theme(strip.text = element_text(margin=margin(t=5))) +
  guides(linetype = guide_legend(override.aes = list(col = 'black'), 
                                 keywidth = 3, keyheight = 1),
         colour = FALSE) +
  theme(legend.position = "bottom",
        legend.title = element_blank(),
        legend.background = element_blank(),
        legend.box.background = element_rect(colour = "black"))




# save plot and underlying data
ggsave(mean_wlz_plot, file=paste0(here::here(),"/figures/wasting/fig-wlz-2-mean-overall_region--allage-sex-stratified.png"), width=14, height=6)







df2 <- df %>% filter(region %in% c("Africa","South Asia"))
df2 <- droplevels(df2)
head(df2)


mean_wlz_plot2 <- ggplot(df2, aes(x = agecat, group = region)) +
  geom_smooth(aes(y = WLZ, color = region, group = interval, linetype = interval), se = F, span = 1) +
  facet_wrap(region~sex, nrow=2) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) + 
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) + 
  scale_color_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C"), drop=TRUE, limits = levels(df$measure), 
                     name = 'Region') +
  scale_linetype_manual(name = "interval", values = c("fiftieth_perc" = "solid",
                                                      "ninetyfifth_perc" = "dashed",
                                                      "fifth_perc" = "dotted"),
                        breaks = c("fiftieth_perc",
                                   "ninetyfifth_perc",
                                   "fifth_perc"),
                        labels = c("Mean", "95th percentile", "5th percentile")) +
  xlab("Child age, months") +
  ylab("Weight-for-length Z-score") +
  ggtitle("") +
  theme(strip.text = element_text(margin=margin(t=5))) +
  guides(linetype = guide_legend(override.aes = list(col = 'black'), 
                                 keywidth = 3, keyheight = 1),
         colour = FALSE) +
  theme(legend.position = "bottom",
        legend.title = element_blank(),
        legend.background = element_blank(),
        legend.box.background = element_rect(colour = "black"))




# save plot and underlying data
ggsave(mean_wlz_plot2, file=paste0(here::here(),
                    "/figures/wasting/fig-wlz-2-mean-overall_region--allage-sex-stratified2.png"), 
       width=8, height=6)





#-------------------------------------------------------------------------------------------
# Mean WLZ by month with quantiles - Birthweight strat
#-------------------------------------------------------------------------------------------

quantile_d_overall <- quantiles.BW$quantile_d_overall %>% mutate(region="Overall")
df <- rbind(quantile_d_overall, quantiles.BW$quantile_d)
df$birthwt <- gsub("or high ","", df$birthwt)


df$agecat <- factor(df$agecat, 
                    levels=c("Two weeks", "One month",
                             paste0(2:24," months")))

df <- df %>% 
  arrange(agecat) %>%
  filter(region!="Europe")
df <-droplevels(df)

df <- df %>% 
  ungroup(agecat) %>%
  arrange(agecat) %>%
  filter(!is.na(agecat)) %>%
  filter(!is.na(region)) %>%
  filter(!is.na(birthwt )) %>%
  mutate(agecat = as.character(agecat)) %>%
  mutate(agecat = ifelse(agecat == "Two weeks", ".5", agecat)) %>%
  mutate(agecat = gsub(" month", "", agecat)) %>%
  mutate(agecat = gsub(" months", "", agecat)) %>%
  mutate(agecat = gsub("s", "", agecat)) %>%
  mutate(agecat = ifelse(agecat == "One", "1", agecat)) %>%
  mutate(agecat = as.numeric(agecat)) %>%
  mutate(region = ifelse(region=="Asia", "South Asia", region)) %>% 
  gather(`ninetyfifth_perc`, `fiftieth_perc`, `fifth_perc`, key = "interval", value = "WLZ") %>% 
  mutate(region = factor(region, levels = c("Overall", "Africa", "Latin America", "South Asia")))


mean_wlz_plot <- ggplot(df,aes(x = agecat, group = region)) +
  geom_smooth(aes(y = WLZ, color = region, group = interval, linetype = interval), se = F, span = 1) +
  facet_wrap(region~birthwt+sex, nrow=2) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) + 
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) + 
  scale_color_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C"), drop=TRUE, 
                     name = 'Region') +
  scale_linetype_manual(name = "interval", values = c("fiftieth_perc" = "solid",
                                                      "ninetyfifth_perc" = "dashed",
                                                      "fifth_perc" = "dotted"),
                        breaks = c("fiftieth_perc",
                                   "ninetyfifth_perc",
                                   "fifth_perc"),
                        labels = c("Mean", "95th percentile", "5th percentile")) +
  xlab("Child age, months") +
  ylab("Weight-for-length Z-score") +
  ggtitle("") +
  theme(strip.text = element_text(margin=margin(t=5))) +
  guides(linetype = guide_legend(override.aes = list(col = 'black'), 
                                 keywidth = 3, keyheight = 1),
         colour = FALSE) +
  theme(legend.position = "bottom",
        legend.title = element_blank(),
        legend.background = element_blank(),
        legend.box.background = element_rect(colour = "black"))




# save plot and underlying data
ggsave(mean_wlz_plot, file=paste0(here::here(),"/figures/wasting/fig-wlz-2-mean-overall_region--allage-sex-BW-stratified.png"), width=14, height=6)







df2 <- df %>% filter(region %in% c("Africa","South Asia"))
df2 <- droplevels(df2)
head(df2)


mean_wlz_plot2 <- ggplot(df2, aes(x = agecat, group = region)) +
  geom_smooth(aes(y = WLZ, color = region, group = interval, linetype = interval), se = F, span = 1) +
  facet_wrap(region~birthwt+sex, nrow=2) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) + 
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) + 
  scale_color_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C"), drop=TRUE, limits = levels(df$measure), 
                     name = 'Region') +
  scale_linetype_manual(name = "interval", values = c("fiftieth_perc" = "solid",
                                                      "ninetyfifth_perc" = "dashed",
                                                      "fifth_perc" = "dotted"),
                        breaks = c("fiftieth_perc",
                                   "ninetyfifth_perc",
                                   "fifth_perc"),
                        labels = c("Mean", "95th percentile", "5th percentile")) +
  xlab("Child age, months") +
  ylab("Weight-for-length Z-score") +
  ggtitle("") +
  theme(strip.text = element_text(margin=margin(t=5))) +
  guides(linetype = guide_legend(override.aes = list(col = 'black'), 
                                 keywidth = 3, keyheight = 1),
         colour = FALSE) +
  theme(legend.position = "bottom",
        legend.title = element_blank(),
        legend.background = element_blank(),
        legend.box.background = element_rect(colour = "black"))




# save plot and underlying data
ggsave(mean_wlz_plot2, file=paste0(here::here(),
                                   "/figures/wasting/fig-wlz-2-mean-overall_region--allage-sex-BW-stratified2.png"), 
       width=8, height=6)



