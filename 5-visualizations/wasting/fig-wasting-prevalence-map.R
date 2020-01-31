

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load country mediods
mediods <- read.csv(here('data/non-secure data/country_centroids/country_centroids_primary.csv'), header=T, sep = "\t")
head(mediods)
mediods$SHORT_NAME <- toupper(mediods$SHORT_NAME)
mediods <- mediods %>% rename(country=SHORT_NAME) %>% select(country, LAT, LONG)

#Load cohort data and calc wasting prev by study
d <- readRDS(paste0(ghapdata_dir, "wasting_data.rds"))
d <- d %>% filter(measurefreq=="monthly")
d$country <- as.character(d$country)
d$country[d$country=="TANZANIA, UNITED REPUBLIC OF"] <- "TANZANIA"

d$cohort <- paste0(d$studyid,"-",d$country)
df <- d %>% filter(!is.na(whz)) %>% group_by(studyid,cohort) %>% 
  filter(agedays < 30.4167 * 24) %>%
  summarise(n=n(),
            wast = mean(whz < (-2)),
            lat=mean(latitude),
            long=mean(longitud),
            country=first(country)) 

#need to merge in all coordinates
df <- left_join(df, mediods, by="country")


df$lat[is.na(df$lat)] <- df$LAT[is.na(df$lat)]
df$long[is.na(df$long)] <- df$LONG[is.na(df$long)]

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

#Replace coordinates with jittered coords if multiple cohorts in country
d$lat[d$ncountry>1] <- d$y[d$ncountry>1]
d$long[d$ncountry>1] <- d$x[d$ncountry>1]

#Move pakistan cohort currently being plotted in the ocean
d$lat[d$studyid=="ResPak"] <- 27
d$lat[d$country=="BRAZIL"] <- -4.5

#latitude and longitude swiched for two India cohorts
d$long[d$studyid=="CMC-V-BCS-2002"] <- 80
d$long[d$studyid=="IRC"] <- 79
d$lat[d$studyid=="CMC-V-BCS-2002"] <- 15
d$lat[d$studyid=="IRC"] <- 14



summary(d$wast)
d$wastcat <- cut(d$wast*100, include.lowest = T, breaks = c(0,2,6,12,100), labels=c("<2%","2-6%","6-12%",">12"))
table(d$wastcat)

summary(d$n)
d$Ncat <- cut(d$n, include.lowest = T, breaks = c(0,5000,7500,10000,100000), labels=c("<5,000","5,000-7,500","7,500-10,000",">10,000"))
table(d$Ncat)

d <- d %>% arrange(desc(Ncat)) %>% rename(`Number of observations`=Ncat, `Wasting Prevalence (%)`=wastcat) 





#Plot map
map_plot <- ggplot(world, aes(long, lat)) +
  geom_map(map=world, aes(map_id=region), fill=NA, color="grey20") +
  coord_quickmap() + theme_bw() + coord_cartesian(xlim=c(-90,120), ylim=c(-36,50)) +
  geom_point(aes(x = long, y = lat, size = `Number of observations`, 
                 fill=`Wasting Prevalence (%)`), 
             data = d, alpha = 0.8, pch = 21, color = 'grey20') +
  scale_color_viridis(discrete=T) + 
  scale_fill_viridis(discrete=T) + 
  xlab("Longitude") + ylab("Latitude") +
  theme(strip.background = element_blank(),
        strip.text.x = element_text(size=12),
        axis.text.x = element_text(size=12))
map_plot

# define standardized plot names
map_plot_name = create_name(
  outcome = "wasting",
  cutoff = 2,
  measure = "map",
  population = "overall",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(map_plot, file=paste0(here(),"/figures/wasting/fig-",map_plot_name,".png"), width=9, height=4)
saveRDS(d, file=paste0(figdata_dir_wasting,"figdata-",map_plot_name,".RDS"))

