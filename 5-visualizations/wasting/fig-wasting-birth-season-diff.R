


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
df$RFlabel <- "Month of birth"
df$RFlabel_ref <- paste0(df$RFlabel, ", ref: Jan.")

df$baseline_level <- "Jan."
df$intervention_level[df$intervention_level=="1"] <- "Jan."
df$intervention_level[df$intervention_level=="2"] <- "Feb."
df$intervention_level[df$intervention_level=="3"] <- "Mar."
df$intervention_level[df$intervention_level=="4"] <- "Apr."
df$intervention_level[df$intervention_level=="5"] <- "May"
df$intervention_level[df$intervention_level=="6"] <- "Jun."
df$intervention_level[df$intervention_level=="7"] <- "Jul."
df$intervention_level[df$intervention_level=="8"] <- "Aug."
df$intervention_level[df$intervention_level=="9"] <- "Sep."
df$intervention_level[df$intervention_level=="10"] <- "Oct."
df$intervention_level[df$intervention_level=="11"] <- "Nov."
df$intervention_level[df$intervention_level=="12"] <- "Dec."


df$intervention_level <- factor(df$intervention_level, 
                                levels=c("Jan.", "Feb.","Mar.","Apr.","May","Jun.","Jul.","Aug.","Sep.","Oct.","Nov.", "Dec."))

#mark reference points
df$ref <- ifelse(df$intervention_level=="Jan.", "Ref.", NA)


p_seasonRR <- ggplot(df, aes(y=ATE,x=intervention_level)) +
  geom_errorbar(aes(color=seasonality_category, ymin=CI1, ymax=CI2), width = 0) +
  geom_point(aes(fill=seasonality_category, color=seasonality_category), size = 3) +
  geom_text(aes(label=ref), hjust = 1) +
  scale_color_manual(values=tableau11[c(1,6,7,8)], drop=TRUE, limits = levels(df$measure)) +
  geom_hline(yintercept = 0) + 
  xlab("Birth month")+
  ylab("WLZ difference") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 5))  +
  theme(
    axis.text.x = element_text(margin =
                                 margin(t = 0, r = 0, b = 0, l = 0),
                               size = 12 #, angle = 45, hjust = 1, vjust =1
                               )) +
  theme(axis.title.y = element_text(size = 12)) ) 

print(p_seasonRR)

saveRDS(p_seasonRR, file = here("/figures/plot-objects/season_birth_wlz_diff_plot.rds"))
ggsave(p_seasonRR, file=paste0(here::here(),"/figures/wasting/season_birth_wlz_diff.png"), width=5, height=4)




