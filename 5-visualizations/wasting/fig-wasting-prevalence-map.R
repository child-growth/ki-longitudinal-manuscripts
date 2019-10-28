

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load country mediods
mediods <- read.csv('data/non-secure data/country_centroids/country_centroids_primary.csv', header=T, sep = "\t")
head(mediods)
mediods$SHORT_NAME <- toupper(mediods$SHORT_NAME)
mediods <- mediods %>% rename(country=SHORT_NAME) %>% select(country, LAT, LONG)

#Load cohort data and calc wasting prev by study
d <- readRDS(paste0(ghapdata_dir, "wasting_data.rds"))
d <- d %>% filter(measurefreq=="monthly")

d$cohort <- paste0(d$studyid,"-",d$country)
df <- d %>% filter(!is.na(whz)) %>% group_by(studyid,cohort) %>% 
  filter(agedays < 30.4167 * 24) %>%
  summarise(n=n(),
            wast = mean(whz < (-2)),
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


summary(d$wast)
d$wastcat <- cut(d$wast*100, include.lowest = T, breaks = c(0,2,6,12,100), labels=c("<2%","2-6%","6-12%",">12"))
table(d$wastcat)

summary(d$n)
d$Ncat <- cut(d$n, include.lowest = T, breaks = c(0,5000,7500,10000,100000), labels=c("<5,000","5,000-7,500","7,500-10,000",">10,000"))
table(d$Ncat)

d <- d %>% rename(`Number of observations`=Ncat, `Wasting Prevalence (%)`=wastcat) 





#Plot map
map_plot <- ggplot(world, aes(long, lat)) +
  geom_map(map=world, aes(map_id=region), fill=NA, color="grey20") +
  coord_quickmap() + theme_bw() + coord_cartesian(xlim=c(-90,120), ylim=c(-36,50)) +
  geom_point(aes(x = x, y = y, size = `Number of observations`, 
                 fill=`Wasting Prevalence (%)`), 
             data = d, alpha = 0.8, pch = 21, color = 'grey20') +
  scale_color_viridis(discrete=T) + 
  scale_fill_viridis(discrete=T) + 
  #scale_size(range = c(2,7)) +
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
ggsave(map_plot, file=paste0("figures/wasting/fig-",map_plot_name,".png"), width=9, height=4)
saveRDS(d, file=paste0("results/figure-data/figdata-",map_plot_name,".RDS"))

