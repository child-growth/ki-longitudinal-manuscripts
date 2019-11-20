


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)
library(ggrepel)

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

# dhaz$outlier <- ifelse(is_outlier(dhaz$PAR) | is_outlier(dhaz$VIM),as.character(dhaz$RFlabel.x),NA)
# dwhz$outlier <- ifelse(is_outlier(dwhz$PAR) | is_outlier(dwhz$VIM),as.character(dwhz$RFlabel.x),NA)
dhaz$outlier <- ifelse(is_outlier(dhaz$PAR-dhaz$VIM, thres=1.5), as.character(dhaz$RFlabel.x),NA)
dwhz$outlier <- ifelse(is_outlier(dwhz$PAR-dwhz$VIM, thres=1.5), as.character(dwhz$RFlabel.x),NA)

# dhaz$outlier[dhaz$outlier %in% c("Safe water source","Single parent","Birth month")] <- NA
# dhaz$outlier[dhaz$outlier == "# of children <5 in HH"] <- "Birth month\n# of children <5 in HH\nSafe water source\nSingle parent"
# dwhz$outlier[dwhz$outlier == "Single parent"] <- "Single\nparent"

dwhz$outlier[dwhz$outlier == "Mother's age"] <- "Mother's\nage"
dwhz$outlier[dwhz$outlier == "Father's height"] <- "Father's\nheight"

dhaz$outlier[dhaz$outlier == "Single parent"] <- "Single\nparent"
dhaz$outlier[dhaz$outlier == "Birth order"] <- "Birth\norder"
dhaz$outlier[dhaz$outlier == "# of people in HH"] <- "# of people\nin HH"

dhaz$x <- -dhaz$PAR + 0.05
dhaz$y <- -dhaz$VIM + 0.1
#dhaz$y[dhaz$outlier == "# of children <5 in HH\nSafe water source\nSingle parent" & !is.na(dhaz$outlier)] <- dhaz$y[dhaz$outlier == "# of children <5 in HH\nSafe water source\nSingle parent"& !is.na(dhaz$outlier)] +0.1


#make plots
set.seed(12346)
#set.seed(123456)
pVIMhaz <- ggplot(dhaz, aes(x=-PAR, y=-VIM)) + 
  geom_point(size = 2, alpha=0.5) +
  coord_fixed(xlim = c(-0.2,0.4), ylim = c(-0.1,0.4)) +
  labs(x = "Attributable difference\nin LAZ, fixed reference", y = "Attributable difference\nin LAZ, optimal intervention") +
  geom_abline(slope=1,intercept=0) +
  geom_vline(xintercept = 0, linetype="dashed") +
  geom_hline(yintercept = 0, linetype="dashed") +
  # geom_text_repel(aes(label = outlier), na.rm = TRUE, size = 2, nudge_y = .05, box.padding = 0, color="grey40", direction = "both", force=1, xlim = c(-0.2, -0.05)#, ylim = c(0.15, 0.25)
  #                )+
  geom_text_repel(aes(label = outlier), lineheight = .7, na.rm = TRUE, size = 2.5,  
                                         xlim=c(-0.2, 0.2), ylim = c(0.15, 0.4), direction = "both", force=3, nudge_x = -0.05, color="grey40")+
  #geom_text(aes(label = outlier), na.rm = TRUE, size = 2.5,  nudge_x = -0.2, color="grey40")+
  #geom_label_repel(aes(label = outlier), na.rm = TRUE, ylim = c(0.2, 0.4), direction = "y",
                    #nudge_x = 0.1,
                    #box.padding = 3, 
                    #nudge_y = .05,
                   #force=10, 
                  # size = 2.5, point.padding = .1) +
  scale_x_continuous(breaks=c(-0.2,0,0.2,0.4)) +
  scale_y_continuous(breaks=c(0,0.2,0.4)) +
  theme(strip.background = element_blank(),
        axis.title = element_text(size=9),
        axis.text = element_text(size=8),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(color=FALSE, shape=FALSE)
#pVIMhaz


set.seed(156)
pVIMwhz <- ggplot(dwhz, aes(x=-PAR, y=-VIM)) + 
  geom_point(size = 2, alpha=0.5) +
  coord_fixed(xlim = c(-0.2,0.25), ylim = c(-0.2,0.2)) +
  labs(x = "Attributable difference\nin WLZ, fixed reference", y = "Attributable difference\nin WLZ, optimal intervention") +
  geom_abline(slope=1,intercept=0) +
  geom_vline(xintercept = 0, linetype="dashed") +
  geom_hline(yintercept = 0, linetype="dashed") +
  # geom_text_repel(aes(label = outlier), na.rm = TRUE, nudge_x = 0, size = 2, color="grey40",  xlim=c(-0.2, -0.05), ylim = c(-10,0.5)
  #                 ) +
  #geom_text_repel(aes(label = outlier), na.rm = TRUE, size = 2,  xlim=c(-0.2, -0.05), nudge_y = -0.05)+
  geom_text(aes(label = outlier), na.rm = TRUE, size = 2.5,   nudge_x = 0.13, color="grey40")+
  scale_x_continuous(breaks=c(-0.1, 0,0.1,0.2)) +
  scale_y_continuous(breaks=c(-0.1,0,0.1,0.2)) +
  theme(strip.background = element_blank(),
        axis.title = element_text(size=9),
        axis.text = element_text(size=8),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(color=FALSE, shape=FALSE)
#pVIMwhz


save(pVIMhaz, pVIMwhz, file=paste0(here::here(), "/results/rf results/fig-VIM-PAR-comp-objects.Rdata"))




ggsave(pVIMhaz, file=here("figures/risk factor/fig-VIM-PAR-comp-haz.png"), height=2, width=2)
ggsave(pVIMwhz, file=here("figures/risk factor/fig-VIM-PAR-comp-whz.png"), height=2, width=2)













