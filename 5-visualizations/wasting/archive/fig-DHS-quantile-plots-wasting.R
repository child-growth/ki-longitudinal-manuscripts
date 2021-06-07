rm(list = ls())
source(file.path(here::here(), "0-config.R"))


#Load data
get_file_path <- function(x)
  file.path(here::here(), x)
ki.monthly <- readRDS(get_file_path("results/dhs/ki.quantiles.monthly.rds"))
ki.quarterly<- readRDS(get_file_path("results/dhs/ki.quantiles.quarterly.rds"))
dhs <- readRDS(get_file_path("results/dhs/dhs_quantiles.rds"))

#rename variables to unique names for the merge
ki.monthly <- ki.monthly %>% rename(ki.zscore.monthly = zscore)
ki.quarterly <- ki.quarterly %>% rename(ki.zscore.quarterly = zscore)
dhs <- dhs %>% rename(dhs.zscore = zscore)


#Merge quantile datasets
d <- merge(dhs, ki.monthly,
  by = c("quantile", "region", "measure"))
d <- merge(d, ki.quarterly,
  by = c("quantile", "region", "measure"))

pcols <- c("black", tableau10[c(1:3)])

d2 <- d %>%
  filter(measure == "haz") %>%
  mutate(region = factor(region,
    levels = c("Overall", "AFRO", "PAHO", "SEARO")))

qrt <- filter(d2, quantile %in% c(5, 50, 95))

qrtlabs <- bind_rows(
  qrt %>%
    mutate(
      x = -6,
      xend = ki.zscore.quarterly,
      y = dhs.zscore,
      yend = dhs.zscore
    ) %>%
    select(x, xend, y, yend, quantile, region),
  qrt %>%
    mutate(
      y = -6,
      yend = dhs.zscore,
      x = ki.zscore.quarterly,
      xend = ki.zscore.quarterly
    ) %>%
    select(x, xend, y, yend, quantile, region)
) %>%
  mutate(quantile = factor(quantile))

ggplot(d2, aes(x = ki.zscore.quarterly, y = dhs.zscore,
    color = region)) +
  geom_abline(intercept = 0, slope = 1, color = "#e1e1e1") +
  geom_segment(aes(x = x, xend = xend,
    y = y, yend = yend, linetype = quantile),
    data = qrtlabs, color = "black") +
  geom_point() +
  geom_text(aes(x = -6, y = y, label = round(y, 2)),
    data = filter(qrtlabs, x == -6),
    color = "black", size = 3.5,
    hjust = "left", vjust = "bottom", nudge_y = 0.15) +
  geom_text(aes(x = x, y = -6, label = round(x, 2)),
    data = filter(qrtlabs, y == -6),
    color = "black", angle = 270, size = 3.5,
    hjust = "right", vjust = "bottom", nudge_x = 0.15) +
  scale_color_manual(values = pcols, guide = FALSE) +
  scale_linetype_manual(values = c("dashed", "solid", "dotted")) +
  facet_wrap(~ region, nrow = 1) +
  labs(
    x = "ki cohorts length-for-age z-score",
    y = "DHS length-for-age z-score") +
  theme_minimal()
