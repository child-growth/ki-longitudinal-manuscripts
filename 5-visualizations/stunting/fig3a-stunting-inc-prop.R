##########################################
# ki longitudinal manuscripts
# stunting analysis
#
# plotof stunting incidence
# showing cohort-specific results
# and pooled results by region

#  primary analysis
##########################################

#-----------------------------------
# preamble
#-----------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load data
d <- readRDS(paste0(res_dir,"/desc_data_cleaned.rds"))

#-----------------------------------------
# Prepare data for plot
#-----------------------------------------
# scale cohort-specific estimates
d = d %>% mutate(
  est = ifelse(disease=="Stunting"  & cohort!="pooled",
               est*100, est),
  lb = ifelse(disease=="Stunting"  & cohort!="pooled",
              lb*100, lb),
  ub = ifelse(disease=="Stunting"  & cohort!="pooled",
              ub*100, ub)
)

Disease = "Stunting"
Measure="Incidence proportion"
Birth="strat"
Severe="no" 
Age_range="3 months"
xlabel="Child age, months"
ylabel='Incidence Proportion (95% CI)'
h1=69
h2=72
returnData=T
Analysis="Primary"


# subset results data frame 
df <- d %>% filter(
  disease == Disease &
    measure == Measure &
    birth == Birth &
    severe == Severe &
    age_range == Age_range &
    analysis == Analysis &
    !is.na(region) & !is.na(agecat)
)
df <- droplevels(df)
strip.text.size=14
Region = T

# Remove 'months' from x axis labels
df <- df %>% arrange(agecat)
df$agecat <- as.character(df$agecat)

df$agecat <- gsub(" months", "", df$agecat)
df$agecat <- factor(df$agecat, levels=unique(df$agecat))

df <- df %>% mutate(ispooled = as.factor(ifelse(cohort=="pooled", "yes", "no")))

df <- df %>% 
  mutate(agecat = as.character(agecat)) %>% 
  mutate(agecat = ifelse(agecat == "8 days-3", "0-3", agecat)) %>% 
  mutate(agecat = factor(agecat, levels = c(
    "Birth", "0-3", "3-6", "6-9", "9-12", "12-15", 
    "15-18", "18-21", "21-24"
  )))

#-----------------------------------------
# Make plot
#-----------------------------------------
p <- ggplot(df,aes(y=est,x=agecat)) +
  
  # pooled 
  geom_point(aes(fill=region, color=region), size = 2, stroke = 0,
             data = df %>% filter(ispooled == "yes")) +
  geom_errorbar(aes(color=region, ymin=lb, ymax=ub), width = 0, 
                data = df %>% filter(ispooled == "yes")) +
  geom_text(aes(x = agecat, y = est, label = round(est)), hjust = 1.35, 
            data = df %>% filter(ispooled == "yes"), size=4.5) +

  # cohort-stratified 
  geom_point(color = "#878787", fill = "#878787", size = 1.5, 
             data = df %>% filter(ispooled == "no"),
             position = position_jitter(width = 0.15), alpha = 0.25) +
  
  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure)) +
  scale_alpha_manual(values=c(0.25, 1)) +
  xlab(xlabel) +
  ylab(ylabel) +
  
  # add space to the left and right of points on x axis
  # to accommodate point estimate labels
  scale_x_discrete(expand = expand_scale(add = 1)) +
  
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10))  +
  
  facet_grid(~region) +
  
  theme(
    axis.text.x = element_text(size = 14, angle = 45, vjust=0.5),
    axis.title.x = element_text(size = 14),
    axis.title.y = element_text(size = 14),
    strip.text.x = element_text(size = 16, margin = margin(t = 0))) +
  ggtitle("")

p

ggsave(p, filename = paste0(fig_dir, "stunting/fig-stunt-2-inc-overall_region_cohort--allage.png"),
       width=12, height=4)
