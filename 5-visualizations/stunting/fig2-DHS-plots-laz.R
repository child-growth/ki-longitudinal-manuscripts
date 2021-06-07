
##########################################
# ki longitudinal manuscripts
# stunting analysis

# This script produces figures that compare DHS estimates of means by age in months
# and kernel densities to those from the KI cohorts. 
# The script uses data prepared in [laz-density-data-processing.R] and [laz-mean-data-processing.R]

# This script is limited to LAZ for the linear growth paper. It includes
# KI cohorts with measurement frequency at least quarterly

# Inputs:
#   0-config.R : configuration file
#   figdata-laz-2-mean_dhs-overall_region--allage-primary.RDS
#   figdata-laz-2-density_dhs-overall_region--allage-primary.RDS

# Outputs:
#   fig-laz-2-mean_dhs-overall_region--allage-primary.png
#   fig-laz-2-density_dhs-overall_region--allage-primary.png
#   fig-DHS-LAZ.png

##########################################

# source configuration file -----------------------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_helper_sampling_weights.R"))

# define colors -----------------------------------------------------
pcols <- tableau11
blue <- 1
orange <- 2
green <- 3

# Load ki data -----------------------------------------------------
laz_ageplot_name = "laz-2-mean_dhs-country--allage-primary"
dhs_plotd_laz = read_rds(paste0(figdata_dir_stunting, "figdata-", laz_ageplot_name, ".RDS"))

## Prep ki data -----------------------------------------------------
kiden <- readRDS(paste0(res_dir, "dhs/ki.density.fits.quarterly.rds"))
kiden <- kiden %>% mutate(dsource = "ki cohorts")
kiden <- kiden %>% filter(measure=="LAZ")

## Add country to ki cohort data -----------------------------------------------------
kiden = kiden %>% mutate(country = case_when(
  cohort == "CMC-V-BCS-2002-INDIA" ~ "India",
  cohort == "CMIN Bangladesh93-BANGLADESH" ~ "Bangladesh",
  cohort == "CMIN Brazil89-BRAZIL" ~ "Brazil",
  cohort == "CMIN GB94-GUINEA-BISSAU"     ~ "Guinea-Bissau",
  cohort == "CMIN Peru89-PERU"      ~ "Peru",
  cohort == "CMIN Peru95-PERU"      ~ "Peru",
  cohort == "CONTENT-PERU"      ~ "Peru",
  cohort == "EE-PAKISTAN"      ~ "Pakistan",
  cohort == "GMS-Nepal-NEPAL"      ~ "Nepal",
  cohort == "Guatemala BSC-GUATEMALA"       ~ "Guatemala",
  cohort == "iLiNS-Zinc-BURKINA FASO"       ~ "Burkina Faso",
  cohort == "IRC-INDIA"        ~ "India",
  cohort == "JiVitA-3-BANGLADESH"        ~ "Bangladesh",
  cohort == "JiVitA-4-BANGLADESH"        ~ "Bangladesh",
  cohort == "Keneba-GAMBIA"        ~ "Gambia", 
  cohort == "LCNI-5-MALAWI"        ~ "Malawi", 
  cohort == "MAL-ED-BANGLADESH"        ~ "Bangladesh", 
  cohort == "MAL-ED-PERU"        ~ "Peru", 
  cohort == "MAL-ED-SOUTH AFRICA"        ~ "South Africa", 
  cohort == "MAL-ED-TANZANIA"        ~ "Tanzania", 
  cohort == "MAL-ED-BRAZIL"        ~ "Brazil", 
  cohort == "MAL-ED-INDIA"        ~ "India", 
  cohort == "MAL-ED-NEPAL"        ~ "Nepal", 
  cohort == "NIH-Birth-BANGLADESH"        ~ "Bangladesh", 
  cohort == "NIH-Crypto-BANGLADESH"         ~ "Bangladesh", 
  cohort == "PROBIT-BELARUS"         ~ "Belarus", 
  cohort == "PROVIDE-BANGLADESH"          ~ "Bangladesh", 
  cohort == "ResPak-PAKISTAN"          ~ "Pakistan", 
  cohort == "SAS-CompFeed-INDIA"          ~ "India", 
  cohort == "SAS-FoodSuppl-INDIA"           ~ "India", 
  cohort == "TanzaniaChild2-TANZANIA"          ~ "Tanzania", 
  cohort == "TDC-INDIA"           ~ "India", 
  cohort == "ZVITAMBO-ZIMBABWE"        ~ "Zimbabwe"
  
))


# Load DHS data -----------------------------------------------------
dhs_country_data <- readRDS("/data/KI/UCB-SuperLearner/Manuscript analysis data/dhs//results/dhs.density.ki-countries.rds")

## Add region to DHS data -----------------------------------------------------
dhs_country_data <- dhs_country_data %>% 
  filter(measure=="LAZ") %>% 
  mutate(country2 = toupper(country)) %>% 
  rename(country_lower = country, 
         country = country2)

dhs_country_data <- mark_region(dhs_country_data) %>% 
  filter(region!="Other")  

dhs_country_data <- dhs_country_data %>% 
  mutate(country = str_to_title(country))

