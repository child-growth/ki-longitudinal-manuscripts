


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))


#Load longbow results
load(here("results","rf results","raw longbow results","seasonality_birth_results_2019-12-10.rdata"))



d <- results %>% filter(type=="ATE")

#Subset to monthly cohorts by merging in N's
#d <- left_join(cohort_Ns, d, by = c("studyid", "country"))
table(d$studyid)


#Get N's for figure caption
# d %>% filter(intervention_level == baseline_level) %>% group_by(seasonality_category) %>% 
#   summarize(totN=sum(N), minN=min(N), maxN=max(N),
#             tot_nchild=sum(nchild), min_nchild=min(nchild), max_nchild=max(nchild))

#d <- d %>% filter(studyid!="PROVIDE")



RMAest <- d %>% group_by(intervention_variable, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.cont(.)) %>% as.data.frame()
RMAest$seasonality_category <- "Pooled"



df <- RMAest



#Add reference level to labe
df$RFlabel_ref <- paste0(df$RFlabel, ", ref: ", df$baseline_level)

df$seasonality_category <- factor(df$seasonality_category, levels=c("Pooled", "High seasonality", "Medium seasonality", "Low seasonality"))

df$intervention_level[df$intervention_level=="Opposite max rain"] <- "Opposite\nmax rain"
df$intervention_level[df$intervention_level=="Pre-max rain"] <- "Pre-max\nrain"
df$intervention_level[df$intervention_level=="Max rain"] <- "Max\nrain"
df$intervention_level[df$intervention_level=="Post-max rain"] <- "Post-max\nrain"

#df$intervention_level <- factor(df$intervention_level, levels=c("Opposite max rain",  "Pre-max rain", "Max rain", "Post-max rain"))
df$intervention_level <- factor(df$intervention_level, levels=c("Post-max\nrain", "Max\nrain", "Pre-max\nrain", "Opposite\nmax rain"))

#mark reference points
df$ref <- ifelse(df$intervention_level=="Opposite\nmax rain","(ref.)",NA)


p_seasonRR <- ggplot(df, aes(y=ATE,x=intervention_level)) +
  geom_errorbar(aes(color=seasonality_category, ymin=CI1, ymax=CI2), width = 0) +
  geom_point(aes(fill=seasonality_category, color=seasonality_category), size = 3) +
  geom_text(aes(label=ref), hjust = 1) +
  scale_color_manual(values=tableau11[c(1,6,7,8)], drop=TRUE, limits = levels(df$measure)) +
  geom_hline(yintercept = 0) + coord_flip() +
  xlab("3-month quarter of the year, grouped by rainfall")+
  ylab("WLZ difference") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 5))  +
  theme(
    axis.text.x = element_text(margin =
                                 margin(t = 0, r = 0, b = 0, l = 0),
                               size = 14 #, angle = 45, hjust = 1, vjust =1
                               )) +
  theme(axis.title.y = element_text(size = 14)) +
  ggtitle("") + facet_wrap(~seasonality_category, ncol=2) +
    theme(strip.text = element_text(size=14, margin = margin(t = 0))) 

print(p_seasonRR)

saveRDS(p_seasonRR, file = here("/figures/plot objects/season_RR_plot.rds"))
ggsave(p_seasonRR, file=paste0(here::here(),"/figures/wasting/season_wlz_diff.png"), width=5, height=6)




