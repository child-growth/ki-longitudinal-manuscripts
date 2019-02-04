

rm(list=ls())
library(tidyverse)
library(scatterpie)
library(ggrepel)
library(maps)
library(FField)
library(viridis)
setwd("C:/Users/andre/Documents/HBGDki/Results/country_centroids/")
mediods<-read.csv("country_centroids_primary.csv", header=T, sep = "\t")
head(mediods)
mediods$SHORT_NAME <- toupper(mediods$SHORT_NAME)
mediods <- mediods %>% rename(country=SHORT_NAME) %>% select(country, LAT, LONG)
load("C:/Users/andre/Documents/HBGDki/Results/wast_scattermap_data.Rdata")



#need to merge in all coordinates
df$country <- as.character(df$country)
df$country[df$country=="TANZANIA, UNITED REPUBLIC OF"] <- "TANZANIA"
df <- left_join(df, mediods, by="country")


df$lat <- df$LAT
df$long <- df$LONG

world <- map_data('world')

numcountry <- df %>% group_by(country) %>% summarize(ncountry=n())
df <- left_join(df, numcountry, by="country")

#remove grant identifier
df$studyid<- gsub("^k.*?-" , "", df$studyid)


set.seed(14)
jit <- 4
repel <- 5 
coords <- FFieldPtRep(coords = cbind(jitter(df$long,jit),jitter(df$lat,jit)),rep.fact = repel)
d <- cbind(data.frame(df), coords) %>% rename(`Not stunted`=Not.stunted, `Severe stunted`=Severe.stunted)

p <- ggplot(world, aes(long, lat)) +
  geom_map(map=world, aes(map_id=region), fill=NA, color="grey20") +
  coord_quickmap() + theme_bw() + coord_cartesian(xlim=c(-90,120), ylim=c(-36,50))


summary(d$n)
d <- d %>% mutate(ncat=ntile(n,4), Stunted=Stunted*100) %>% rename(`Number of observations`=n, `Wasting Prevalence (%)`=Stunted) 


p +   geom_point(aes(x = x, y = y, size = `Number of observations`, color=`Wasting Prevalence (%)`), data = d, alpha = 0.8) +
  scale_colour_gradient(low = "#0072B2", high = "#FF7F0E") + scale_size(range = c(4,9)) +
  xlab("Longitude") + ylab("Latitude") +
  theme(strip.background = element_blank(),
        strip.text.x = element_text(size=12),
        axis.text.x = element_text(size=12))


#Wasting Webinar format

p <- ggplot(world, aes(long, lat)) +
  geom_map(map=world, aes(map_id=region), fill=NA, color="grey20") +
  coord_quickmap() + theme_bw() + coord_cartesian(xlim=c(-90,120), ylim=c(-36,50)) +
  geom_point(aes(x = x, y = y, size = `Number of observations`, color=`Wasting Prevalence (%)`), data = d, alpha = 0.8) +
  scale_color_viridis_c() + scale_size(range = c(4,9)) +
  xlab("Longitude") + ylab("Latitude") +
  theme(strip.background = element_blank(),
        strip.text.x = element_text(size=12),
        axis.text.x = element_text(size=12))
p

ggsave(p, file="C:/Users/andre/Dropbox/HBGDki figures/Berlin wasting figures/Wasting_map.png", width=9, height=4)
