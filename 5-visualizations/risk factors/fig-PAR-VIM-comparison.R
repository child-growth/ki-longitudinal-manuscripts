


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)
library(ggrepel)
library(ggplot2)
#library(rowr)

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
df <- df %>% filter(!is.na(PAR)) %>% filter(RFlabel.x != "Mean WHZ in the prior 3 mo.")

df <- df %>% arrange(PAR)

# df$measure <- NA
# df$measure[df$outcome_variable=="haz"] <- "Height-for-age Z-score"
# df$measure[df$outcome_variable=="whz"] <- "Weight-for-height Z-score"


#Plot data
dhaz <- df[df$outcome_variable=="haz",]
dwhz <- df[df$outcome_variable=="whz",]


#Mark outliers
is_outlier <- function(x, thres=1.5) {
  return(x < quantile(x, 0.25) - thres * IQR(x) | x > quantile(x, 0.75) + thres * IQR(x))
}

dhaz$diff <- abs(dhaz$PAR-dhaz$VIM)
dwhz$diff <- abs(dwhz$PAR-dwhz$VIM)

dhaz <- dhaz %>% arrange(rev(diff))
dwhz <- dwhz %>% arrange(rev(diff))
head(dhaz)
head(dwhz)

dhaz$outlier <- ifelse(is_outlier(dhaz$PAR-dhaz$VIM, thres=2.5), as.character(dhaz$RFlabel.x),NA)
dwhz$outlier <- ifelse(is_outlier(dwhz$PAR-dwhz$VIM, thres=1.25), as.character(dwhz$RFlabel.x),NA)
dhaz$is_outlier <- ifelse(is.na(dhaz$outlier), "0", "1")
dwhz$is_outlier <- ifelse(is.na(dwhz$outlier), "0", "1")
dhaz$outlier
dwhz$outlier


# dwhz$outlier[dwhz$outlier == "Mother's age"] <- "Mother's\nage"
# dwhz$outlier[dwhz$outlier == "Father's height"] <- "Father's\nheight"
# 
# dhaz$outlier[dhaz$outlier == "Single parent"] <- "Single\nparent"
# dhaz$outlier[dhaz$outlier == "Birth order"] <- "Birth\norder"
# dhaz$outlier[dhaz$outlier == "# of people in HH"] <- "# of people\nin HH"

# dhaz$x <- -dhaz$PAR + 0.05
# dhaz$y <- -dhaz$VIM + 0.1
#dhaz$y[dhaz$outlier == "# of children <5 in HH\nSafe water source\nSingle parent" & !is.na(dhaz$outlier)] <- dhaz$y[dhaz$outlier == "# of children <5 in HH\nSafe water source\nSingle parent"& !is.na(dhaz$outlier)] +0.1


#creating outlier_color factor variable for dhaz
for (i in 1:length(dhaz$outlier)) {
  if (is.na(dhaz$outlier[i])){
    dhaz$outlier[i] <- ""
  }
}
fdata = factor(dhaz$outlier)

levels(fdata) = c(1:length(levels(fdata)))

dhaz$outlier_color = fdata

  
#creating outlier_color factor variable for dwhz
for (i in 1:length(dwhz$outlier)) {
  if (is.na(dwhz$outlier[i])){
    dwhz$outlier[i] <- ""
  }
}
fdata1 = factor(dwhz$outlier)
levels(fdata1) = c(1:length(levels(fdata1)))
dwhz$outlier_color = fdata1


#Main color
main_color <- "#287D8EFF"

#Viridis colors
#287D8EFF
#29AF7FFF

