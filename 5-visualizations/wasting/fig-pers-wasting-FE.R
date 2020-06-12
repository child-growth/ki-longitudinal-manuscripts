

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load data
load(paste0(here(),"/results/persistent_wasting024_FE.Rdata"))
d <- perswast024 %>% filter(cohort=="pooled", is.na(country))

d$nmeas.f <- clean_nmeans(d$nmeas)
d$nstudy.f <- gsub("N=","",d$nstudy.f)
d$nmeas.f <- gsub("N=","",d$nmeas.f)
d$nstudy.f <- gsub(" studies","",d$nstudy.f)
d$nmeas.f <- gsub(" children","",d$nmeas.f)


xlabel="Region"
ylabel="Point prevalence (95% CI"

d$region[d$region=="Asia"] <- "South Asia"
d$region <- factor(d$region , levels=c("Overall","Africa","Latin America","South Asia"))

p <- ggplot(d,aes(y=est,x=region)) +
  geom_errorbar(aes(color=region, ymin=lb, ymax=ub), width = 0) +
  geom_point(aes(fill=region, color=region), size = 2) +
  geom_text(aes(x = region, y = est, label = round(est)), hjust = 1.5) +
  scale_color_manual(values=tableau11) +
  xlab(xlabel)+
  ylab(ylabel) +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
  theme(strip.text = element_text(size=15, margin = margin(t = 0))) +
  
  theme(axis.text.x = element_text(margin = 
                                     margin(t = 0, r = 0, b = 0, l = 0),
                                   size = 12)) +
  theme(axis.title.y = element_text(size = 12)) 
p

ggsave(p, file=here("/figures/wasting/pooled_pers024_FE.png"), width=8, height=5)

