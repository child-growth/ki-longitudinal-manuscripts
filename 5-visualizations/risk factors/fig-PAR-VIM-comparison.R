


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())



#Load data
vim <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_VIM_results.rds"))
par <- readRDS(paste0(here::here(),"/results/rf results/pooled_Zscore_PAR_results.rds"))

head(vim)
dim(par)

par <- par %>% filter( agecat=="24 months", region=="Pooled", !is.na(PAR))
vim <- vim %>% filter(agecat=="24 months", region=="Pooled", !is.na(PAR))

vim2 <- vim %>% subset(., select = c(outcome_variable, intervention_variable, PAR, CI1, CI2, RFlabel)) %>% rename(VIM=PAR, V.CI1=CI1, V.CI2=CI2)
par2 <- par %>% subset(., select = c(outcome_variable, intervention_variable, PAR, CI1, CI2, RFlabel))  

v <- unique(vim2$intervention_variable)
p <- unique(par2$intervention_variable)
v[!(v %in% p)]
p[!(p %in% v)]

dim(par2)
dim(vim2)
df <- merge(par2, vim2, by=c("outcome_variable", "intervention_variable"))
dim(df)
df <- df %>% filter(!is.na(PAR))

df <- df %>% arrange(PAR)

# df$measure <- NA
# df$measure[df$outcome_variable=="haz"] <- "Height-for-age Z-score"
# df$measure[df$outcome_variable=="whz"] <- "Weight-for-height Z-score"


#Plot data
dhaz <- df[df$outcome_variable=="haz",]
dwhz <- df[df$outcome_variable=="whz",]


#Mark outliers
is_outlier <- function(x) {
  return(x < quantile(x, 0.25) - 1.5 * IQR(x) | x > quantile(x, 0.75) + 1.5 * IQR(x))
}

dhaz$outlier <- ifelse(is_outlier(dhaz$PAR) | is_outlier(dhaz$VIM),as.character(dhaz$RFlabel.x),NA)
dwhz$outlier <- ifelse(is_outlier(dwhz$PAR) | is_outlier(dwhz$VIM),as.character(dwhz$RFlabel.x),NA)


#make plots
p1 <- ggplot(dhaz, aes(x=-PAR, y=-VIM)) + 
  geom_point(size = 4, alpha=0.5) +
  coord_fixed() +
  labs(x = "Attributable difference\nin LAZ, fixed reference", y = "Attributable difference\nin LAZ, optimal intervention") +
  geom_abline(slope=1,intercept=0) +
  geom_vline(xintercept = 0) +
  geom_hline(yintercept = 0) +
  geom_label_repel(aes(label = outlier), na.rm = TRUE) +
  theme(strip.background = element_blank(),
        legend.position="right",
        strip.text.x = element_text(size=12),
        axis.text.x = element_text(size=12),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(color=FALSE, shape=FALSE)

p1


p2 <- ggplot(dwhz, aes(x=-PAR, y=-VIM)) + 
  geom_point(size = 4, alpha=0.5) +
  coord_fixed() +
  labs(x = "Attributable difference\nin LAZ, fixed reference", y = "Attributable difference\nin LAZ, optimal intervention") +
  geom_abline(slope=1,intercept=0) +
  geom_vline(xintercept = 0) +
  geom_hline(yintercept = 0) +
  geom_label_repel(aes(label = outlier), na.rm = TRUE) +
  theme(strip.background = element_blank(),
        legend.position="right",
        strip.text.x = element_text(size=12),
        axis.text.x = element_text(size=12),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(color=FALSE, shape=FALSE)

p2




# (5) if possible to label the outliers that is great, but I guess would need to see how it looks.  
#Another idea (more tricky) might be to color the outliers unique colors and then color those corresponding variable points in the forrest plot.



ggsave(p1, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/fig-VIM-PAR-comp-haz.png"), height=4, width=4)
ggsave(p2, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/fig-VIM-PAR-comp-whz.png"), height=4, width=4)














