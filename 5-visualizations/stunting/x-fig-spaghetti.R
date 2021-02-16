
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
Measure="Prevalence"
Birth="yes"
Severe="no" 
Age_range="3 months"
# Cohort="pooled"
xlabel="Child age, months"
ylabel='Point Prevalence (95% CI)'
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
  
  # pooled 
  geom_point(aes(fill=region, color=region), size = 2,
             data = df %>% filter(ispooled == "yes")) +
  geom_errorbar(aes(color=region, ymin=lb, ymax=ub), width = 0, 
                data = df %>% filter(ispooled == "yes")) +
  geom_text(aes(x = agecat, y = est, label = round(est)), hjust = 1.35, 
            data = df %>% filter(ispooled == "yes")) +

  # cohort-stratified 

  geom_point(aes(fill=region, col = region), size = 1.5, 
             data = df %>% filter(ispooled == "no"),
             position = position_jitter(width = 0.15), alpha = 0.25) +
  # geom_linerange(aes(color=region, ymin=lb, ymax=ub),
  #               data = df %>% filter(ispooled == "no"),
  #               position = position_jitter(width = 0.2), alpha = 0.25) +
  
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
                               size = 14)) +
  theme(axis.title.y = element_text(size = 14)) +
  
  ggtitle("")


# if(!is.null(Region)) {
#   p <- p + facet_wrap(~cohort) +
#     theme(strip.text = element_text(size=strip.text.size, margin = margin(t = 0)))
# }else {
  p <- p + facet_grid(~region) +
    theme(strip.text = element_text(size=14, margin = margin(t = 0))) 
# }

p

# 
# 
# 
# 
# if(!is.null(yrange)){
#   p <- p + coord_cartesian(ylim=yrange)
# }
# 
# 
# 
# if(returnData){
#   return(list(plot=p,data=df))
# }else{
#   return(list(plot=p))
# }
# }