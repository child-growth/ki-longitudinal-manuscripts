

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load country mediods
mediods <- read.csv('non-secure data/country_centroids/country_centroids_primary.csv', header=T, sep = "\t")
head(mediods)
mediods$SHORT_NAME <- toupper(mediods$SHORT_NAME)
mediods <- mediods %>% rename(country=SHORT_NAME) %>% select(country, LAT, LONG)

#Load cohort data and calc stunting prev by study
load("U:/Data/Stunting/Stunting_data.RData")

d$cohort <- paste0(d$studyid,"-",d$country)
df <- d %>% filter(!is.na(haz)) %>% group_by(studyid,cohort) %>% 
  filter(agedays < 30.4167 * 24) %>%
  summarise(n=n(),
            stunt = mean(haz < (-2)),
            lat=mean(latitude),
            long=mean(longitud),
            country=first(country))


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
# jit <- 4
# repel <- 5 
jit <- 2
repel <- 3
coords <- FFieldPtRep(coords = cbind(jitter(df$long,jit),jitter(df$lat,jit)),rep.fact = repel)
d <- cbind(data.frame(df), coords)


summary(d$stunt)
d$stuntcat <- cut(d$stunt*100, include.lowest = T, breaks = c(0,20,30,40,100), labels=c("<20%","20-30%","30-40%",">40%"))
table(d$stuntcat)

summary(d$n)
d$Ncat <- cut(d$n, include.lowest = T, breaks = c(0,5000,8000,15000,100000), labels=c("<5,000","5,000-8,000","8,000-15,000",">15,000"))
table(d$Ncat)

d <- d %>% rename(`Number of observations`=Ncat, `Stunting Prevalence (%)`=stuntcat) 





#Plot map
p <- ggplot(world, aes(long, lat)) +
  geom_map(map=world, aes(map_id=region), fill=NA, color="grey20") +
  coord_quickmap() + theme_bw() + coord_cartesian(xlim=c(-90,120), ylim=c(-36,50)) +
  geom_point(aes(x = x, y = y, size = `Number of observations`, 
                 fill=`Stunting Prevalence (%)`), 
             data = d, alpha = 0.8, pch = 21, color = 'grey20') +
  scale_color_viridis(discrete=T) + 
  scale_fill_viridis(discrete=T) + 
  #scale_size(range = c(2,7)) +
  xlab("Longitude") + ylab("Latitude") +
  theme(strip.background = element_blank(),
        strip.text.x = element_text(size=12),
        axis.text.x = element_text(size=12))
p

ggsave(p, file="figures/stunting/Stunting_map.png", width=9, height=4)
