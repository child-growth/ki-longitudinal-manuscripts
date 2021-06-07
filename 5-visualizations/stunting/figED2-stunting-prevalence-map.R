##########################################
# ki longitudinal manuscripts
# stunting analysis
#
# map of stunting prevalence

# inputs: country_centroids_primary.csv, Stunting_data.RData

# outputs: 
# fig-stunt-2-map-overall--allage-primary.png
# figdata-stunt-2-map-overall--allage-primary.RDS
##########################################
#-----------------------------------
# preamble
#-----------------------------------

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load country mediods
mediods <- read.csv(here('data/non-secure data/country_centroids/country_centroids_primary.csv'), header=T, sep = "\t")
head(mediods)
mediods$SHORT_NAME <- toupper(mediods$SHORT_NAME)
mediods <- mediods %>% rename(country=SHORT_NAME) %>% select(country, LAT, LONG)

#Load cohort data and calc stunting prev by study
d <- readRDS(paste0(ghapdata_dir, "stunting_data.rds"))

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



summary(d$stunt)
d$stuntcat <- cut(d$stunt*100, include.lowest = T, breaks = c(0,20,30,40,100), labels=c("<20%","20-30%","30-40%",">40%"))
table(d$stuntcat)

summary(d$n)
d$Ncat <- cut(d$n, include.lowest = T, breaks = c(0,5000,8000,15000,100000), labels=c("<5,000","5,000-8,000","8,000-15,000",">15,000"))
table(d$Ncat)

d <- d %>% rename(`Number of observations`=Ncat, `Stunting Prevalence (%)`=stuntcat) 


#-----------------------------------
#Plot map
#-----------------------------------
map_plot <- ggplot(world, aes(long, lat)) +
  geom_map(map=world, aes(map_id=region), fill=NA, color="grey20") +
  coord_quickmap() + theme_bw() + coord_cartesian(xlim=c(-90,120), ylim=c(-36,50)) +
  geom_point(aes(x = long, y = lat, size = `Number of observations`, 
                 fill=`Stunting Prevalence (%)`), 
             data = d, alpha = 0.8, pch = 21, color = 'grey20') +
  scale_color_viridis(discrete=T) + 
  scale_fill_viridis(discrete=T) + 
  #scale_size(range = c(2,7)) +
  xlab("Longitude") + ylab("Latitude") +
  theme(strip.background = element_blank(),
        strip.text.x = element_text(size=12),
        axis.text.x = element_text(size=12))

# define standardized plot names
map_plot_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "map",
  population = "overall",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(map_plot, file=paste0(fig_dir, "stunting/fig-",map_plot_name,".png"), width=9, height=4)
saveRDS(d, file=paste0(figdata_dir_stunting, "figdata-",map_plot_name,".RDS"))

