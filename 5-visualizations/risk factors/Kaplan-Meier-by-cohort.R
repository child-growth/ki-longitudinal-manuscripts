



rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(survminer)
library(cowplot)






rm(list=ls())
source(paste0(here::here(), "/0-config.R"))



#read csv file
dfull <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))
gc()

d <- subset(dfull, select= c(studyid, country, subjid, agedays, dead, agedth, causedth, haz, waz))
gc()

#Get maximum age recorded
d <- d %>% group_by(studyid, country, subjid) %>% mutate(maxage = max(agedays, na.rm=T))
summary(d$maxage)

#mark dead if have a cause or age death
d$dead[(!is.na(d$agedth) | d$causedth!="") & is.na(d$dead)] <- 1
d$dead[is.na(d$dead)] <- 0

d$maxage[!is.na(d$agedth)] <- d$agedth[!is.na(d$agedth)] 

#Drop studies with <10 deaths
d$cohort <- paste0(d$studyid," ",str_to_title(d$country))
table(d$cohort, d$dead)

df <- d %>% filter(agedays <= 730) %>% filter(!is.na(dead)) %>%
  group_by(cohort, subjid) %>% mutate(dead=max(dead, na.rm=T)) %>% slice(1) %>%
  group_by(cohort) %>% summarise(num_dead=sum(dead, na.rm=T)) %>% filter(num_dead >= 5)
df

d <- d %>% filter(cohort %in% df$cohort)

# table(d$causedth[d$cohort=="MAL-ED Peru"])
# d[d$cohort=="MAL-ED Peru" & d$dead==1,]

#transform data to form for survfit() function
d <- d %>% mutate(status = dead+1) #%>%
#filter(maxage <= 730)

#d$maxage[d$maxage>730] <- 730
d$maxage[d$maxage<=0] <- 1
summary(d$maxage[d$status==1])
summary(d$maxage[d$status==2])

unique(d$cohort)
dfull<-d
d <- dfull %>% filter(cohort=="JiVitA-3 Bangladesh")
summary(d$maxage[d$status==1])
summary(d$maxage[d$status==2])

fit <- survfit(Surv(maxage, status) ~ cohort, data = d)

# Customized survival curves
p <- ggsurvplot(fit, data = d,
                surv.median.line = "none", # Add medians survival
                # Change legends: title & labels
                legend.title = "Status:",
                #legend.labs = legend_labs,
                xlab = "Child age (days)",
                # Add p-value and tervals
                pval = F,
                conf.int = F,
                censor=F,
                break.x.by=30.4167,
                xscale=30.4167 ,
                # Add risk table
                risk.table = F,
                tables.height = 0.2,
                tables.theme = theme_cleantable(),
                # Color palettes. Use custom color: c("#E7B800", "#2E9FDF"),
                # or brewer color (e.g.: "Dark2"), or ggsci color (e.g.: "jco")
                #palette = c("#2E9FDF", "#E7B800"),
                ylim=c(0.93, 1), 
                xlim=c(0, 730),
                ggtheme = theme_bw()) # Change ggplot2 theme

p


p2 <- ggsurvplot(fit, data = d,
                surv.median.line = "none", # Add medians survival
                # Change legends: title & labels
                legend.title = "Status:",
                #legend.labs = legend_labs,
                xlab = "Child age (days)",
                # Add p-value and tervals
                pval = F,
                conf.int = F,
                censor=T,
                # Add risk table
                break.x.by=30.4167,
                xscale=30.4167 ,
                risk.table = F,
                tables.height = 0.2,
                tables.theme = theme_cleantable(),
                # Color palettes. Use custom color: c("#E7B800", "#2E9FDF"),
                # or brewer color (e.g.: "Dark2"), or ggsci color (e.g.: "jco")
                #palette = c("#2E9FDF", "#E7B800"),
                ylim=c(0.97, 1), 
                xlim=c(0, 730),
                ggtheme = theme_bw()) # Change ggplot2 theme

p2

d <- d %>% ungroup()
fit.overall <- survfit(Surv(maxage, status) ~ 1, data = d)

p3 <- ggsurvplot(fit.overall, data = d,
                surv.median.line = "none", # Add medians survival
                # Change legends: title & labels
                legend.title = "Status:",
                #legend.labs = legend_labs,
                xlab = "Child age (days)",
                # Add p-value and tervals
                pval = F,
                conf.int = T,
                censor=T,
                break.x.by=30.4167,
                xscale=30.4167 ,
                # Add risk table
                risk.table = F,
                tables.height = 0.2,
                tables.theme = theme_cleantable(),
                # Color palettes. Use custom color: c("#E7B800", "#2E9FDF"),
                # or brewer color (e.g.: "Dark2"), or ggsci color (e.g.: "jco")
                #palette = c("#2E9FDF", "#E7B800"),
                ylim=c(0.97, 1), 
                xlim=c(0, 730),
                ggtheme = theme_bw()) # Change ggplot2 theme

p3






fitfacet <- survfit(Surv(maxage, status)~1, data = d)


pfacet <- ggsurvplot_facet(fitfacet, data = d,
                 facet.by = "cohort")
pfacet



