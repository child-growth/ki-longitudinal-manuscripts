
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(gridExtra)
#Load data
d <- readRDS(paste0(here::here(),"/results/desc_data_cleaned.rds"))
quantiles <- readRDS(paste0(here::here(),"/results/quantile_data_wasting.RDS"))

# View(d)
#Subset to primary analysis
d <- d %>% mutate(pooling=ifelse(cohort=="pooled" & is.na(pooling), region, pooling)) %>%
  filter(analysis=="Primary", (pooling!="country" | is.na(pooling)))

#subset to regional and overall pooled estimates
d <- d %>% filter(cohort=="pooled", pooling!="country" | is.na(pooling))

#convert cohort specific estimates to percents
# d$est[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" ) & !(d$disease %in% c("co-occurrence","Underweight"))] <-
#   d$est[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" ) & !(d$disease %in% c("co-occurrence","Underweight"))] * 100
# d$lb[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" ) & !(d$disease %in% c("co-occurrence","Underweight"))] <-
#   d$lb[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" ) & !(d$disease %in% c("co-occurrence","Underweight"))] * 100
# d$ub[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" ) & !(d$disease %in% c("co-occurrence","Underweight"))] <-
#   d$ub[(is.na(d$pooling) | d$pooling=="no pooling") & d$measure %in% c("Prevalence","Cumulative incidence","Persistent wasting", "Recovery" ) & !(d$disease %in% c("co-occurrence","Underweight"))] * 100

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

# scale cohort-specific estimates
scale_estimates <- function(d) {
  d = d %>% mutate(
    est = ifelse(cohort!="pooled", est*100, est),
    lb = ifelse(cohort!="pooled", lb*100, lb),
    ub = ifelse(cohort!="pooled", ub*100, ub)
  )
  return(d)
}

d <- d %>% filter(disease=='Wasting')

# View(d)

#-------------------------------------------------------------------------------------------
# Wasting prevalence
#-------------------------------------------------------------------------------------------
d_prev <- d %>% filter(
  measure == "Prevalence" &
  birth == "yes" &
  severe == "no" &
  age_range == "3 months" &
  !is.na(region) & !is.na(agecat)
)


d_prev <- droplevels(d_prev)

# Remove 'months' from x axis labels
d_prev <- d_prev %>% arrange(agecat)
d_prev$agecat <- as.character(d_prev$agecat)
d_prev$agecat <- gsub(" months", "", d_prev$agecat)
d_prev$agecat <- factor(d_prev$agecat, levels=unique(d_prev$agecat))


# d_prev <- d_prev %>% filter(cohort == 'pooled')

# View(d_prev)

# pooled cohorts
d_prev <- d_prev %>% 
  select(region, agecat, est, lb, ub)

# View(d_prev)
# d_prev <- d_prev %>% mutate(ispooled = as.factor(ifelse(cohort=="pooled", "yes", "no")))

pdf("figures/wasting/data-pdfs/prevalence.pdf", height=11, width=8.5)
grid.table(d_prev)
dev.off()


#-------------------------------------------------------------------------------------------
# Wasting incidence rate
#-------------------------------------------------------------------------------------------

d_ir <- d %>% filter(
    measure == "Incidence rate" &
    birth == "yes" &
    severe == "no" &
    age_range == "3 months" &
    !is.na(region) & !is.na(agecat)
)


d_ir <- droplevels(d_ir)

# Remove 'months' from x axis labels
d_ir <- d_ir %>% arrange(agecat)
d_ir$agecat <- as.character(d_ir$agecat)
d_ir$agecat <- gsub(" months", "", d_ir$agecat)
d_ir$agecat <- factor(d_ir$agecat, levels=unique(d_ir$agecat))


# d_ir <- d_ir %>% filter(cohort == 'pooled')

# View(d_ir)

# pooled cohorts
d_ir <- d_ir %>% 
  select(region, agecat, est, lb, ub)

# d_ir <- d_ir %>% mutate(ispooled = as.factor(ifelse(cohort=="pooled", "yes", "no")))

pdf("figures/wasting/data-pdfs/incidence_rate.pdf", height=11, width=8.5)
grid.table(d_ir)
dev.off()



#-------------------------------------------------------------------------------------------
# Wasting cumulative incidence
#-------------------------------------------------------------------------------------------

d_ci <- d %>% filter(
  measure == "Cumulative incidence" &
    birth == "yes" &
    severe == "no" &
    age_range == "3 months" &
    !is.na(region) & !is.na(agecat)
)


d_ci <- droplevels(d_ci)

# Remove 'months' from x axis labels
d_ci <- d_ci %>% arrange(agecat)
d_ci$agecat <- as.character(d_ci$agecat)
d_ci$agecat <- gsub(" months", "", d_ci$agecat)
d_ci$agecat <- factor(d_ci$agecat, levels=unique(d_ci$agecat))


# d_ci <- d_ci %>% filter(cohort == 'pooled')

# View(d_ci)

# pooled cohorts
d_ci <- d_ci %>% 
  select(region, agecat, est, lb, ub)

# d_ci <- d_ci %>% mutate(ispooled = as.factor(ifelse(cohort=="pooled", "yes", "no")))

pdf("figures/wasting/data-pdfs/cumulative_incidence.pdf", height=11, width=8.5)
grid.table(d_ci)
dev.off()
