
#-----------------------------------------
# Process data for wasting flow chart
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source("U:/Wasting/1-outcomes/0_wast_incfunctions.R")


load("U:/ucb-superlearner/data/wasting_data.RData")

d <- d %>% filter(measurefreq=="monthly")


##########################################
# Define indicators of wasting at each time point
##########################################

# define age windows
d <- calc.monthly.agecat(d)
d <- d %>% filter(!is.na(agecat))
d <- d %>% group_by(studyid, subjid, agecat) %>% summarize(whz=mean(whz))

table(d$agecat)
length(unique(d$agecat))


#Subset to children with measurements at every month
dim(d)
d <- d %>% group_by(studyid, subjid) %>% mutate(N=n()) %>% filter(N==25)
dim(d)
table(d$agecat)
levels(d$agecat)[1] <- "Birth"




#-----------------------------------------
# data for flow plots
#-----------------------------------------

Plot_age_vec <- c("Birth", "3 months","6 months","9 months", "12 months",  "15 months",
                  "18 months" ,"21 months","24 months")

# identify ever wasted children
wast_data = d %>%
  filter(!is.na(agecat)) %>%
  filter(agecat %in% Plot_age_vec) %>%
  group_by(subjid, agecat) %>%
  arrange(subjid) %>%
  
  summarize(minwhz = min(whz)) %>%
  
  # create indicator for whether the child 
  # was wasted in CURRENT age category
  mutate(wasted=ifelse(minwhz< -2,1,0)) %>%
  
  # create indicator for whether the child 
  # was wasted in PREVIOUS age category
  group_by(subjid) %>%
  mutate(minwhz_prev=ifelse(
    agecat=="Birth",NA,      
    ifelse(agecat=="3 months",minwhz[agecat=="Birth"],
           ifelse(agecat=="6 months",minwhz[agecat=="3 months"],
                  ifelse(agecat=="9 months",minwhz[agecat=="6 months"],
                         ifelse(agecat=="12 months",minwhz[agecat=="9 months"],
                                ifelse(agecat=="15 months",minwhz[agecat=="12 months"],
                                       ifelse(agecat=="18 months",minwhz[agecat=="15 months"],
                                              ifelse(agecat=="21 months",minwhz[agecat=="18 months"],
                                                     ifelse(agecat=="24 months",minwhz[agecat=="21 months"],
                                                            NA)))))))))) %>%
  mutate(still_wasted = ifelse(minwhz_prev < -2 & minwhz < -2, 1, 0),
         prev_wasted = ifelse(minwhz_prev < -2 & minwhz >= -2 , 1, 0)) %>%
  mutate(still_wasted = ifelse(is.na(minwhz_prev), 0, still_wasted ),
         prev_wasted = ifelse(is.na(minwhz_prev), 0, prev_wasted )) 


# create indicator for whether the child 
# was NEVER wasted 
wast_data = wast_data %>%
  group_by(subjid) %>%
  mutate(cum_minwhz = cummin(minwhz)) %>%
  mutate(never_wasted = ifelse(cum_minwhz >= -2, 1, 0)) %>%
  
  # create indicator for whether the child 
  # was NEWLY wasted 
  mutate(newly_wasted = ifelse(never_wasted==0 & still_wasted==0 & prev_wasted==0, 1, 0)) %>%
  mutate(newly_wasted = ifelse(agecat=="Birth" & minwhz< -2, 1, newly_wasted)) %>%
  select(subjid, agecat, minwhz, minwhz_prev, cum_minwhz, wasted, 
         never_wasted, prev_wasted, newly_wasted, still_wasted) 

# Check that no child was classified in more
# than one category at any time point 
summary = wast_data %>%
  group_by(agecat) %>%
  summarise(
    nchild=length(unique(subjid)),
    newly_wasted = sum(newly_wasted, na.rm=T),
    still_wasted = sum(still_wasted, na.rm=T),
    prev_wasted = sum(prev_wasted, na.rm=T),
    never_wasted = sum(never_wasted, na.rm=T)) %>%
  mutate(newly_wasted = newly_wasted/nchild,
         still_wasted = still_wasted/nchild,
         prev_wasted = prev_wasted/nchild,
         never_wasted = never_wasted/nchild)

