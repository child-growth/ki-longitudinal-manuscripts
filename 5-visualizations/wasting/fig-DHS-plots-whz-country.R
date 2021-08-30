##########################################
# ki longitudinal manuscripts

# This script produces figures that compare DHS estimates of means by age in months
# and kernel densities to those from the KI cohorts. 
# The script uses data prepared in [density-zscore-data-processing.R] and [mean-zscore-data-processing.R]

# This script includes KI cohorts with measurement frequency at least quarterly

# Inputs:
#   0-config.R : configuration file
#   figdata-fig_dhs_ki_zscores_density.RDS
#   figdata-fig_dhs_ki_zscores_byage.RDS

# Outputs:
#   fig_dhs_ki_zscores_byage.png
#   fig_dhs_ki_zscores_density.png
##########################################

#---------------------------------------
# source configuration file
#---------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_helper_sampling_weights.R"))

# standard region colors used in other plots
pcols <- tableau11


##################################
# Plot mean z-score by age
##################################
dhs_plotd = read_rds(paste0(figdata_dir_wasting, "figdata-fig_dhs_ki_zscores_byage_country.RDS"))
unique(dhs_plotd$country)
dhs_plotd$country[dhs_plotd$country=="Gambia"] <- "The Gambia"
dhs_plotd$country <- factor(dhs_plotd$country, levels=c(
  "The Gambia", "South Africa", "Tanzania",  "Brazil", "Guatemala", "Peru", "Bangladesh", "India","Pakistan", "Nepal"
))
#drop countries without DHS data
dhs_plotd <- dhs_plotd %>% filter(!(country %in% c("OVERALL")))

#dhs_plotd$region = factor(dhs_plotd$region, levels = c("Overall", "Africa", "Latin America", "South Asia"))
dhs_plotd$measure[dhs_plotd$measure=="WHZ"] <- "WLZ"
dhs_plotd <- dhs_plotd %>% filter(!is.na(country))

dhsp <- ggplot(data = dhs_plotd, aes(x = agem, y = fit, color = country, fill = country, linetype = dsource)) +
  facet_grid(measure ~ country) +
  geom_abline(intercept = 0, slope = 0, color = "gray70") +
  geom_ribbon(aes(ymin = fit_lb, ymax = fit_ub), color = NA, alpha = 0.2) +
  geom_line(alpha = 1) +
  scale_x_continuous(breaks = seq(0, 24, by = 6)) +
  scale_y_continuous(breaks = seq(-4, 1, by = 1)) +
  scale_color_manual(values = pcols, guide = FALSE) +
  scale_fill_manual(values = pcols, guide = FALSE) +
  scale_linetype_manual(values = c("solid", "dashed", "dotdash"), name="Data source:") +
  labs(x = "Child age, months", y = "Anthropometric z-score") +
  coord_cartesian(ylim = c(-3, 1.5)) +
  theme_minimal() +
  theme(
    legend.position = "bottom",
    strip.placement = "outside",
    strip.background = element_rect(fill = NA, color = NA),
    panel.spacing = unit(0.5, "lines"),
    panel.grid.minor.x = element_blank(),
    strip.text.y = element_text(angle = 0)
  )

dhsp

# output a file to png
ggsave(dhsp, file = paste0(fig_dir, "wasting/fig_dhs_ki_zscores_byage_country.png"), width = 10, height = 6)


##################################
# Plot mean z-score by age
##################################
dhs_plotd = read_rds(paste0(figdata_dir_wasting, "figdata-fig_dhs_ki_zscores_byage_cohort.RDS"))
dhs_plotd <- mark_region(dhs_plotd)
dhs_plotd$region <- factor(ifelse(dhs_plotd$dsource=="DHS", "DHS", as.character(dhs_plotd$region)), levels=c("DHS","Africa", "Latin America", "South Asia"))
dhs_plotd$country <- str_to_title(dhs_plotd$country)
unique(dhs_plotd$country)
unique(dhs_plotd$cohort)
table(dhs_plotd$dsource, dhs_plotd$region)
#drop countries without DHS data
dhs_plotd <- dhs_plotd %>% filter(!(country %in% c("OVERALL")))
dhs_plotd$country[dhs_plotd$country=="Gambia"] <- "The Gambia"
dhs_plotd$country <- factor(dhs_plotd$country, levels=c(
  "The Gambia","South Africa", "Tanzania","Brazil"  , "Guatemala", "Peru", "Bangladesh", "India","Pakistan", "Nepal"
))
dhs_plotd$cohort <-as.character(dhs_plotd$cohort)
dhs_plotd$cohort <- ifelse(is.na(dhs_plotd$cohort),dhs_plotd$country,dhs_plotd$cohort)
dhs_plotd$measure[dhs_plotd$measure=="WHZ"] <- "WLZ"