assert_that(all(is.na(kiden$country[is.na(kiden$cohort)])))


# Prep data for LAZ Density plot (Figure 2a) -----------------------------------------------------
plot_dhs = dhs_country_data %>% filter(!is.na(country)) %>% 
  mutate(datatype = "DHS",
         cohort = "DHS") %>% 
  dplyr::select(-country_lower) 

plot_ki =  kiden %>% filter(dsource == "ki cohorts" & !is.na(country)) %>%
  mutate(datatype = "ki") %>% 
  mutate(country_cap = toupper(country)) %>% 
  rename(country_lower = country,
         country = country_cap) 

plot_ki = mark_region(plot_ki) %>% 
  dplyr::select(x, y, measure, region, country_lower, datatype, cohort)  %>% 
  rename(country = country_lower)

plot_data = bind_rows(plot_ki, plot_dhs) %>% 
  filter(country!="Belarus" &country!="Kenya") %>% 
  mutate(country = factor(country, levels = c(
    "Burkina Faso", "Gambia", "Guinea-Bissau",
    "Malawi", "South Africa", "Tanzania", "Zimbabwe",
    "Brazil", "Guatemala", "Peru",
    "Bangladesh", "India", "Nepal", "Pakistan"
  )))

plot_data$region_survey = paste0("ki " , as.character(plot_data$region))
plot_data$region_survey[plot_data$cohort=="DHS"] = "DHS"
plot_data$region_survey = factor(plot_data$region_survey, 
                                 levels = c("DHS", "ki Africa",
                                            "ki Latin America", "ki South Asia"))

# Figure 2a: Create LAZ Density plot -----------------------------------------------------
laz_dplot <-ggplot(data = plot_data, aes(x = x, y = y)) +

  geom_line(aes(col = region_survey,  group = cohort, size = region_survey),
            alpha = 0.8) +
  
  facet_wrap(~country, nrow=2) +
  
  scale_size_manual("", values = c(0.8, 0.5, 0.5, 0.5)) +
  scale_color_manual("", values = c("black",pcols[2], pcols[3], pcols[4])) +
  
  scale_x_continuous(breaks = seq(-6, 6, by = 2)) +
  coord_cartesian(xlim = c(-6, 6), ylim = c(0, 0.5)) +
  labs(y="Density",x="Length-for-age z-score")+
  theme_minimal() +
  theme(
    legend.position = "bottom",
    panel.grid.minor.y = element_blank()
  )


laz_dplot


# Figure 2b: Create LAZ Age plot -----------------------------------------------------
laz_ageplot <- ggplot(dhs_plotd_laz %>% filter(region!="Overall"), aes(x = agem, y = fit, group =region)) +
  
  # DHS confidence interval
  geom_ribbon(data = dhs_plotd_laz %>% filter(region!="Overall" & dsource == "DHS, ki countries" & 
                                                is.na(country)),
              aes(ymin = fit_lb, ymax = fit_ub), color = NA, alpha = 0.2) +
  
  # DHS line
  geom_line(data = dhs_plotd_laz %>% filter(region!="Overall" & dsource == "DHS, ki countries" & 
                                              is.na(country)),
            size = 0.8) +
  
  # ki confidence interval
  geom_ribbon(data = dhs_plotd_laz %>% filter(region!="Overall" & dsource == "ki cohorts" & 
                                                is.na(country) & is.na(cohort)),
              aes(ymin = fit_lb, ymax = fit_ub, fill = region), color = NA, alpha = 0.2) +
  
  # ki line
  geom_line(data = dhs_plotd_laz %>% filter(region!="Overall" & dsource == "ki cohorts" & 
                                              is.na(country) & is.na(cohort)),
            aes(col = region),
            size = 0.5) +
  
  facet_grid(~region) +
  
  geom_abline(intercept = 0, slope = 0, color = "gray70") +
  
  scale_x_continuous(breaks = seq(0, 24, by = 6)) +
  scale_y_continuous(breaks = seq(-3, 0, by = 0.5)) +
  scale_color_manual(values = pcols[2:4], guide = FALSE, name = "") +
  scale_fill_manual(values = pcols[2:4], guide = FALSE, name = "") +
  scale_linetype_manual(values = c("solid", "dashed", "dotdash"), name = "") +
  labs(x="Child age, months",y="Length-for-age\nz-score") +
  guides(linetype=guide_legend(override.aes=list(fill=NA))) +
  coord_cartesian(ylim = c(-2.25, 0)) +
  theme_minimal() +
  theme(
    legend.position = "bottom",
    strip.placement = "outside",
    strip.background = element_rect(fill = NA, color = NA),
    panel.spacing = unit(0.5, "lines"),
    panel.grid.minor.x = element_blank()
  )

laz_ageplot


# Combine and save plots -----------------------------------------------------

arrange_figures = grid.arrange(laz_ageplot, 
                               laz_dplot, 
                               nrow = 2, ncol = 1,
                               heights = c(4, 6),
                               widths= 8)

ggsave(arrange_figures, file=paste0(fig_dir, "/stunting/fig-DHS-LAZ.png"), width=8, height=6
       )
