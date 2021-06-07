
#-----------------------------------
# preamble
#-----------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load data
d <- readRDS(paste0(here::here(),"/results/desc_data_cleaned.rds"))


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
Measure="Recovery"
Birth="strat"
Severe="no" 
Age_range="3 months"
xlabel="Child age, months"
ylabel='Incidence Proportion (95% CI)'
h1=69
h2=72
returnData=T
Analysis="Primary"

### TURN INTO FUNCTION: 
df <- d %>% filter(
  disease == Disease &
    measure == Measure &
    birth == Birth &
    severe == Severe &
    age_range == Age_range &
    analysis == Analysis &
    !is.na(region) & !is.na(agecat)
)

# Remove 'months' from x axis labels  
df <- df %>% arrange(agecat)
df$agecat <- as.character(df$agecat)
df$agecat <- gsub(" months", "", df$agecat)
df$agecat <- factor(df$agecat, levels=unique(df$agecat))


df <- df %>%
  mutate(agecat = as.character(agecat)) %>%
  mutate(agecat = ifelse(agecat=="8 days-3", "0-3", agecat)) %>%
  mutate(agecat = factor(agecat, levels = c(
    "Birth",
    "0-3", 
    "3-6",
    "6-9",
    "9-12",
    "12-15",
    "15-18",
    "18-21",
    "21-24"
  )))

df <- droplevels(df)
strip.text.size=14
Region = T
# 
# 
# # remove N= from labels
# df <- df %>% mutate(nmeas.f = gsub('N=', '', nmeas.f)) %>%
#   mutate(nstudy.f = gsub('N=', '', nstudy.f))
# 
# # remove text from labels
# df <- df %>% mutate(nmeas.f = gsub(' children', '', nmeas.f)) %>%
#   mutate(nstudy.f = gsub(' studies', '', nstudy.f))
# 
# Remove 'months' from x axis labels
df <- df %>% arrange(agecat)
df$agecat <- as.character(df$agecat)
df$agecat <- gsub(" months", "", df$agecat)
df$agecat <- factor(df$agecat, levels=unique(df$agecat))

# if (min(df$lb) < 0) {
#   print("Warning: some lower bounds < 0")
# }

df <- df %>% mutate(ispooled = as.factor(ifelse(cohort=="pooled", "yes", "no")))

p <- ggplot(df,aes(y=est,x=agecat)) +
  
  # cohort-stratified 
  geom_point(color = "#878787", fill = "#878787", size = 1.5, 
             data = df %>% filter(ispooled == "no"),
             position = position_jitter(width = 0.15), alpha = 0.25) +
  
  # pooled 
  geom_point(aes(fill=region, color=region), size = 2, stroke = 0,
             data = df %>% filter(ispooled == "yes")) +
  geom_errorbar(aes(color=region, ymin=lb, ymax=ub), width = 0, 
                data = df %>% filter(ispooled == "yes")) +
  geom_text(aes(x = agecat, y = est, label = round(est)), hjust = 1.35, 
            data = df %>% filter(ispooled == "yes")) +

  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure)) +
  scale_alpha_manual(values=c(0.25, 1)) +
  xlab(xlabel)+
  ylab(ylabel) +
  
  # add space to the left and right of points on x axis
  # to accommodate point estimate labels
  scale_x_discrete(expand = expand_scale(add = 1)) +
  
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10))  +
  
  theme(
    axis.text.x = element_text(margin =
                                 margin(t = 0, r = 0, b = 0, l = 0),
                               size = 10)) +
  theme(axis.title.y = element_text(size = 14)) +
  
  ggtitle("")


  p <- p + facet_grid(~region) +
    theme(strip.text = element_text(size=14, margin = margin(t = 0))) 


p