dhsp <- ggplot(data = dhs_plotd, aes(x = agem, y = fit, 
                                  color = region, fill = region, 
                                  group=cohort, alpha=dsource,  linetype = dsource)) +
  facet_grid(measure ~ country) +
  geom_abline(intercept = 0, slope = 0, color = "gray70") +
  geom_ribbon(aes(ymin = fit_lb, ymax = fit_ub), color = NA, alpha=0.2) +
  geom_line() +
  scale_x_continuous(breaks = seq(0, 24, by = 6)) +
  scale_y_continuous(breaks = seq(-4, 1, by = 1)) +
  scale_alpha_manual(values = c(0.5, 1), guide = FALSE) +
  scale_color_manual(values = pcols[c(1,2,4,3)], guide = FALSE) +
  scale_fill_manual(values = pcols[c(1,2,4,3)], guide = FALSE) +
  #scale_linetype_manual(values = c("solid", "dashed", "dotdash"), name="Data source:") +
  scale_linetype_manual(values = c( "dashed", "solid"), name="Data source:") +
  labs(x = "Child age, months", y = "Anthropometric z-score") +
  coord_cartesian(ylim = c(-3, 1.5)) +
  theme_minimal() +
  theme(
    legend.position = "bottom",
    strip.placement = "outside",
    strip.background = element_rect(fill = NA, color = NA),
    panel.spacing = unit(0.5, "lines"),
    panel.grid.minor.x = element_blank(),
    strip.text.y = element_text(angle = 0)
  )

dhsp

# output a file to png
ggsave(dhsp, file = paste0(fig_dir, "wasting/fig_dhs_ki_zscores_byage_cohort.png"), width = 10, height = 6)



##################################
# Plot z-score density by country and measure
##################################
kiden <- readRDS(paste0(dhs_res_dir, "ki.density.fits.monthly.rds"))
kiden <- mark_region(kiden)
kiden <- kiden %>% mutate(dsource = "ki cohorts", country = str_to_title(country)) %>% filter(!is.na(country))

dhssubden = readRDS(paste0(dhs_res_dir,"dhs.density.ki-countries.rds"))
dhssubden <- dhssubden %>% mutate(dsource = "DHS", region="DHS") %>% filter(!is.na(country))

dhsden_plot <- bind_rows(kiden, dhssubden)

#medians = readRDS(paste0(dhs_res_dir,"dhs.ki.zscore.medians.monthly.rds"))  %>% mutate(country = str_to_title(country)) %>% filter(!is.na(country)) 
ki_medians = readRDS(paste0(dhs_res_dir,"ki.zscore.medians.monthly.cohort.rds")) %>% 
  mutate(dsource="ki cohorts", cohort = paste0(studyid,"-",country))
dhs_medians = readRDS(paste0(BV_dir, "/results/dhs/dhs_quantiles_country.rds")) %>% 
  filter(quantile == 50) %>% mutate(dsource="DHS", cohort=NA) %>%
  rename(median=zscore)


medians =  bind_rows(dhs_medians,ki_medians) %>% mutate(
  measure = factor(measure, levels = c("haz", "waz", "whz"), labels = c("LAZ", "WAZ", "WHZ"))
)
table(medians$dsource, is.na(medians$median))


