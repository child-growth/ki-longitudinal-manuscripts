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

# Load density ki plot data -----------------------------------------------------
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


# Load density DHS data -----------------------------------------------------
dhs_country_data <- readRDS(paste0(dhs_res_dir,"dhs.density.ki-countries.rds"))

## Add region to DHS data -----------------------------------------------------
dhs_country_data <- dhs_country_data %>% 
  mutate(country = ifelse(is.na(country) & !is.na(region), "ki pooled", country)) %>% 
  filter(measure=="LAZ") %>% 
  mutate(country2 = toupper(country)) %>% 
  rename(country_lower = country, 
         country = country2) %>% 
  mutate(region = as.character(region))

dhs_country_data <- mark_region2(dhs_country_data) %>% 
  filter(region!="Other")  

dhs_country_data <- dhs_country_data %>% 
  mutate(country = str_to_title(country))

assert_that(all(is.na(kiden$country[is.na(kiden$cohort)])))


# Prep data for LAZ Density plot (Figure 2a) -----------------------------------------------------
plot_dhs = dhs_country_data %>% 
  mutate(country = ifelse(is.na(country), "ki pooled", country)) %>% 
  filter(!is.na(country)) %>% 
  mutate(datatype = "DHS",
         cohort = "DHS") %>% 
  dplyr::select(-country_lower) %>% 
  mutate(cohort = ifelse(country=="ki pooled", region, cohort))

plot_ki =  kiden %>% 
  mutate(country = ifelse(is.na(country) & !is.na(region), "ki pooled", country)) %>% 
  filter(dsource == "ki cohorts" & !is.na(country)) %>%
  mutate(datatype = "ki") %>% 
  mutate(country_cap = toupper(country)) %>% 
  rename(country_lower = country,
         country = country_cap) %>% 
  mutate(region = as.character(region))

plot_ki = mark_region2(plot_ki) %>% 
  dplyr::select(x, y, measure, region, country_lower, datatype, cohort)  %>% 
  rename(country = country_lower) %>% 
  mutate(region = as.character(region)) %>% 
  mutate(cohort = ifelse(country=="ki pooled", region, cohort))

plot_data = bind_rows(plot_ki, plot_dhs) %>% 
  # drop Burkina Faso since study was not quarterly
  filter(country!="Belarus" &country!="Kenya" & country!="Burkina Faso") %>% 
  mutate(country = factor(country, levels = c(
    "Brazil", "Guatemala", "Peru",
    "Bangladesh", "India", "Nepal", "Pakistan",
    "Gambia", "Guinea-Bissau",
    "Malawi", "South Africa", "Tanzania", "Zimbabwe", "ki pooled"

  )))

plot_data$region_survey = paste0("ki " , as.character(plot_data$region))
plot_data$region_survey[plot_data$cohort=="DHS" & plot_data$country!="ki pooled"] = "DHS"
plot_data$region_survey = factor(plot_data$region_survey, 
                                 levels = c("DHS", "ki Africa",
                                            "ki Latin America", "ki South Asia")) 

# exclude region-pooled DHS from plot
plot_data$region_survey[plot_data$datatype=="DHS" & plot_data$region_survey!="DHS"]=NA

plot_data=plot_data %>% filter(!is.na(region_survey))

# Figure 2a: Create LAZ Density plot -----------------------------------------------------
laz_dplot <-ggplot(data = plot_data, aes(x = x, y = y)) +

  geom_line(aes(col = region_survey,  group = cohort, size = datatype),
            alpha = 0.8) +
  
  facet_wrap(~country, nrow=2) +
  
  scale_size_manual("", values = c(0.8, 0.5)) +
  # scale_size_manual("", values = c(0.8, 0.5, 0.5, 0.5, 0.8)) +
  scale_color_manual("", values = c("black",pcols[2], pcols[3], pcols[4])) +
  
  scale_x_continuous(breaks = seq(-6, 6, by = 2)) +
  coord_cartesian(xlim = c(-6, 6), ylim = c(0, 0.5)) +
  labs(y="Density",x="Length-for-age z-score")+
  theme_minimal() +
  theme(
    legend.position = "none",
    panel.grid.minor.y = element_blank()
  )+
  ggtitle("a)")


laz_dplot


# Prep data for LAZ Density plot (Figure 2a) -----------------------------------------------------
# note: in this data, cohort is missing for country-pooled estimates 
# country ki estimates are pooled with RE for cohort
dhs_plotd = read_rds(paste0(dhs_res_dir, "stunting-DHSandKI-by-cohort.rds"))
dhs_plotd = dhs_plotd %>% filter(measure=="LAZ") %>% 
  mutate(country = ifelse(is.na(country) & !is.na(region), "ki pooled", 
                          country)) 
  
