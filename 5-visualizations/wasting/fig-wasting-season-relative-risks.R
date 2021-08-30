


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))


#Load longbow results
results <- readRDS(paste0(BV_dir,"/results/rf results/longbow results/seasonality_results.RDS"))

# The palette with black:
cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")


#Load cohort Ns
cohort_Ns <- readRDS(paste0(BV_dir,"/results/seasonTMLE_Ns.rds")) 
cohort_Ns$country <- str_to_title(cohort_Ns$country)

#Load seasonality index and prep for merge
rain <- readRDS(paste0(BV_dir,"/data/cohort_rain_data.rds"))
rain <- rain %>% subset(., select = c(studyid, country, cohort_index)) %>% 
  rename(season_index = cohort_index) %>%
  arrange(season_index) %>%
  mutate(seasonality_category = 
           case_when(
             season_index >= 0.9 ~ "High",
             season_index < 0.7 ~ "Low",
             TRUE ~ "Medium"),
         seasonality_category = factor(seasonality_category, levels=c("Low", "Medium", "High")))
table(rain$seasonality_category)

rain$studyid <- gsub("^k.*?-" , "", rain$studyid)
rain$country <- as.character(rain$country)
rain$country <- str_to_title(rain$country)
results$country <- as.character(results$country)
results$country <- str_to_title(results$country)

#Merge resulta and seasonality index
head(results)
head(rain)
d <- left_join(results, rain, by = c("studyid","country"))
dim(d)
table(d$seasonality_category)

d <- d %>% filter(type=="ATE")

#Subset to monthly cohorts by merging in N's
d <- left_join(cohort_Ns, d, by = c("studyid", "country"))
table(d$studyid)


#Get N's for figure caption
d %>% filter(intervention_level == baseline_level) %>% group_by(seasonality_category) %>% 
  summarize(totN=sum(N), minN=min(N), maxN=max(N),
            tot_nchild=sum(nchild), min_nchild=min(nchild), max_nchild=max(nchild))

cats<-d %>% distinct(studyid, country, seasonality_category)
table(cats$seasonality_category)
#d <- d %>% filter(studyid!="PROVIDE")



RMAest <- d %>% group_by(intervention_variable, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.cont(.)) %>% as.data.frame()
RMAest$seasonality_category <- "Pooled"


#Group by seasonality index
RMAest_season_index <- d %>% group_by(seasonality_category, intervention_variable, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.cont(.)) %>% as.data.frame()


df <- rbind(RMAest, RMAest_season_index)


#Add reference level to labe
df$RFlabel_ref <- paste0(df$RFlabel, ", ref: ", df$baseline_level)

df$seasonality_category <- factor(df$seasonality_category, levels=c("Pooled", "High", "Medium", "Low"))

# df$intervention_level[df$intervention_level=="Opposite max rain"] <- "Opposite\nmax rain"
# df$intervention_level[df$intervention_level=="Pre-max rain"] <- "Pre-max\nrain"
# df$intervention_level[df$intervention_level=="Max rain"] <- "Max\nrain"
# df$intervention_level[df$intervention_level=="Post-max rain"] <- "Post-max\nrain"
# df$intervention_level <- factor(df$intervention_level, levels=c("Post-max\nrain", "Max\nrain", "Pre-max\nrain", "Opposite\nmax rain"))

df$intervention_level[df$intervention_level=="Opposite max rain"] <- "Dry season\n(ref)"
df$intervention_level[df$intervention_level=="Pre-max rain"] <- "Pre-peak\nrainy season"
df$intervention_level[df$intervention_level=="Max rain"] <- "Peak rainy\nseason"
df$intervention_level[df$intervention_level=="Post-max rain"] <- "Post-peak\nrainy season"
df$intervention_level <- factor(df$intervention_level, 
                                levels=c("Dry season\n(ref)", "Pre-peak\nrainy season", "Peak rainy\nseason", "Post-peak\nrainy season"))


#mark reference points
df$ref <- ifelse(df$intervention_level=="Dry season\n(ref)","(ref.)",NA)
df <- df %>% filter(!(!is.na(ref) & seasonality_category!="Pooled")) %>% droplevels() %>%
            rename(`Seasonality\nCategory`=seasonality_category)

p_seasonRR <- ggplot(df, aes(y=ATE,x=intervention_level)) +
  geom_errorbar(aes(color=`Seasonality\nCategory`, ymin=CI1, ymax=CI2), 
                width = 0, 
                position = position_dodge(0.3)) +
  geom_point(aes(fill=`Seasonality\nCategory`, color=`Seasonality\nCategory`), 
             size = 3, 
             position = position_dodge(0.3)) +
  geom_text(aes(label=ref), hjust = 1.2, vjust=-1) +
  geom_hline(yintercept=0) +
  # scale_fill_manual(values=cbbPalette[c(1,6,7,8)], drop=TRUE, limits = levels(df$measure), guide = guide_legend(reverse = TRUE)) +
  # scale_color_manual(values=cbbPalette[c(1,6,7,8)], drop=TRUE, limits = levels(df$measure), guide = guide_legend(reverse = TRUE)) +
  scale_fill_manual(values=cbbPalette, drop=TRUE, limits = levels(df$measure), guide = guide_legend(reverse = F)) +
  scale_color_manual(values=cbbPalette, drop=TRUE, limits = levels(df$measure), guide = guide_legend(reverse = F)) +
  #coord_flip() +
  #xlab("3-month quarter of the year, grouped by rainfall")+
  xlab(NULL)+
  ylab("WLZ difference") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10))  +
  theme(
    axis.text.x = element_text(margin =
                                 margin(t = 0, r = 0, b = 0, l = 0),
                               size = 14 #, angle = 45, hjust = 1, vjust =1
                               )) +
  theme(axis.title.y = element_text(size = 14)) +
  theme(legend.position="top",
        legend.title = element_text(size=14), 
        legend.text = element_text(size=12)) +
  ggtitle("") + 
  theme(strip.text = element_text(size=14, margin = margin(t = 0))) 
print(p_seasonRR)

saveRDS(p_seasonRR, file = paste0(BV_dir,"/figures/plot-objects/season_RR_plot.rds"))
ggsave(p_seasonRR, file=paste0(BV_dir,"/figures/wasting/season_wlz_diff.png"), width=7, height=6)




