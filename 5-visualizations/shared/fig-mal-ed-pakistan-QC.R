

#-----------------------------------
# Import data, subset to relevant variables
#-----------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(growthstandards)

#--------------------------------------------
# Read in master data file and subset to Kenaba
#--------------------------------------------

d <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))

d <- d %>% 
  subset(., select=c(studyid, subjid, country, region, measurefreq, 
                     tr, sex, agedays, haz, whz, waz, muaz, 
                     lencm, htcm, wtkg, latitude, longitud))


#Calculate prevalence of height decrease between measurements
#Count a height decrease if height decreases more than WHO standard (2.8 x expert TEM of 0.29 =  0.812)

  d <- d %>% filter(measurefreq != "yearly") %>%
    arrange(studyid, subjid,agedays) %>% group_by(studyid, subjid) %>% 
    mutate(lencmlag=dplyr::lag(lencm, n = 1, default = NA, order_by=agedays),
           length_change=lencm-lencmlag,
           length_decrease=ifelse(length_change< -0.812, 1, 0),
           cohort=paste0(studyid," ",country)) %>% ungroup()  %>%
    group_by(studyid, country) %>% 
    mutate(
  perc_length_decrease = mean(length_decrease, na.rm=T) *100
    )

decr_df <- d %>% group_by(studyid, country) %>% slice(1)

#--------------------------------------------
# Read in raw Mal-ed data
#--------------------------------------------

mld <- read.csv("U:/data/MALED-201511/adam/ads_cognitive_maled.csv")
colnames(mld) <-tolower(colnames(mld))
head(mld)

mld <- mld %>% filter(country=="PAKISTAN")


#--------------------------------------------
# Mal-ed density
#--------------------------------------------

#Create plot dataset
df1 <- mld %>% subset(., select = c(haz)) %>% mutate(measure="Length-for-age\nZ-score") %>% rename(anthro=haz)
df2 <- mld %>% subset(., select = c(lencm)) %>% mutate(measure="Length\n(cm)") %>% rename(anthro=lencm)
df <- rbind(df2, df1)
df$measure = factor(df$measure, levels = c("Length\n(cm)","Length-for-age\nZ-score"))

p_mled <- ggplot(df, aes(x=anthro)) + 
  geom_density(aes(color = measure, fill = measure), alpha=0.5) +
  scale_fill_manual(values = tableau10[1:2]) +
  scale_color_manual(values = tableau10[1:2]) +
  facet_wrap(~measure, scales="free", strip.position="bottom") +
  xlab("") + ylab("Density") + ggtitle("Anomalies in MAL-ED Pakistan cohort anthropometry") +
  theme(
    aspect.ratio = 1,
    strip.background = element_blank(),
    strip.placement = "outside",
    strip.text.x = element_text(size = 12))

#--------------------------------------------
# Kenaba birth anthropometry
#--------------------------------------------

df2 <- d %>%
  filter(studyid == "Keneba") %>%
  filter(sex=="Male")

p_kenaba <- ggplot(d, aes(x=agedays, y=htcm)) + geom_point(alpha = 0.25, shape = 1) +
  geom_who(x_seq = seq(0, 730, by = 1), shade = tableau10[3],  y_var = "htcm") +
  xlab("Age in days") + ylab("Length (cm)") + ggtitle("Length across age in male children\nfrom MRC Kenaba cohort") +
  coord_cartesian(xlim=c(0, 120), ylim = c(35, 85)) #+ facet_wrap(~sex)


  
#--------------------------------------------
# Length change
#--------------------------------------------  
  
# ggplot(decr_df, aes(y=studyid, x=perc_length_decrease)) + geom_point()
# ggplot(decr_df, aes(x=perc_length_decrease)) + geom_histogram(bins=50)
  

p_length <- ggplot(d, aes(x=length_change)) + 
  geom_density(fill=tableau10[5], alpha=0.5) + 
  geom_vline(xintercept = 0, size=2) +
  geom_vline(xintercept = -0.812, size=2, color=tableau10[4], linetype="dashed") +
  xlab("Change in child length (cm)")  + ylab("Density") + 
    ggtitle("Change in child length across repeated measurements") +
  coord_cartesian(xlim = c(-4, 15))

  
  
#--------------------------------------------
# grid together plot
#--------------------------------------------   
  
require(cowplot)
  
  
fig2b <- plot_grid(p_kenaba, p_length, labels = c("B","C"), ncol = 2, align = 'h', axis = 'l', rel_heights = c(1, 1))
fig2 <- plot_grid(p_mled, fig2b, labels = c("A",""), ncol = 1, align = 'h', axis = 'l', rel_heights = c(1, 1))

ggsave(fig2, file=paste0(here(),"/figures/manuscript-figure-composites/shared/fig2_anthroQC.png"), width=14, height=14)
  
  
  
  
  