summary = summary %>%
  mutate(still_wasted = ifelse(agecat=="Birth",0,still_wasted),
         prev_wasted = ifelse(agecat=="Birth",0,prev_wasted)) 

summary = summary %>%
  mutate(sum = still_wasted + newly_wasted + prev_wasted + never_wasted)

summary








#-----------------------------------------
# bar graphs
#-----------------------------------------
plot_data = wast_data %>%
  mutate(classif = case_when(
    never_wasted == 1 ~ "Never wasted",
    prev_wasted == 1 ~ "Recovered",
    still_wasted == 1 ~ "Still wasted",
    newly_wasted == 1 ~ "Newly wasted"
  )) %>%
  select(subjid, agecat, classif) %>%
  mutate(freq = 1) %>%
  mutate(classif = factor(classif, levels = c("Never wasted", 
                                              "Recovered",
                                              "Newly wasted",
                                              "Still wasted"
  )))

mycols = c("#11466B", tableau10[1], tableau10[4], "#811818")

age_classif_totals = plot_data %>%
  group_by(agecat, classif) %>%
  summarise(n = sum(freq))

age_totals = plot_data %>%
  group_by(agecat) %>%
  summarise(tot = sum(freq))

bar_plot_data = full_join(age_classif_totals, age_totals, by = c("agecat"))

bar_plot_data = bar_plot_data %>% mutate(percent = n/tot * 100)

bar_plot <- ggplot(bar_plot_data) +
  geom_bar(aes(x = agecat, y = percent, fill = classif), stat="identity", width=0.5) +
  scale_fill_manual("", values = mycols) +
  theme(legend.position = "bottom") +
  xlab("Child age") + ylab("Percentage of children")
bar_plot


#-----------------------------------------
# summary statistics
#-----------------------------------------

head(d)

d$wast <- as.numeric(d$whz < -2, 1, 0)
table(d$agecat, d$wast)

#-----------------------------------------
# trajectory plot
#-----------------------------------------

# bright color blind palette:  https://personal.sron.nl/~pault/ 
cblack <- "#000004FF"
cblue <- "#3366AA"
cteal <- "#11AA99"
cgreen <- "#66AA55"
cchartr <- "#CCCC55"
cmagent <- "#992288"
cred <- "#EE3333"
corange <- "#EEA722"
cyellow <- "#FFEE33"
cgrey <- "#777777"

dfull <- d
d <- dfull

d <- d %>% group_by(studyid, subjid) %>% 
  mutate(lagwhz=lag(whz), vel=whz-lagwhz, #vel = lead(vel),
                  wastinc=1*(whz < (-2) & (lagwhz >= (-2) | agecat=="Birth")),
                  wastrec=1*(whz >= (-2) & lagwhz < (-2)),
                  staywast=1*(whz < (-2) & lagwhz < (-2)))
     


summary(d$vel)
d$velcat <- cut(d$vel, breaks=c(-10,-2,-1,0,1,2,10))
d$velcat2 <- cut(d$vel, breaks=c(-10,0,10))

#d$velcat <- cut(d$vel, breaks=c(-10,-0.5,0.5,10))


d$whz2 <- d$whz
d$whz2[d$wastinc!=1 & d$wastrec!=1] <- NA
d$inccat <- NA
d$inccat[d$wastinc==1] <- "inc"
d$inccat[d$wastrec==1] <- "rec"
d$inccat[d$staywast==1] <- "stay"
d$inccat <- factor(d$inccat, c("inc","rec","stay"))

