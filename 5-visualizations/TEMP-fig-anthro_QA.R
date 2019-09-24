


rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
library(growthstandards)



#Calculate -3, -2, -1, 0, 1, 2, 3 Z-scores for all age, weight, and height as plot references

sim_dat <- data.frame(
  agedays = rep(1:730, 14),
  Zscore = rep(rep(c(-3, -2, -1, 0, 1, 2, 3), each = 730),2),
  sex=rep(c("Male","Female"), each = 730*7)
)


sim_dat$weight <- who_zscore2wtkg(sim_dat$agedays, sim_dat$Zscore, sex = sim_dat$sex)
sim_dat$height <- who_zscore2htcm(sim_dat$agedays, sim_dat$Zscore, sex = sim_dat$sex)

sim_dat$Zscore <- factor(sim_dat$Zscore)





#Color excluded points




ggplot(sim_dat, aes(x=height, y=weight, group=Zscore, color=Zscore)) +
  geom_smooth(se=F) +
  facet_wrap(~sex)


ggplot(sim_dat, aes(x=agedays, y=weight, group=Zscore, color=Zscore)) +
  geom_smooth(se=F) +
  facet_wrap(~sex)


ggplot(sim_dat, aes(x=agedays, y=height, group=Zscore, color=Zscore)) +
  geom_smooth(se=F) +
  facet_wrap(~sex)




p <- ggplot(data = subset(cpp, subjid == 8), aes(x = agedays, y = htcm)) +
  geom_who(x_seq = seq(0, 2600, by = 10), y_var = "htcm") +
  geom_point()
p


p <- ggplot(data = subset(cpp, subjid == 8), aes(x = htcm, y = wtkg)) +
  geom_who(x_seq = seq(50, 120, by = 1), x_var = "htcm", y_var = "wtkg") +
  geom_point()
p


library(rbokeh)
cppsubj <- subset(cpp, !duplicated(cpp$subjid))
figure(xlab = "Gestational Age at Birth (days)", ylab = "Birth Length (cm)") %>%
  ly_igb(gagebrth = 250:310, var = "lencm", sex = "Male") %>%
  ly_points(jitter(gagebrth), birthlen, data = subset(cppsubj, sex == "Male"),
            color = "black")