dhs_plotd <- mark_region2(dhs_plotd)
dhs_plotd$country <- str_to_title(dhs_plotd$country)
unique(dhs_plotd$country)
unique(dhs_plotd$cohort)
dhs_plotd$country <- ifelse(dhs_plotd$country=="Ki Pooled", "ki pooled", 
                            dhs_plotd$country)

#drop countries without DHS data
dhs_plotd$country <- factor(dhs_plotd$country, levels=c(
  "Brazil","Guatemala","Peru",   "Bangladesh","India","Nepal","Pakistan",
  "Gambia", "Guinea-Bissau", "Malawi", "South Africa", "Tanzania", "Zimbabwe",
  "ki pooled"
))
dhs_plotd$cohort <-as.character(dhs_plotd$cohort)
dhs_plotd$country <-as.character(dhs_plotd$country)
# dhs_plotd$cohort <- ifelse(is.na(dhs_plotd$cohort),
#                            dhs_plotd$country,dhs_plotd$cohort)
dhs_plotd = dhs_plotd %>% filter(region %in% c("Africa", "South Asia", "Latin America"))

# drop regional estimates
dhs_plotd = dhs_plotd %>% filter(!is.na(country))

# create categorical variable for legend
dhs_plotd = dhs_plotd %>% mutate(
  colcat = case_when(
    dsource == "DHS, ki countries" ~ "DHS",
    dsource == "ki cohorts" & region == "South Asia" ~ "ki South Asia", 
    dsource == "ki cohorts" & region == "Latin America" ~ "ki Latin America",
    dsource == "ki cohorts" & region == "Africa" ~ "ki Africa",
    country == "ki pooled" & region == "South Asia" ~ "ki South Asia",
    country == "ki pooled" & region == "Latin America" ~ "ki Latin America",
    country == "ki pooled" & region == "Africa" ~ "ki Africa"
  )
) %>%  mutate(colcat=factor(colcat, levels = c("DHS", "ki Latin America", 
                                               "ki South Asia", "ki Africa"))) %>% 
  mutate(cohort = ifelse(country=="ki pooled" & region == "South Asia", "South Asia",cohort)) %>% 
  mutate(cohort = ifelse(country=="ki pooled" & region == "Africa", "Africa", cohort)) %>% 
  mutate(cohort = ifelse(country=="ki pooled" & region == "Latin America", "Latin America", cohort))

# drop DHS pooled by region
drops = which(dhs_plotd$dsource=="DHS, ki countries" & 
                dhs_plotd$country=="ki pooled")
dhs_plotd = dhs_plotd[-drops,]

dhs_plotd = dhs_plotd %>%   mutate(country = factor(country, levels = c(
  "Brazil", "Guatemala", "Peru",
  "Bangladesh", "India", "Nepal", "Pakistan",
  "Gambia", "Guinea-Bissau",
  "Malawi", "South Africa", "Tanzania", "Zimbabwe", "ki pooled"
  
)))


# Figure 2b: Create LAZ Age plot -----------------------------------------------------
blue = pcols[2]
orange = pcols[3]
green = pcols[4]

laz_ageplot <- ggplot(data = dhs_plotd, 
                      aes(x = agem, y = fit, 
                                     group=cohort)) +
  facet_wrap( ~ country, nrow = 2) +
  
  geom_abline(intercept = 0, slope = 0, color = "gray70") +

  geom_ribbon(aes(ymin = fit_lb, ymax = fit_ub,
                  fill = colcat), alpha=0.2, col = NA) +
  geom_line(aes(color = colcat, size = colcat)) +

  scale_x_continuous(breaks = seq(0, 24, by = 6)) +
  scale_y_continuous(breaks = seq(-4, 1, by = 1)) +
  scale_color_manual(values = c("black", orange, green, blue)) +
  scale_fill_manual(values = c("black", orange, green, blue)) +
  scale_size_manual(values = c(0.75, 0.5, 0.5, 0.5)) +
  
  labs(x = "Child age, months", y = "Length-for-age z-score") +
  coord_cartesian(ylim = c(-3, 1.5)) +
  theme_minimal() +
  theme(
    legend.title = element_blank(),
    legend.position = "bottom",
    strip.placement = "outside",
    strip.background = element_rect(fill = NA, color = NA),
    panel.spacing = unit(0.5, "lines"),
    panel.grid.minor.x = element_blank(),
    strip.text.y = element_text(angle = 0)
  )+
  ggtitle("b)")


laz_ageplot


# Combine and save plots -----------------------------------------------------

arrange_figures = grid.arrange(
                               laz_dplot, 
                               laz_ageplot,
                               nrow = 2, ncol = 1,
                               heights = c(4, 4.75),
                               widths= 8)

ggsave(arrange_figures, file=paste0(fig_dir, "/stunting/fig-DHS-LAZ.png"), width=8, height=6
       )
