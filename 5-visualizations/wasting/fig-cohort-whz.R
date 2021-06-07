rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(ggrepel)

d <- readRDS(wasting_data_path) %>% filter(measurefreq=="monthly", agedays<730)
d$cohort <- paste0(d$studyid,"-", d$country)
length(unique(d$cohort))

d <- d %>% group_by(cohort) %>% mutate(cohort_lab=ifelse(row_number()==1,cohort,NA))

p <- ggplot(d, aes(x=agedays, y=whz, group=cohort, color=cohort)) + 
  geom_smooth(se=F) + facet_wrap(~region) +
  geom_text_repel(aes(label=cohort_lab))
p



p2 <- ggplot(d, aes(x=agedays, y=whz, group=cohort)) + 
  geom_smooth(se=F, color="grey90") + facet_wrap(~region) 
p2








rm(list=ls())
source(here("/0-config.R"))

#Load data
quantiles <- readRDS(paste0(BV_dir,"/results/quantile_data_wasting.RDS"))
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

# NEED TO ADD LEGEND

mean_wlz_plot <- ggplot(df,aes(x = agecat, group = region)) +
  geom_smooth( aes(x=agedays/30.4167, y=whz, group=cohort), se=F, color="grey70", data=d) +
  geom_smooth(aes(y = WLZ, color = region, group = interval, linetype = interval), se = F) +
  facet_wrap(~region, nrow=1) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) + 
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) + 
  scale_color_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C"), drop=TRUE, name = 'Region') +
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
ggsave(mean_wlz_plot, file=paste0(BV_dir,"/figures/wasting/fig-cohort-wlz.png"), width=14, height=3)
saveRDS(mean_wlz_plot, paste0(BV_dir,"/figures/plot-objects/mean_wlz_plot_objects.rds"))
saveRDS(df, file=paste0(figdata_dir_wasting,"figdata-cohort-wlz.RDS"))



