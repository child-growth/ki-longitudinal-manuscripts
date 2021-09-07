##########################################
# ki longitudinal manuscripts
# wasting analysis

# figure: stacked bar chart showing 
# proportion of children who were newly wasted, 
# still wasted, relapsed, recovered, never wasted
##########################################

#-----------------------------------------
# Wasting flow chart
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# load data
co_pool = readRDS(paste0(res_dir, "co_flow_pooled.RDS"))

#Scale sum to 100
co_pool <- co_pool %>% group_by(agem) %>%
  mutate(sum=sum(est), est=est/sum, sum2=sum(est)) %>% ungroup()

#get summary measures:
unique(co_pool$label)
co_pool %>% filter(label %in% 
                     c("Wasted+Underweight",      
                       "Stunted+Underweight",      
                       "Wasted+Stunted")) %>%
  group_by(agem) %>% summarise(sum(est)*100) %>% as.data.frame()

co_pool %>% filter( !(label %in% c("Healthy","Recovered"))) %>% 
  group_by(agem) %>%
  mutate(sum=sum(est), est=est/sum) %>% 
  group_by(agem, label) %>% summarise(mean(est)*100) %>% as.data.frame()

co_pool %>% filter( !(label %in% c("Healthy","Recovered"))) %>% 
  group_by(agem) %>%
  mutate(sum=sum(est), est=est/sum) %>% 
  filter(label %in% 
           c("Wasted+Underweight",      
             "Stunted+Underweight",      
             "Wasted+Stunted")) %>%
  group_by(agem) %>% summarise(sum(est)*100) %>% as.data.frame()

co_pool %>% filter( !(label %in% c("Healthy","Recovered")),
                    label %in% 
                      c("Wasted+Underweight",      
                        "Stunted+Underweight",      
                        "Wasted+Stunted")) %>%
  group_by(label) %>% summarise(mean(est)*100) %>% as.data.frame()




#-----------------------------------------
# define hybrid color palette
#-----------------------------------------
n=8
viridis_cols = viridis(
  n = n,
  alpha = 1,
  begin = 0,
  end = 1,
  direction = 1,
  option = "C"
)

plot_cols  = viridis_cols #[c(1,2, 4, 6, 8, 10, 11, 12)]

pink_green = rev(brewer.pal(n = 8, name = "PiYG"))

#Colors 1 and 2 are never faltered and recovered

#Stunting
pink_green[3] = viridis_cols[8]

#Underweight
pink_green[4] = tableau10[1]

#Wasting
pink_green[5] = tableau10[4]

#Combination of faltering:

#Stunted + underweight
# colfunc1 <- colorRampPalette(c(pink_green[3], pink_green[4]))
# pink_green[6] = colfunc1(3)[2]
pink_green[6] = "#3bd1d6"

#Wasted + underweight
# colfunc2 <- colorRampPalette(c(pink_green[5], pink_green[4]))
# pink_green[7] = colfunc2(3)[2]
pink_green[7] = tableau10[5]
  
#Black for all 3 conditions:
pink_green[8] = tableau11[1]

  


#-----------------------------------------
# stacked bar graphs using random effects pooled data
#-----------------------------------------
co_pool$label <- as.character(co_pool$label)
co_pool$label[co_pool$label=="Healthy"] <- "Never faltered"
co_pool$label[co_pool$label=="Wasted+Stunted"] <- "Wasted+Stunted+Underweight"
plot_data_pooled = co_pool %>%
  rename(classif = label) %>%
  select(agem, classif, est) %>%
  mutate(classif = factor(classif, levels = c("Never faltered", 
                                              "Recovered",
                                              "Stunted",
                                              "Underweight",       
                                              "Wasted",                                             
                                              "Stunted+Underweight",                                              
                                              "Wasted+Underweight",                                             
                                              "Wasted+Stunted+Underweight"
  )))



bar_plot_RE = ggplot(plot_data_pooled) +
  geom_bar(aes(x = agem, y = est*100, fill = classif), colour="black", stat="identity", width=0.5) +
  scale_fill_manual("", values = pink_green) +
  theme(legend.position = "bottom") +
  xlab("Child age, months") + ylab("Percentage of children (%)") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10))
bar_plot_RE


#-----------------------------------------
# define standardized plot names
#-----------------------------------------
bar_plot_RE_name = create_name(
  outcome = "co-occurrence",
  cutoff = 2,
  measure = "wasting, stunting, and underweight co-occurrence",
  population = "overall",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(bar_plot_RE, file=paste0(BV_dir,"/figures/wasting/fig-",bar_plot_RE_name,".png"), width=10, height=4)


saveRDS(plot_data_pooled, file=paste0(figdata_dir_wasting, "/figdata-",bar_plot_RE_name,".RDS"))

saveRDS(bar_plot_RE, file=paste0(fig_dir,"/plot-objects/co_flow_object.rds"))