# d$velcat <- as.character(d$velcat)
# d$velcat[is.na(d$inccat)] <- "no_thres"
# d$velcat <- factor(d$velcat, levels=c("(-10,-2]","(-2,-1]","(-1,0]", "(0,1]", "(1,2]", "(2,10]", "no_thres"))

d$velcat2 <- as.character(d$velcat2)
d$velcat2[is.na(d$inccat)] <- "no_thres"
d$velcat2 <- factor(d$velcat2, levels=c("(-10,0]","(0,10]", "no_thres"))

# table(d$velcat)
# levels(d$velcat)
# d$alpha_val <- 0.1
# d$alpha_val[d$velcat=="(-2,-1]"] <- 0.5
# d$alpha_val[d$velcat=="(1,2]"] <- 0.5
# d$alpha_val[d$velcat=="(-10,-2]"] <- 1
# d$alpha_val[d$velcat=="(2,10]"] <- 1
# table(d$alpha_val)


# d$velcat<- as.character(d$velcat)
# d$velcat[is.na(d$inccat)] <- "no_thres"
# unique(d$velcat)
# d$velcat <- factor(d$velcat, levels=c("(-10,-0.5]", "(0.5,10]",   "(-0.5,0.5]", "no_thres"))

# d <- d %>% mutate(velcat2=lag(velcat))
# d$alpha_val <- 0.5
# d$alpha_val[is.na(d$inccat)] <- 0.1

cols <- c(cteal, "gray70", corange)
cols <- c(cred,corange,"gray70","gray70",cteal,cblue)
cols <- c(corange, cteal, "gray70", "gray70")
cols <- c(corange, cteal, "gray70", "white")
cols <- c(cteal, cteal, cteal,corange,corange,corange)
cols <- c(corange, cteal, "gray70")

# Individual trajectories by age
df <- d[1:200,]
p <- ggplot(d, aes(x=agecat, y=whz, group=subjid, color=lead(velcat2)) ) +
  #geom_point(aes(y=whz2, color=inccat),alpha=0.3) +
  #facet_wrap(~studyid)+
  #geom_line() +
  geom_line(aes(alpha=lead(velcat))) +
  scale_alpha_manual(values=c(1,0.7,0.3,0.3,0.7,1)) +
  #scale_alpha_discrete(guide=FALSE) +
  #geom_line(alpha=0.3) +
  geom_hline(aes(yintercept=-2),linetype="dashed") +
  scale_color_manual(values=cols)+
  xlab("Age in months") +
  ylab("WHZ") +
  #coord_cartesian(ylim=c(0, 4.5),xlim=c(0,11))+
  #scale_y_continuous(breaks=0:4,labels=log10labs) +
  #scale_x_continuous(breaks=0:11) +
  theme_bw() +
  theme(
    legend.position="none",
    panel.grid.minor=element_blank(),
    panel.grid.major.y=element_blank(),
    axis.ticks.y=element_line(color="gray40")
  )

ggsave(p, file="figures/wasting/pool_wast_traj.png", width=10, height=5)




d <- d %>% group_by(studyid, subjid) %>% arrange(agecat) %>%
  mutate(born_wasted=1*(first(whz) < -2))

d$born_wasted <- ifelse(d$born_wasted==1, "Born wasted", "Not born wasted")


p <- ggplot(d, aes(x=agecat, y=whz, group=subjid, color=lead(velcat2)) ) +
  facet_wrap(~born_wasted)+
  geom_line(aes(alpha=lead(velcat))) +
  scale_alpha_manual(values=c(1,0.7,0.3,0.3,0.7,1)) +
  geom_hline(aes(yintercept=-2),linetype="dashed") +
  scale_color_manual(values=cols)+
  xlab("Age in months") +
  ylab("WHZ") +
  theme_bw() +
  theme(
    legend.position="none",
    panel.grid.minor=element_blank(),
    panel.grid.major.y=element_blank(),
    axis.ticks.y=element_line(color="gray40")
  )


ggsave(p, file="figures/wasting/pool_wast_traj_bw_strat.png", width=10, height=5)

