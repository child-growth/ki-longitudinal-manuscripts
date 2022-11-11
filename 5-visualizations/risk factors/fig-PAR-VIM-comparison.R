rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(gtable)
library(ggrepel)
library(ggplot2)
#library(rowr)

# #Load data
# vim <- readRDS(paste0(BV_dir,"/results/rf results/pooled_Zscore_VIM_results.rds"))
# par <- readRDS(paste0(BV_dir,"/results/rf results/pooled_Zscore_PAR_results.rds"))

vim <- readRDS(paste0(res_dir, "rf results/longbow results/opttx_vim_results.RDS")) %>% 
  filter(type=="PAR", agecat=="24 months",!is.na(estimate))# %>%
  #mutate(adjusted = adjustment_set!="unadjusted" , 1, 0) %>% filter(adjusted == 1)
unique(vim$intervention_variable)

par <- readRDS(paste0(res_dir, "rf results/longbow results/results_cont_prim.RDS")) %>% 
  filter(type=="PAR", agecat=="24 months",!is.na(estimate),outcome_variable=="haz"|outcome_variable=="whz") #%>%
  #mutate(adjusted = adjustment_set!="unadjusted" , 1, 0) %>% filter(adjusted == 1)

d <- left_join(par, vim, by = c("agecat","studyid","country","intervention_variable","outcome_variable","type")) %>% filter(!is.na(estimate.y))


#Keep only primary breastfeeding exposure and trth20
d <- d %>% filter(!(intervention_variable %in% c("predfeed3","predfeed6","predfeed36","exclfeed3","exclfeed6","exclfeed36", "trth2o","vagbrth")) )

# Drop non-sensical combinations
unique(d$intervention_variable)
atbirth <- c("vagbrth", "hdlvry", "trth2o", "safeh20", "cleanck", "impfloor", "impsan", "earlybf",  "enstunt", "enwast")
postnatal <- c("anywast06", "pers_wast", "perdiar6","predexfd6")
full2years <- "perdiar24"
wastingvars <- c("anywast06", "pers_wast", "enwast")
wasting_outcomevars <- c("wasted", "swasted", "wast_rec90d", "ever_wasted", "ever_swasted", "pers_wast", "ever_co" )



dim(d)
d <- d %>% filter(!(intervention_variable %in% atbirth & agecat=="Birth"))
d <- d %>% filter(!(intervention_variable %in% postnatal & agecat %in% c("Birth", "0-6 months",  "0-24 months")))
d <- d %>% filter(!(intervention_variable %in% full2years & agecat!="24 months"))
d <- d %>% filter(!(intervention_variable %in% wastingvars & outcome_variable %in% wasting_outcomevars))
dim(d)

d <- d %>% mutate(diff=estimate.x - estimate.y)
summary(d$diff)
ggplot(d, aes(x=diff)) + geom_density()

pool.Zpar <- function(d){
  nstudies <- d %>% summarize(N=n())
  
  fit<-NULL
  try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="REML", measure="GEN"))
  if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="ML", measure="GEN"))}
  if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="DL", measure="GEN"))}
  if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="HE", measure="GEN"))}
  
  if(is.null(fit)){
    est<-data.frame(PAR=NA, CI1=NA,  CI2=NA)
  }else{
    est<-data.frame(fit$b, fit$ci.lb, fit$ci.ub)
    colnames(est)<-c("PAR","CI1","CI2")    
  }
  est$Nstudies <- nstudies$N
  rownames(est) <- NULL
  return(est)
}

RMAest <- d %>% rename(untransformed_estimate=untransformed_estimate.x, untransformed_se=untransformed_se.x, 
                        intervention_level=intervention_level.x, baseline_level=baseline_level.x) %>%
  group_by(intervention_variable, agecat, intervention_level, baseline_level,outcome_variable) %>%
  do(pool.Zpar(.)) %>% as.data.frame()
