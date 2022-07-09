rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

d <- readRDS("/data/KI/UCB-SuperLearner/Manuscript analysis data/ki-country-metric-categories.rds")

# visualize imputed values by year and region
ggplot(d, aes(x=brthyr, y = gdp)) +
  geom_point(aes(col=imputed_gdp)) +
  facet_grid(~region) +
  theme(legend.position = "bottom") +
  ggtitle("GDP")

ggplot(d, aes(x=brthyr, y = gini)) +
  geom_point(aes(col=imputed_gini)) +
  facet_grid(~region) +
  theme(legend.position = "bottom") +
  ggtitle("gini")

ggplot(d, aes(x=brthyr, y = chi)) +
  geom_point(aes(col=imputed_chi)) +
  facet_grid(~region) +
  theme(legend.position = "bottom") +
  ggtitle("CHI")

ggplot(d, aes(x=brthyr, y = gii)) +
  geom_point(aes(col=imputed_gii)) +
  facet_grid(~region) +
  theme(legend.position = "bottom") +
  ggtitle("gender inequality index")

ggplot(d, aes(x=brthyr, y = pov)) +
  geom_hline(yintercept = 100) + 
  geom_hline(yintercept=0) +
  geom_point(aes(col=imputed_pov)) +
  facet_grid(~region) +
  theme(legend.position = "bottom") +
  ggtitle("% poverty")

ggplot(d, aes(x=brthyr, y = he)) +
  geom_hline(yintercept = 100) + 
  geom_hline(yintercept=0) +
  geom_point(aes(col=imputed_he)) +
  facet_grid(~region) +
  theme(legend.position = "bottom") +
  ggtitle("health expenditure")

ggplot(d, aes(x=brthyr, y = mort)) +
  geom_point(aes(col=imputed_mort)) +
  facet_grid(~region) +
  theme(legend.position = "bottom") +
  ggtitle("u5 mortality")

table(d$gdp_cat, d$region)

gdp_count <- d %>% group_by(gdp_cat, region) %>% 
  summarise(n=n())
decade_count <- d %>% group_by(decade, region) %>% 
  summarise(n=n())
gii_count <- d %>% group_by(gii_cat, region) %>% 
  summarise(n=n())
gdi_count <- d %>% group_by(gdi_cat, region) %>% 
  summarise(n=n())
chi_count <- d %>% group_by(chi_cat, region) %>% 
  summarise(n=n())
gini_count <- d %>% group_by(gini_cat, region) %>% 
  summarise(n=n())
pov_count <- d %>% group_by(pov_cat, region) %>% 
  summarise(n=n())
he_count <- d %>% group_by(he_cat, region) %>% 
  summarise(n=n())
mort_count <- d %>% group_by(mort_cat, region) %>% 
  summarise(n=n())


gdp_count %>% filter(gdp_cat=="Low income") %>% select(-gdp_cat) %>% as.data.frame()
gdp_count %>% filter(gdp_cat=="Middle income") %>% select(-gdp_cat) %>% as.data.frame()

decade_count %>% filter(decade=="90s") %>% select(-decade) %>% as.data.frame()
decade_count %>% filter(decade=="2000s") %>% select(-decade) %>% as.data.frame()
decade_count %>% filter(decade=="2010s") %>% select(-decade) %>% as.data.frame()

# FIX NAs
gii_count %>% filter(gii_cat=="Low") %>% select(-gii_cat) %>% as.data.frame()
gii_count %>% filter(gii_cat=="Medium") %>% select(-gii_cat) %>% as.data.frame()
gii_count %>% filter(gii_cat=="High") %>% select(-gii_cat) %>% as.data.frame()

# FIX NAs
gdi_count %>% filter(gdi_cat=="Very low") %>% select(-gdi_cat) %>% as.data.frame()
gdi_count %>% filter(gdi_cat=="Low") %>% select(-gdi_cat) %>% as.data.frame()
gdi_count %>% filter(gdi_cat=="High/Medium") %>% select(-gdi_cat) %>% as.data.frame()

# FIX NAs
chi_count %>% filter(chi_cat=="Low") %>% select(-chi_cat) %>% as.data.frame()
chi_count %>% filter(chi_cat=="Medium") %>% select(-chi_cat) %>% as.data.frame()
chi_count %>% filter(chi_cat=="High") %>% select(-chi_cat) %>% as.data.frame()

gini_count %>% filter(gini_cat=="Low") %>% select(-gini_cat) %>% as.data.frame()
gini_count %>% filter(gini_cat=="Medium") %>% select(-gini_cat) %>% as.data.frame()
gini_count %>% filter(gini_cat=="High") %>% select(-gini_cat) %>% as.data.frame()

pov_count %>% filter(pov_cat=="Low") %>% select(-pov_cat) %>% as.data.frame()
pov_count %>% filter(pov_cat=="Medium") %>% select(-pov_cat) %>% as.data.frame()
pov_count %>% filter(pov_cat=="High") %>% select(-pov_cat) %>% as.data.frame()

he_count %>% filter(he_cat=="Low") %>% select(-he_cat) %>% as.data.frame()
he_count %>% filter(he_cat=="Medium") %>% select(-he_cat) %>% as.data.frame()
he_count %>% filter(he_cat=="High") %>% select(-he_cat) %>% as.data.frame()

mort_count %>% filter(mort_cat=="<50 per 100,000") %>% select(-mort_cat) %>% as.data.frame()
mort_count %>% filter(mort_cat=="50-95 per 100,000") %>% select(-mort_cat) %>% as.data.frame()
mort_count %>% filter(mort_cat==">95 per 100,000") %>% select(-mort_cat) %>% as.data.frame()

# caption counts
d %>% group_by(pov_cat) %>% 
  summarise(nstudies = length(unique(studyid)),
            n=n())
d %>% group_by(he_cat) %>% 
  summarise(nstudies = length(unique(studyid)),
            n=n())
d %>% group_by(mort_cat) %>% 
  summarise(nstudies = length(unique(studyid)),
            n=n())





