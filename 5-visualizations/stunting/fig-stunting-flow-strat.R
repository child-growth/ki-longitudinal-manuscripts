##########################################
# ki longitudinal manuscripts
# stunting analysis

# figure: stacked bar chart showing 
# proportion of children who were newly stunted, 
# still stunted, relapsed, recovered, never stunted
# stratified by region and cohort

# inputs: stuntflow.RDS, stuntflow_pooled.RDS

# outputs: 
# fig-stunt-2-flow-overall--allage-primary.png,
# figdata-stunt-2-flow-overall--allage-primary.RDS
##########################################
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

plot_overall = readRDS(paste0(res_dir, "stunt-flow-data-pooled.RDS"))
plot_region = readRDS(paste0(res_dir, "stunt-flow-data-region.RDS"))
plot_cohort = readRDS(paste0(res_dir, "stunt-flow-data-cohort.RDS"))


#-----------------------------------------
# define color palette
#-----------------------------------------
pink_green = rev(brewer.pal(n = 6, name = "PiYG"))
pink_green[3] = "#CDF592"
pink_green[5] = "#EA67AE"
pink_green[4] = "#FFB7DC"

#-----------------------------------------
# create plot - stratified by region
#-----------------------------------------
bar_plot_noRE = ggplot(plot_overall) +
  geom_bar(aes(x = agem, y = percent, fill = classif), 
           stat="identity", width=0.5) +
  scale_fill_manual("", values = pink_green) +
  scale_color_manual(values = c(NA, 'black'), guide=F) +
  # Why isn't this working? 
  # scale_y_continuous(limits = c(0,100),
  #                    breaks = seq(0,100,20),
  #                    labels = seq(0,100,20)) +
  theme(axis.title.x = element_text(size=14),
        axis.title.y = element_text(size=14),
        legend.position = "bottom",
        legend.text = element_text(size=12)) +
  xlab("Child age, months") + 
  ylab("Percentage of children (%)")  + 
  guides(fill = guide_legend(nrow = 1)) +
  facet_grid(~region)
bar_plot_noRE

#-----------------------------------------
# create plot - stratified by region
#-----------------------------------------
bar_plot_noRE_region = ggplot(plot_region) +
  geom_bar(aes(x = agem, y = percent, fill = classif), 
           stat="identity", width=0.5) +
  scale_fill_manual("", values = pink_green) +
  scale_color_manual(values = c(NA, 'black'), guide=F) +
  # Why isn't this working? 
  # scale_y_continuous(limits = c(0,100),
  #                    breaks = seq(0,100,20),
  #                    labels = seq(0,100,20)) +
  theme(axis.title.x = element_text(size=14),
        axis.title.y = element_text(size=14),
        legend.position = "bottom",
        legend.text = element_text(size=12)) +
  xlab("Child age, months") + 
  ylab("Percentage of children (%)")  + 
  guides(fill = guide_legend(nrow = 1)) +
  facet_grid(~region)
bar_plot_noRE_region

#-----------------------------------------
# create plot - stratified by cohort
#-----------------------------------------

# base cohort plot function
make_cohort_plot = function(data){
  myplot= ggplot(data) +
    geom_bar(aes(x = agem, y = percent, fill = classif), 
             stat="identity", width=0.5) +
    scale_fill_manual("", values = pink_green) +
    scale_color_manual(values = c(NA, 'black'), guide=F) +
    # Why isn't this working? 
    # scale_y_continuous(limits = c(0,100),
    #                    breaks = seq(0,100,20),
    #                    labels = seq(0,100,20)) +
    theme(axis.title.x = element_text(size=14),
          axis.title.y = element_text(size=14),
          legend.position = "bottom",
          legend.text = element_text(size=12)) +
    xlab("Child age, months") + 
    ylab("Percentage of children (%)")  + 
    guides(fill = guide_legend(nrow = 1)) +
    facet_grid(~studyid)
  return(myplot)
}

plot_cohort_asia = plot_cohort %>% filter(region=="South Asia")
plot_cohort_afr = plot_cohort %>% filter(region=="Africa")
plot_cohort_latamer = plot_cohort %>% filter(region=="Latin America")


bar_plot_noRE_asia = make_cohort_plot(plot_cohort_asia)
bar_plot_noRE_afr = make_cohort_plot(plot_cohort_afr)
bar_plot_noRE_latamer = make_cohort_plot(plot_cohort_latamer)

#-----------------------------------------
# define standardized plot names
#-----------------------------------------
bar_plot_noRE_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "change in stunting status",
  population = "overall",
  location = "",
  age = "All ages",
  analysis = "primary"
)

bar_plot_noRE_region_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "change in stunting status",
  population = "region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

bar_plot_noRE_asia_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "change in stunting status",
  population = "cohort-stratified",
  location = "South Asia",
  age = "All ages",
  analysis = "primary"
)

bar_plot_noRE_afr_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "change in stunting status",
  population = "cohort-stratified",
  location = "Africa",
  age = "All ages",
  analysis = "primary"
)

bar_plot_noRE_latamer_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "change in stunting status",
  population = "cohort-stratified",
  location = "Latin America",
  age = "All ages",
  analysis = "primary"
)

#-----------------------------------------
# save plot and underlying data
#-----------------------------------------
ggsave(bar_plot_noRE, file=paste0("figures/stunting/fig-",
           bar_plot_noRE_name,".png"), width=10, height=4)
ggsave(bar_plot_noRE_region, file=paste0("figures/stunting/fig-",
            bar_plot_noRE_region_name,".png"), width=10, height=4)
ggsave(bar_plot_noRE_asia, file=paste0("figures/stunting/fig-",
            bar_plot_noRE_asia_name,".png"), width=10, height=4)
ggsave(bar_plot_noRE_afr, file=paste0("figures/stunting/fig-",
            bar_plot_noRE_afr_name,".png"), width=10, height=4)
ggsave(bar_plot_noRE_latamer, file=paste0("figures/stunting/fig-",
            bar_plot_noRE_latamer_name,".png"), width=10, height=4)

saveRDS(bar_plot_data, file=paste0("results/figure-data/figdata-",
                                   bar_plot_noRE_name,".RDS"))
saveRDS(plot_region, file=paste0("results/figure-data/figdata-",
                                 bar_plot_noRE_region_name,".RDS"))
saveRDS(plot_cohort_asia, file=paste0("results/figure-data/figdata-",
                                 bar_plot_noRE_asia_name,".RDS"))
saveRDS(plot_cohort_afr, file=paste0("results/figure-data/figdata-",
                                 bar_plot_noRE_afr_name,".RDS"))
saveRDS(plot_cohort_latamer, file=paste0("results/figure-data/figdata-",
                                 bar_plot_noRE_latamer_name,".RDS"))







