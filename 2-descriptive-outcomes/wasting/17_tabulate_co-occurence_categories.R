


rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
library(ggvenn)

d <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds")) %>% filter(measurefreq=="monthly", agedays < 730) %>%
  mutate(
    waz = ifelse(waz < -6 | waz > 5, NA, waz),
    whz = ifelse(abs(whz) > 6, NA, whz),
    haz = ifelse(abs(haz) > 5, NA, haz)
  )

#Need to address misssing obs?
d <- d %>% filter(!is.na(waz), !is.na(haz), !is.na(whz))

d <- d %>%
  mutate(
    uwt= ifelse(waz < -2, T, F),
    wast= ifelse(whz < -2, T, F),
    stunt= ifelse(haz < -2, T, F),
    mod_uwt= ifelse(waz < -2 & waz > (-3), T, F),
    mod_wast= ifelse(whz < -2 & whz > (-3), T, F),
    mod_stunt= ifelse(haz < -2 & haz > (-3), T, F),
    sev_uwt= ifelse(waz < -3, T, F),
    sev_wast= ifelse(whz < -3, T, F),
    sev_stunt= ifelse(haz < -3, T, F)
    )


d <- d %>%
  mutate(
    Wasting = factor(cut(whz, breaks=c(-6,-3,-2,6), labels=c("Sev. wasted", "Mod. wasted",  "Not wasted"), include.lowest = T, right=F), levels=c("Not wasted", "Mod. wasted", "Sev. wasted")),
    Stunting = factor(cut(haz, breaks=c(-6,-3,-2,6), labels=c("Sev. stunted", "Mod. stunted",  "Not stunted"), include.lowest = T, right=F), levels=c("Not stunted", "Mod. stunted", "Sev. stunted")),
    Underweight = factor(cut(waz, breaks=c(-6,-3,-2,6), labels=c("Sev. underweight", "Mod. underweight",  "Not underweight"), include.lowest = T, right=F), levels=c("Not underweight", "Mod. underweight", "Sev. underweight")),
  )
table(d$Wasting)




tab <- xtabs(~Wasting+Stunting+Underweight, data=d)
ftable(tab) 
prop_tab <- ftable(round(prop.table(tab)*100,2)) 
format_tab <- stats:::format.ftable(prop_tab, quote = FALSE)

knitr::kable(format_tab)



#ggplot(d, aes(x=haz, y=waz))  + geom_point(alpha=0.1) + geom_smooth(se=F)
ggplot(d, aes(x=whz, y=waz)) + geom_point(alpha=0.1) + geom_smooth(se=F) 

# #Compare to DHS
# dhaz <- readRDS(file = (here::here("data", "clean-DHS-haz.rds")))
# dwhz <- readRDS(file = (here::here("data", "clean-DHS-whz.rds")))
# dwaz <- readRDS(file = (here::here("data", "clean-DHS-waz.rds")))
# dhsz <- rbind(dhaz, dwhz, dwaz)
# 
# 
# 
# 
# #Need to transform dataset
# 
# #
# d <- d %>%
#   mutate(
#     uwt= ifelse(waz < -2, T, F),
#     wast= ifelse(whz < -2, T, F),
#     stunt= ifelse(haz < -2, T, F),
#     mod_uwt= ifelse(waz < -2 & waz > (-3), T, F),
#     mod_wast= ifelse(whz < -2 & whz > (-3), T, F),
#     mod_stunt= ifelse(haz < -2 & haz > (-3), T, F),
#     sev_uwt= ifelse(waz < -3, T, F),
#     sev_wast= ifelse(whz < -3, T, F),
#     sev_stunt= ifelse(haz < -3, T, F)
#   )
# 
# 
# d <- d %>%
#   mutate(
#     Wasting = factor(cut(whz, breaks=c(-6,-3,-2,6), labels=c("Sev. wasted", "Mod. wasted",  "Not wasted"), include.lowest = T, right=F), levels=c("Not wasted", "Mod. wasted", "Sev. wasted")),
#     Stunting = factor(cut(haz, breaks=c(-6,-3,-2,6), labels=c("Sev. stunted", "Mod. stunted",  "Not stunted"), include.lowest = T, right=F), levels=c("Not stunted", "Mod. stunted", "Sev. stunted")),
#     Underweight = factor(cut(waz, breaks=c(-6,-3,-2,6), labels=c("Sev. underweight", "Mod. underweight",  "Not underweight"), include.lowest = T, right=F), levels=c("Not underweight", "Mod. underweight", "Sev. underweight")),
#   )
# table(d$Wasting)
# 
# 
# 
# 
# tab <- xtabs(~Wasting+Stunting+Underweight, data=d)
# ftable(tab) 
# prop_tab <- ftable(round(prop.table(tab)*100,2)) 
# format_tab <- stats:::format.ftable(prop_tab, quote = FALSE)
# 
# knitr::kable(format_tab)
# 
# 
