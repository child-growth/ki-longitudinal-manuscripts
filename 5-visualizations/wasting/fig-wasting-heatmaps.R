

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
d <- d %>% group_by(studyid, country, subjid, agecat) %>% summarize(whz=mean(whz)) %>%
  group_by(studyid, country, subjid) %>% filter(n() > 12) %>% #Drop children with few measurements
  mutate(meanWHZ=mean(whz)) %>% group_by(studyid, country) %>% arrange(meanWHZ) %>% ungroup() %>%
  mutate(rank=rank(meanWHZ)) %>% arrange(rank)
d$rank <- factor(d$rank, levels=unique(d$rank))

table(d$agecat)
length(unique(d$agecat))
levels(d$agecat)[1] <- "Birth"


#Define wasting categories
d$wastcat <- cut(d$whz, breaks=c(-10,-3,-2,-1,10), labels = c("severe","wast","low","healthy"))

#Subset to children with measurements at every month
dim(d)
df <- d %>% group_by(studyid, subjid) %>% mutate(N=n()) %>% filter(N==25)
dim(df)
table(df$agecat)



#define a color for fonts
textcol <- "grey20"

df <- d[d$studyid=="ki0047075b-MAL-ED",]

# heat map plot scheme
wasthm <- ggplot(df,aes(x=agecat,y=rank, fill=wastcat)) + geom_tile() +
  geom_tile(colour="white",size=0.25) + coord_equal()+
  facet_wrap(~country, scales="free", nrow=1) +
  theme_grey(base_size=10)+
  theme(
    legend.title=element_text(color=textcol,size=8),
    legend.margin = margin(grid::unit(0.1,"cm")),
    legend.text=element_text(colour=textcol,size=7,face="bold"),
    legend.key.height=grid::unit(0.2,"cm"),
    legend.key.width=grid::unit(1,"cm"),
    legend.position = "bottom",
    axis.text.x=element_text(size=8,colour=textcol,angle=45,vjust=0.5),
    axis.text.y=element_blank(),
    axis.ticks=element_line(size=0.4),
    plot.title=element_text(colour=textcol,hjust=0,size=12,face="bold"),
    strip.text.x = element_text(size=10),
    strip.text.y = element_text(angle=270,size=10),
    plot.background=element_blank(),
    panel.border=element_blank()) +
  labs(x="Age",y="",title="") +
  scale_fill_manual(values = c("red","orange","yellow","grey90"))
  # scale_fill_viridis(na.value="grey90", discrete = T,  direction = -1,
  #                      guide=guide_legend(title="Wasting category",title.vjust = 1,
  #                                         label.position="bottom",label.hjust=0.5,nrow=1))
wasthm

#-----------------------------------------
# summary statistics
#-----------------------------------------

head(d)

d$wast <- as.numeric(d$whz < -2, 1, 0)
table(d$agecat, d$wast)

#-----------------------------------------
# Plot only children who experienced wasting
#-----------------------------------------

dim(d)
d2 <- d %>% group_by(studyid, country, subjid) %>%
     mutate(minWHZ = min(whz)) %>%
     filter(minWHZ < -2)
dim(d2)

d2$cohort <- paste0(d2$studyid," ",d2$country)


wasthm <- ggplot(d2,aes(x=agecat,y=rank, fill=wastcat)) + geom_tile() +
  geom_tile(colour="white",size=0.25) + coord_equal()+
  facet_wrap(~cohort, scales="free", nrow=2) +
  theme_grey(base_size=10)+
  theme(
    legend.title=element_text(color=textcol,size=8),
    legend.margin = margin(grid::unit(0.1,"cm")),
    legend.text=element_text(colour=textcol,size=7,face="bold"),
    legend.key.height=grid::unit(0.2,"cm"),
    legend.key.width=grid::unit(1,"cm"),
    legend.position = "bottom",
    axis.text.x=element_text(size=8,colour=textcol,angle=45,vjust=0.5),
    axis.text.y=element_blank(),
    axis.ticks=element_line(size=0.4),
    plot.title=element_text(colour=textcol,hjust=0,size=12,face="bold"),
    strip.text.x = element_text(size=10),
    strip.text.y = element_text(angle=270,size=10),
    plot.background=element_blank(),
    panel.border=element_blank()) +
  labs(x="Age",y="",title="") +
  scale_fill_manual(values = c("red","orange","yellow","grey90"))

wasthm

#-----------------------------------------
# Facet by birth wasting status
#-----------------------------------------



dim(d)
d3 <- d %>% group_by(studyid, country, subjid) %>%
  mutate(firstWHZ = first(whz), born_wast = firstWHZ < -2) 
dim(d3)



wasthm <- ggplot(d3[d3$studyid=="ki1000109-ResPak",],aes(x=agecat,y=rank, fill=wastcat)) + geom_tile() +
  geom_tile(colour="white",size=0.25) + coord_equal()+
  facet_wrap(~born_wast, scales="free") +
  theme_grey(base_size=10)+
  theme(
    legend.title=element_text(color=textcol,size=8),
    legend.margin = margin(grid::unit(0.1,"cm")),
    legend.text=element_text(colour=textcol,size=7,face="bold"),
    legend.key.height=grid::unit(0.2,"cm"),
    legend.key.width=grid::unit(1,"cm"),
    legend.position = "bottom",
    axis.text.x=element_text(size=8,colour=textcol,angle=45,vjust=0.5),
    axis.text.y=element_blank(),
    axis.ticks=element_line(size=0.4),
    plot.title=element_text(colour=textcol,hjust=0,size=12,face="bold"),
    strip.text.x = element_text(size=10),
    strip.text.y = element_text(angle=270,size=10),
    plot.background=element_blank(),
    panel.border=element_blank()) +
  labs(x="Age",y="",title="") +
  scale_fill_manual(values = c("red","orange","yellow","grey90"))

wasthm