RMAest.vim <- d %>% rename(untransformed_estimate=untransformed_estimate.y, untransformed_se=untransformed_se.y) %>%
  group_by(intervention_variable, agecat, outcome_variable) %>%
  do(pool.Zpar(.)) %>% as.data.frame() %>%
  rename(VIM=PAR, V.CI1=CI1, V.CI2=CI2)

#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest, outcome="continuous")
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$intervention_level)


df <- left_join(RMAest_clean, RMAest.vim, by = c("agecat","intervention_variable","outcome_variable")) 



# head(vim)
# dim(par)
# 
# par <- par %>% filter( agecat=="24 months", region=="Pooled", !is.na(PAR))
# vim <- vim %>% filter(agecat=="24 months", region=="Pooled", !is.na(PAR))
# 
# vim2 <- vim %>% subset(., select = c(outcome_variable, intervention_variable, PAR, CI1, CI2, Nstudies, RFlabel)) %>% rename(VIM=PAR, V.CI1=CI1, V.CI2=CI2)
# par2 <- par %>% subset(., select = c(outcome_variable, intervention_variable, PAR, CI1, CI2, Nstudies, RFlabel))  
# 
# v <- unique(vim2$intervention_variable)
# p <- unique(par2$intervention_variable)
# v[!(v %in% p)]
# p[!(p %in% v)]
# 
# dim(par2)
# dim(vim2)
# df <- merge(par2, vim2, by=c("outcome_variable", "intervention_variable"),  all.x = F,  all.y = F)
# dim(df)

table(df$Nstudies.x-df$Nstudies.y)
#df <- df %>% filter(Nstudies.x==Nstudies.y)

df <- df %>% arrange(PAR)


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
summary(dhaz$diff)
summary(dwhz$diff)

dhaz[dhaz$diff>1,]

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

#creating vector for capitalized titles
capitalized = c(whz = 'WHZ', haz = 'HAZ')

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

#make plots
set.seed(12346)
pVIMcombined <- ggplot(df, aes(x=-PAR, y=-VIM, color=main_color)) +
  scale_colour_manual(values=c(main_color, "grey30", "grey30")) +
  scale_alpha_manual(values=c(0.5, 1))+
  scale_size_manual(values=c(4, 4, 4))+
  scale_shape_manual(values=c(19,9,13))+
  coord_fixed(xlim = c(-0.1,0.45), ylim = c(-0.1,0.4)) +
  labs(x = "Population intervention effect,\nfixed reference", y = "Population intervention effect,\n optimal intervention") +
  geom_abline(slope=1,intercept=0) +
  geom_vline(xintercept = 0, linetype="dashed") +
  geom_hline(yintercept = 0, linetype="dashed") +
  geom_point() +
  geom_label_repel(aes(label=RFlabel), size=2, color="grey32",
                   label.size = 0.25, hjust=-0.1, vjust=0,
                    force = 26.5, max.iter = 2000, nudge_y = .085, nudge_x = 0.17, 
                    box.padding = 0.82,  segment.alpha = 0.5, segment.size = 0.3,
                   label.padding = 0.1,
                   point.padding = 0.35,
                   na.rm=TRUE,
                   fill = alpha(c("white"),0.85)) +

  scale_x_continuous(breaks=(-5:5) * .2) +
  scale_y_continuous(breaks=(-5:5) * .2) +
  theme(strip.background = element_blank(),
        axis.title = element_text(size=9),
        axis.text = element_text(size=8),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(color=FALSE, shape=FALSE, size=FALSE, alpha=FALSE) +
  facet_grid(outcome_variable~., labeller = labeller(outcome_variable = capitalized))


#print plot
print(pVIMcombined)



ggsave(pVIMcombined, file=paste0(BV_dir,"/figures/risk-factor/optx_comp.png"), width=7, height=10)

save(pVIMcombined, file=paste0(BV_dir, "/results/rf results/fig-VIM-PAR-comp-objects.Rdata"))
saveRDS(pVIMcombined, file=paste0(BV_dir, "/results/rf results/fig-VIM-PAR-comp-object-combined.RDS"))