#medians <- mark_region(medians) %>% filter(region!="Other", country %in% unique(dhsden_plot$country))
medians <- mark_region(medians) %>% filter(region!="Other")
medians$region <- as.character(medians$region)
medians$region[medians$dsource=="DHS"] <- "DHS"
medians$country <- str_to_title(medians$country)
medians <- medians %>% filter(country %in% unique(dhsden_plot$country))
unique(medians$country)
unique(dhsden_plot$country)




dhsden_plot$cohort[dhsden_plot$dsource=="DHS, ki countries"] <- "DHS"
medians$country <- str_to_title(medians$country)

tail(medians)
head(dhsden_plot)

head(medians)
tail(dhsden_plot)

dhsden_plot = left_join(dhsden_plot, medians, by = c("cohort","country","region", "dsource", "measure"))
head(dhsden_plot)
table(dhsden_plot$dsource, is.na(dhsden_plot$median))
table(dhsden_plot$measure)


dhsden_plot$measure <- as.character(dhsden_plot$measure)
dhsden_plot$measure[dhsden_plot$measure=="WHZ"] <- "WLZ"
dhsden_plot$measure <- factor(dhsden_plot$measure, levels = c("LAZ", "WAZ", "WLZ"))
dhsden_plot <- dhsden_plot %>% filter(!is.na(country))

dhsden_plot <- dhsden_plot %>% filter(!(country %in% c("Burkina Faso","Zimbabwe","Malawi")))  %>% filter(!is.na(country)) %>% droplevels()

dhsden_plot$country[dhsden_plot$country=="Gambia"] <- "The Gambia"
dhsden_plot$country <- factor(dhsden_plot$country, levels=c(
  "The Gambia","South Africa", "Tanzania","Brazil"  , "Guatemala", "Peru", "Bangladesh", "India","Pakistan", "Nepal"
)) 
dhsden_plot <- dhsden_plot %>% filter(!is.na(country))

dhsden_plot <- dhsden_plot %>%
  mutate(
    dsource = factor(dsource, levels = c("ki cohorts", "DHS")),
    region = factor(region, levels = c("DHS", "Africa", "South Asia", "Latin America"))
  ) %>% droplevels()

dplot <- ggplot(data = dhsden_plot, aes(x = x, y = y, group=cohort,
                                        color = region, fill = region, 
                                        alpha = dsource)) +
  facet_grid( country~measure ) +
  geom_line(aes(linetype = dsource)) +
  geom_point(aes(x = as.double(median), y = 0.1, color = region, shape = dsource), position=ggstance::position_dodgev(height=0.1)) +
  scale_color_manual(values = pcols, guide = FALSE) +
  scale_fill_manual(values = pcols, guide = FALSE) +
  scale_linetype_manual(values = c("solid", "solid"), name="Data source:") +
  scale_alpha_manual(values=c(0.5,1), guide = FALSE)+
  scale_shape_manual(values=c(1,16), name="Data source:")+
  scale_x_continuous(breaks = seq(-6, 6, by = 2)) +
  scale_y_continuous(breaks = seq(0, 0.4, by = .2)) +
  coord_cartesian(xlim = c(-5, 5), ylim = c(0, 0.5)) +
  labs(y = "Density", x = "Z-score") +
  theme_minimal() +
  theme(
    legend.position = "bottom",
    panel.grid.minor.y = element_blank(),
     strip.text.y = element_text(angle = 0)#,
    # axis.text.x=element_blank(),
    # axis.ticks.x=element_blank()
  )
dplot

#Why are black points not showing up?
#need to fix cohort medians


# output a file to png
ggsave(dplot, file = paste0(fig_dir, "wasting/fig_dhs_ki_zscores_density.png"), width = 6, height = 7)
saveRDS(dhsden_plot, file = paste0(figdata_dir_wasting, "figdata-fig_dhs_ki_zscores_density.RDS"))


diff= dhsden_plot %>% distinct(country, dsource, measure, median, .keep_all = T) %>% group_by(region , country, dsource, measure) %>% summarize(median=mean(median)) %>% 
  group_by(country, measure) %>% arrange(country, measure,dsource) %>%
  summarize(region=first(region), diff=round(first(median)-last(median),2)) %>% arrange(measure, diff) %>% as.data.frame()
diff #negative is higher DHS



