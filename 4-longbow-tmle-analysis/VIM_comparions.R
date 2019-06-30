


library(tidyverse)

vim <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_VIM_results.rds"))
par <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_par_results.rds"))

head(vim)
dim(par)

par <- par %>% filter(outcome_variable=="haz", agecat=="24 months", region=="Pooled")
vim <- vim %>% filter(outcome_variable=="haz", agecat=="24 months", region=="Pooled")

dim(vim)
dim(par)

head(vim)
head(par)

vim2 <- vim %>% subset(., select = c(intervention_variable, PAR, CI1, CI2)) %>% rename(VIM=PAR, vimCI1=CI1, vimCI2=CI2)
par2 <- par %>% subset(., select = c(intervention_variable, PAR, CI1, CI2)) 

d <- merge(par2, vim2, by=c("intervention_variable"))
ggplot(d, aes(x=PAR , y=VIM)) + geom_point() + geom_abline() + xlab("PAR") +geom_text(aes(label=intervention_variable), alpha=0.6)


table(d$PAR > d$VIM)

dim(d)
d[,-1] <- round(d[,-1],2)



#Compar cohort specific estimates
load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/raw longbow results/opttx_vim_results_cont.rdata")
vim_cont <- results %>% filter(outcome_variable %in% c("haz","whz"), agecat=="24 months", type=="PAR", adjustment_set!="unadjusted")


load("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/results/rf results/raw longbow results/wasting_results.rdata")
Zscores <- results %>% filter(outcome_variable %in% c("haz","whz"), agecat=="24 months", type=="PAR", adjustment_set!="unadjusted")

Zscores2 <- Zscores %>% subset(., select = c(studyid, country, outcome_variable, intervention_variable, estimate, ci_lower, ci_upper)) %>% rename(VIM=estimate, vimCI1=ci_lower, vimCI2=ci_upper)
vim_cont2 <- vim_cont %>% subset(., select = c(studyid, country, outcome_variable, intervention_variable, estimate, ci_lower, ci_upper)) 


d <- merge(Zscores2, vim_cont2, by=c("studyid", "country", "outcome_variable", "intervention_variable"))
# head(d)
# 
# hist(d$VIM-d$estimate)
# 
# ggplot(d, aes(x=estimate , y=VIM)) + geom_point(alpha=.1) + geom_abline() + xlab("PAR")
# prop.table(table(d$VIM < d$estimate))



p <- ggplot(d, aes(x=-estimate, y=-VIM)) + 
  geom_point(size = 4, alpha=0.1) +
  geom_smooth(se=F, method="lm") +
  labs(x = "PAR", y = "VIM") +
  geom_abline(slope=1,intercept=0) +
  geom_vline(xintercept = 0) +
  geom_hline(yintercept = 0) +
  facet_wrap(~outcome_variable) +
  theme(strip.background = element_blank(),
        legend.position="right",
        strip.text.x = element_text(size=12),
        axis.text.x = element_text(size=12),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(color=FALSE, shape=FALSE)
p





p2 <- ggplot(d[d$outcome_variable=="whz",], aes(x=-estimate, y=-VIM)) + 
  geom_point(size = 4, alpha=0.1) +
  facet_wrap(~intervention_variable) +
  labs(x = "PAR", y = "VIM") +
  geom_abline(slope=1,intercept=0) +
  geom_vline(xintercept = 0) +
  geom_hline(yintercept = 0) +
  theme(strip.background = element_blank(),
        legend.position="right",
        strip.text.x = element_text(size=12),
        axis.text.x = element_text(size=12),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(color=FALSE, shape=FALSE)
p2