#make plots
set.seed(12346)
#set.seed(123456)
pVIMhaz <- ggplot(dhaz, aes(x=-PAR, y=-VIM, color=outlier_color, shape=outlier_color,  size=outlier_color)) + 
  geom_point(aes(alpha=is_outlier)) +
  scale_colour_manual(values=c(main_color, "grey30", "grey30")) +
  scale_alpha_manual(values=c(0.5, 1))+
  scale_size_manual(values=c(4, 4, 4))+
  scale_shape_manual(values=c(19,9,13))+
  coord_fixed(xlim = c(-0.1,0.4), ylim = c(-0.1,0.4)) +
  labs(x = "Attributable difference\nfixed reference", y = "Attributable difference\nLAZ, optimal intervention") +
  geom_abline(slope=1,intercept=0) +
  geom_vline(xintercept = 0, linetype="dashed") +
  geom_hline(yintercept = 0, linetype="dashed") +
  #original - geom_text_repel(aes(label = outlier), lineheight = .7, na.rm = TRUE, size = 2.5,  
                                         #xlim=c(-0.2, 0.2), ylim = c(0.15, 0.4), direction = "both", force=3, nudge_x = -0.05, color="grey40")+
  #version with labeling - geom_text_repel(aes(label = outlier), lineheight = 0.7, na.rm = TRUE, size = 2.5,  
                 #direction = "both", xlim = c(-0.25, 0.4), arrow = arrow(length = unit(0.05, "npc")), force=3, nudge_x = -0.18, nudge_y = 0.16, color="grey40", min.segment.length = 0)+
  scale_x_continuous(breaks=c(-0.2,0,0.2,0.4)) +
  scale_y_continuous(breaks=c(0,0.2,0.4)) +
  theme(strip.background = element_blank(),
        axis.title = element_text(size=9),
        axis.text = element_text(size=8),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(color=FALSE, shape=FALSE, size=FALSE, alpha=FALSE)

pVIMhaz


set.seed(156)
pVIMwhz <- ggplot(dwhz, aes(x=-PAR, y=-VIM, color=outlier_color, shape=outlier_color,  size=outlier_color)) + 
  geom_point(aes(alpha=is_outlier)) +
  scale_colour_manual(values=c(main_color, "grey30", "grey30")) +
  scale_alpha_manual(values=c(0.5, 1))+
  scale_size_manual(values=c(4, 4, 4))+
  scale_shape_manual(values=c(19,9,13))+
  coord_fixed(xlim = c(-0.1,0.25), ylim = c(-0.1,0.25)) +
  labs(x = "Attributable difference\nfixed reference", y = "Attributable difference\noptimal intervention") +
  geom_abline(slope=1,intercept=0) +
  geom_vline(xintercept = 0, linetype="dashed") +
  geom_hline(yintercept = 0, linetype="dashed") +
  # geom_text_repel(aes(label = outlier), na.rm = TRUE, nudge_x = 0, size = 2, color="grey40",  xlim=c(-0.2, -0.05), ylim = c(-10,0.5)
  #                 ) +
  #geom_text_repel(aes(label = outlier), na.rm = TRUE, size = 2,  xlim=c(-0.2, -0.05), nudge_y = -0.05)+
  # ORIGINAL - geom_text(aes(label = outlier), na.rm = TRUE, size = 2.5,   nudge_x = 0.13, color="grey40")+
  #geom_text_repel(aes(label = outlier), lineheight = 0.7, na.rm = TRUE, size = 2.5,  
  #                direction = "both", arrow = arrow(length = unit(0.05, "npc")), force=3, nudge_x = -0.18, nudge_y = 0.16, color="grey40", min.segment.length = 0)+
  scale_x_continuous(breaks=c(-0.1, 0,0.1,0.2)) +
  scale_y_continuous(breaks=c(-0.1,0,0.1,0.2)) +
  theme(strip.background = element_blank(),
        axis.title = element_text(size=9),
        axis.text = element_text(size=8),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(color=FALSE, shape=FALSE, size=FALSE, alpha=FALSE)
pVIMwhz


save(pVIMhaz, pVIMwhz, file=paste0(here::here(), "/results/rf results/fig-VIM-PAR-comp-objects.Rdata"))
saveRDS(pVIMhaz, file=paste0(here::here(), "/results/rf results/fig-VIM-PAR-comp-object-LAZ.RDS"))
saveRDS(pVIMwhz, file=paste0(here::here(), "/results/rf results/fig-VIM-PAR-comp-object-WLZ.RDS"))




ggsave(pVIMhaz, file=here("figures/risk-factor/fig-VIM-PAR-comp-haz.png"), height=2, width=2)
ggsave(pVIMwhz, file=here("figures/risk-factor/fig-VIM-PAR-comp-whz.png"), height=2, width=2)





#Make dissertation style plots

#make plots
set.seed(12346)
#set.seed(123456)
pVIMhaz <- ggplot(dhaz, aes(x=-PAR, y=-VIM, color=outlier_color, shape=outlier_color,  size=outlier_color)) + 
  geom_point(aes(alpha=is_outlier)) +
  scale_colour_manual(values=c("grey30", "grey30", "grey30")) +
  scale_alpha_manual(values=c(0.5, 1))+
  scale_size_manual(values=c(4, 4, 4))+
  scale_shape_manual(values=c(19,9,13))+
  coord_fixed(xlim = c(-0.1,0.4), ylim = c(-0.1,0.4)) +
  labs(x = "Attributable difference\nfixed reference", y = "Attributable difference\nLAZ, optimal intervention") +
  geom_abline(slope=1,intercept=0) +
  geom_vline(xintercept = 0, linetype="dashed") +
  geom_hline(yintercept = 0, linetype="dashed") +
  #original - geom_text_repel(aes(label = outlier), lineheight = .7, na.rm = TRUE, size = 2.5,  
  #xlim=c(-0.2, 0.2), ylim = c(0.15, 0.4), direction = "both", force=3, nudge_x = -0.05, color="grey40")+
  #version with labeling - geom_text_repel(aes(label = outlier), lineheight = 0.7, na.rm = TRUE, size = 2.5,  
  #direction = "both", xlim = c(-0.25, 0.4), arrow = arrow(length = unit(0.05, "npc")), force=3, nudge_x = -0.18, nudge_y = 0.16, color="grey40", min.segment.length = 0)+
  scale_x_continuous(breaks=c(-0.2,0,0.2,0.4)) +
  scale_y_continuous(breaks=c(0,0.2,0.4)) +
  theme(strip.background = element_blank(),
        axis.title = element_text(size=9),
        axis.text = element_text(size=8),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(color=FALSE, shape=FALSE, size=FALSE, alpha=FALSE)

pVIMhaz


set.seed(156)
pVIMwhz <- ggplot(dwhz, aes(x=-PAR, y=-VIM, color=outlier_color, shape=outlier_color,  size=outlier_color)) + 
  geom_point(aes(alpha=is_outlier)) +
  scale_colour_manual(values=c("grey30", "grey30", "grey30")) +
  scale_alpha_manual(values=c(0.5, 1))+
  scale_size_manual(values=c(4, 4, 4))+
  scale_shape_manual(values=c(19,9,13))+
  coord_fixed(xlim = c(-0.1,0.25), ylim = c(-0.1,0.25)) +
  labs(x = "Attributable difference\nfixed reference", y = "Attributable difference\noptimal intervention") +
  geom_abline(slope=1,intercept=0) +
  geom_vline(xintercept = 0, linetype="dashed") +
  geom_hline(yintercept = 0, linetype="dashed") +
  # geom_text_repel(aes(label = outlier), na.rm = TRUE, nudge_x = 0, size = 2, color="grey40",  xlim=c(-0.2, -0.05), ylim = c(-10,0.5)
  #                 ) +
  #geom_text_repel(aes(label = outlier), na.rm = TRUE, size = 2,  xlim=c(-0.2, -0.05), nudge_y = -0.05)+
  # ORIGINAL - geom_text(aes(label = outlier), na.rm = TRUE, size = 2.5,   nudge_x = 0.13, color="grey40")+
  #geom_text_repel(aes(label = outlier), lineheight = 0.7, na.rm = TRUE, size = 2.5,  
  #                direction = "both", arrow = arrow(length = unit(0.05, "npc")), force=3, nudge_x = -0.18, nudge_y = 0.16, color="grey40", min.segment.length = 0)+
  scale_x_continuous(breaks=c(-0.1, 0,0.1,0.2)) +
  scale_y_continuous(breaks=c(-0.1,0,0.1,0.2)) +
  theme(strip.background = element_blank(),
        axis.title = element_text(size=9),
        axis.text = element_text(size=8),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(color=FALSE, shape=FALSE, size=FALSE, alpha=FALSE)
pVIMwhz


save(pVIMhaz, pVIMwhz, file=paste0(here::here(), "/results/rf results/fig-VIM-PAR-comp-objects-dissertation.Rdata"))
saveRDS(pVIMhaz, file=paste0(here::here(), "/results/rf results/fig-VIM-PAR-comp-object-LAZ-dissertation.RDS"))
saveRDS(pVIMwhz, file=paste0(here::here(), "/results/rf results/fig-VIM-PAR-comp-object-WLZ-dissertation.RDS"))











