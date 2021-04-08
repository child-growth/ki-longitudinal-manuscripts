##########################################
# ki longitudinal manuscripts
# stunting analysis

# figure: remission 

# inputs: 


# outputs: 


##########################################
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

d <- readRDS(paste0(res_bluevelvet_dir, "stuntflow_mort.RDS"))

# phenotype categories
d = d %>% mutate(pheno= case_when(
  still_stunted==1 ~ "Still stunted",
  newly_stunted==1 ~ "Newly stunted/relapsed",
  relapse==1 ~ "Newly stunted/relapsed",
  recover==1 ~ "Recovered",
  not_stunted==1 ~ "Not stunted",
  never_stunted==1 ~ "Never stunted",
  
)) %>% 
  mutate(pheno = factor(pheno, levels = c("Recovered", "Not stunted","Never stunted", 
                                          "Newly stunted/relapsed", "Still stunted")))

pink_green = rev(brewer.pal(n = 6, name = "PiYG"))[c(3,2,1,5,6)]
pink_green[1]="#C8DEA7"
pink_green[2]="#7BB440"

d = d %>% mutate(agem_f = paste0(agem, " months")) %>% 
  mutate(agem_f = factor(agem_f, levels = c("3 months", "6 months",
                                            "12 months", "15 months")))

ggplot(d %>% filter(agem %in% c(3,6,12,15)) %>% filter(!is.na(pheno)), aes(x = haz)) + 
  geom_histogram(bins=100, aes(fill = pheno)) + 
  scale_fill_manual(values = pink_green)+
  scale_x_continuous(limits = c(-6,6), breaks = seq(-6,6,1), labels =seq(-6,6,1)) +
  facet_wrap(~agem_f, ncol=1) +
  geom_vline(xintercept = -2) +
  theme_bw() +
  theme(legend.position = "bottom",
        panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank())
