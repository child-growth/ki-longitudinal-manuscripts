
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


#Create unique identifier
d$id <- paste0(d$studyid,"-",d$subjid)


d <- d %>% group_by(studyid, subjid) %>% 
  mutate(lagwhz=lag(whz), leadwhz=lead(whz), vel=whz-lagwhz, #vel = lead(vel),
         wast=1*(whz < (-2)), lagwast=1*(lagwhz < (-2)), leadwhz=1*(leadwhz < (-2)), 
         wastinc=1*(whz < (-2) & (lagwhz >= (-2) | agecat=="Birth")),
         wastrec=1*(whz >= (-2) & lagwhz < (-2)),
         staywast=1*(whz < (-2) & lagwhz < (-2)),
         lag_wastinc=lead(wastinc),
         lag_wastrec=lead(wastrec),
         lag_staywast=lead(staywast))
         



summary(d$vel)
d$velcat <- cut(d$vel, breaks=c(-10,-2,-1,0,1,2,10))
d$velcat2 <- cut(d$vel, breaks=c(-10,0,10))

#d$velcat <- cut(d$vel, breaks=c(-10,-0.5,0.5,10))


d$wast_whz <- d$whz
d$wast_whz[d$wastinc!=1 & d$wastrec!=1] <- NA
d$inccat <- NA
d$inccat[d$lag_wastinc==1] <- "inc"
d$inccat[d$lag_wastrec==1] <- "rec"
d$inccat[d$lag_staywast==1] <- "stay"
d$inccat <- factor(d$inccat, c("inc","rec","stay"))



# d$velcat2 <- as.character(d$velcat2)
# d$velcat2[is.na(d$inccat)] <- "no_thres"
# d$velcat2 <- factor(d$velcat2, levels=c("(-10,0]","(0,10]", "no_thres"))
# 


cols <- c(cteal, "gray70", corange)
cols <- c(cred,corange,"gray70","gray70",cteal,cblue)
cols <- c(corange, cteal, "gray70", "gray70")
cols <- c(corange, cteal, "gray70", "white")
cols <- c(cteal, cteal, cteal,corange,corange,corange)
cols <- c(cred, cteal, corange)

d$whz2 <- d$whz
d$whz2[d$whz >= (-2) & lead(d$whz) >= (-2) & lag(d$whz2) >= (-2) & d$agecat!="Birth"] <- NA

#color=lead(velcat2)


# Individual trajectories by age
p <- ggplot(d, aes(x=agecat, group=id)) +
  geom_line(aes(y=whz, alpha=0.1), color="gray70") +
  geom_hline(aes(yintercept=-2),linetype="dashed") +
  geom_line(aes(y=whz2, color=inccat)) +
  scale_color_manual(values=cols) +
  #geom_point(aes(y=whz2, color=inccat),alpha=0.3) +
  #scale_alpha_manual(values=c(1,0.7,0.3,0.3,0.7,1)) +
  #scale_alpha_discrete(guide=FALSE) +
  xlab("Age in months") +
  ylab("WHZ") +
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

p <- ggplot(d, aes(x=agecat)) +
  facet_wrap(~born_wasted)+
  geom_line(aes(y=whz, alpha=0.1, group=id), color="gray70") +
  geom_hline(aes(yintercept=-2),linetype="dashed") +
  geom_line(aes(y=whz2, color=inccat, group=id)) +
  geom_smooth(aes(y=whz)) +
  scale_color_manual(values=cols) +
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

