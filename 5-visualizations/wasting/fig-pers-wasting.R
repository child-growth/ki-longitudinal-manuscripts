

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load data
load(paste0(BV_dir,"/results/persistent_wasting024.Rdata"))
d <- perswast024 %>% filter(is.na(country), region!="Other")

d$nmeas.f <- clean_nmeans(d$nmeas)
d$nstudy.f <- gsub("N=","",d$nstudy.f)
d$nmeas.f <- gsub("N=","",d$nmeas.f)
d$nstudy.f <- gsub(" studies","",d$nstudy.f)
d$nmeas.f <- gsub(" children","",d$nmeas.f)

d$region <- factor(d$region , levels=c("Overall","Africa","Latin America","South Asia"))

# scale cohort-specific estimates
d = d %>% mutate(
  est = ifelse(cohort!="pooled", est*100, est),
  lb = ifelse(cohort!="pooled", lb*100, lb),
  ub = ifelse(cohort!="pooled", ub*100, ub)
)

d <- d %>% mutate(ispooled = as.factor(ifelse(cohort=="pooled", "yes", "no")))

xlabel="Region"
ylabel="Point prevalence (95% CI)"


p <- ggplot(d,aes(y=est,x=region)) +
  # pooled 
  geom_point(aes(size=2, fill=region, color=region),
             size = 2, stroke = 0,
             data = d %>% filter(ispooled == "yes")) +
  
  geom_errorbar(aes(color=region, ymin=lb, ymax=ub), width = 0,
                data = d %>% filter(ispooled == "yes")) +
  
  geom_text(data=d %>% filter(ispooled == "yes"),
            aes(x = region, y = est, label = round(est)),
            hjust = 1.5,
            vjust = 0.5) +
  
  # cohort-stratified
  geom_point(color = "#878787", fill = "#878787", size = 1.5,
             data = d %>% filter(ispooled == "no"),
             position = position_jitter(width = 0.15), alpha = 0.25) +
  
  scale_color_manual(values=tableau11, drop=TRUE, guide = FALSE) +
  scale_size_manual(values = c(2, 1.5), guide = FALSE) +
  scale_fill_manual(values=tableau11, guide = FALSE) +
  
  xlab(xlabel)+
  ylab(ylabel) +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
  theme(strip.text = element_text(size=15, margin = margin(t = 0))) +
  
  theme(axis.text.x = element_text(margin = margin(t=0, r=0, b=0, l=0),
                                   size = 12)) +
  theme(axis.title.y = element_text(size = 12)) 

p

ggsave(p, file=paste0(BV_dir,"/figures/wasting/pooled_pers024.png"), width=8, height=5)

