
#-----------------------------------------
# Process data for wasting traj figures
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
require(cowplot)



rain <- read.csv(paste0(BV_dir,"/data/monthly_rainfall.csv"))
head(rain)

d <- readRDS(seasonality_data_path)
d <- d %>% filter(measurefreq=="monthly", abs(whz)< 5)
head(rain)
head(d)
unique(d$studyid)

rain$country <- toupper(rain$country)
rain$country[rain$country=="TANZANIA, UNITED REPUBLIC OF"]<-"TANZANIA"
rain <- mark_region(rain)
rain <- rain %>% subset(., select = -c(X))
rain$region <- factor(rain$region, levels = c("South Asia","Africa","Latin America"))
rain$country <- tolower(rain$country)
d$country <- tolower(d$country)
rain$studyid <- as.character(rain$studyid)
rain$studyid[rain$studyid == "PROVIDE "] <-  "PROVIDE"
d$country[d$country=="tanzania, united republic of"] <- "tanzania"

rain <- rain %>% 
  rename(season_index = cohort_index) %>%
  arrange(season_index) %>%
  mutate(seasonality_category = 
           case_when(
             season_index >= 0.9 ~ "High seasonality",
             season_index < 0.7 ~ "Low seasonality",
             TRUE ~ "Medium seasonality"),
         seasonality_category = factor(seasonality_category, levels=c("High seasonality", "Medium seasonality", "Low seasonality")))
table(rain$seasonality_category)

#Transform rain dataset
rain <- rain %>% subset(., select = c("studyid", "region", "country", "seasonality_category", "season_index", "Jan_pre", "Feb_pre", "Mar_pre", "Apr_pre", "May_pre",
                                      "Jun_pre", "Jul_pre", "Aug_pre", "Sep_pre", "Oct_pre", "Nov_pre", "Dec_pre"))

rain$country <- str_to_title(rain$country)
d$country <- str_to_title(d$country)

# gather meanWHZ by month data into long format
rain2 <- rain %>%
  pivot_longer(cols=Jan_pre:Dec_pre, names_to = "month", values_to = "rain")
  #gather(month,rain, -studyid, -country, -season_index, -seasonality_category) 
rain2$month = gsub("_pre","",rain2$month)
rain2$month = factor(rain2$month, levels=c("Jan", "Feb", "Mar", "Apr", "May","Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
head(rain2)

rain2$month_day = as.numeric(rain2$month) * 30.4167



rain2 <- rain2 %>% mutate(cohort = paste0(studyid, ", ", country)) 
d <- d %>% mutate(cohort = paste0(studyid, ", ", country))


#Update cohort names
rain2$cohort <- gsub("CMIN Peru95, Peru","CMIN Peru-95", rain2$cohort)
rain2$cohort <- gsub("GMS-Nepal, Nepal","GMS, Nepal", rain2$cohort)
rain2$cohort <- gsub("CMIN Bangladesh93, Bangladesh","CMIN Bangladesh-93", rain2$cohort)
rain2$cohort <- gsub("Guatemala BSC, Guatemala","BSC, Guatemala", rain2$cohort)
rain2$cohort <- gsub("TanzaniaChild2, Tanzania","Tanzania Child 2", rain2$cohort)
rain2$cohort <- gsub("CMIN Peru89, Peru","CMIN Peru-89", rain2$cohort)
rain2$cohort <- gsub("Keneba, Gambia","Keneba, The Gambia", rain2$cohort)
d$cohort <- gsub("CMIN Peru95, Peru","CMIN Peru-95", d$cohort)
d$cohort <- gsub("GMS-Nepal, Nepal","GMS, Nepal", d$cohort)
d$cohort <- gsub("CMIN Bangladesh93, Bangladesh","CMIN Bangladesh-93", d$cohort)
d$cohort <- gsub("Guatemala BSC, Guatemala","BSC, Guatemala", d$cohort)
d$cohort <- gsub("TanzaniaChild2, Tanzania","Tanzania Child 2", d$cohort)
d$cohort <- gsub("CMIN Peru89, Peru","CMIN Peru-89", d$cohort)
d$cohort <- gsub("Keneba, Gambia","Keneba, The Gambia", d$cohort)


#arrange cohorts by seasonality index and set factor levels
rain2 <- rain2 %>% arrange(region, country, -season_index) %>% 
  mutate(cohort=factor(cohort, levels=unique(cohort))) 
d <- d %>% mutate(cohort=factor(cohort, levels=unique(rain2$cohort)))


rain2 <- droplevels(rain2)
cohorts=levels(rain2$cohort)
cohorts

df <- d
rain <- rain2
cohort_name <- cohorts[[1]]

table(df$studyid)
table(rain$studyid)
table(df$cohort)
table(rain$cohort)


#Rain_plot function
#rain_plot <- function(df, rain, cohort_name, leftlab = c(1:10), rightlab = c(11:20)){
rain_plot <- function(df, rain, cohort_name, leftlab = 0, rightlab = 0){
  rain_sub <- filter(rain, cohort == cohort_name)
  dsub <- filter(df, cohort == cohort_name, !is.na(whz))
  
  #add
  cohort_name <- paste0(cohort_name," (", round(rain_sub$season_index[1],2),")")
  
  rainmax = max(rain_sub$rain)
  
  # estimate spline fit to mean z-scores by day of the year
  fiti <- mgcv::gam(whz ~ s(jday, bs = "cr"), data = dsub)
  newd <- data.frame(jday = 0:364)
  # estimate approximate simultaneous confidence intervals
  fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000)
  dfit <- data.frame(jday = 0:364, seasonality_category=rain_sub$seasonality_category[1], fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS)
  
  shift<-min(dfit$fit_lb)
  Zpeak<-ifelse(min(dfit$fit_lb)<0, abs(min(dfit$fit_lb)), max(dfit$fit_ub-shift))
  conv_shift<-ifelse(min(dfit$fit_lb)<0, max(dfit$fit_ub), 0)
  #shift<-max(dfit$fit_ub)
  conversion_factor <- rainmax/(Zpeak+conv_shift)
  #conv_shift<-ifelse(min(dfit$fit_lb)<0, min(dfit$fit_lb), 0)
  #conversion_factor <- 577.9106
  
  summary(rain_sub$rain)
  summary((dfit$fit-shift))
  summary((dfit$fit-shift)*conversion_factor)
  
  #scaleFUN <- function(x) sprintf("%.1f", x)
  is.wholenumber <- function(x, tol = .Machine$double.eps^0.5)  abs(x - round(x)) < tol
  scaleFUN <- function(x) sprintf(ifelse(is.wholenumber(x),"%i", "%.1f"), round(x,0))
  
  yrange = NULL
  # if(i==5){yrange==c(-1/2, -0.2)}

  if(i %in% leftlab){
  p <- ggplot(rain_sub, aes(x=month, y=rain)) + geom_bar(stat='identity', width=0.5, alpha=0.5) +
    geom_line(data = dfit, aes(x=(jday/365)*12+0.5, y=(fit-shift)*conversion_factor, color=seasonality_category), size=2) +
    geom_ribbon(data = dfit, aes(x=(jday/365)*12+0.5,  
                                 y=(fit-shift)*conversion_factor, 
                                 ymin=(fit_lb-shift)*conversion_factor,  
                                 ymax=(fit_ub-shift)*conversion_factor, 
                                 color=NULL, fill=seasonality_category), alpha=0.3) +
    scale_y_continuous(limits = yrange, labels = scaleFUN, digits, position = "right", expand = expand_scale(mult = c(0,0.1)), sec.axis = sec_axis(~(./(conversion_factor)+shift), name = "Mean WLZ")) +
    ylab(NULL) + xlab(NULL) +
    scale_fill_manual(values=cbbPalette[-1], drop=TRUE, limits = levels(rain$seasonality_category)) +
    scale_color_manual(values=cbbPalette[-1], drop=TRUE, limits = levels(rain$seasonality_category)) +
    scale_x_discrete(expand = c(0, 0), #breaks = 1:6*2, 
                     labels = c("Jan.","", "Mar.","", "May","", "Jul.","", "Sep.","", "Nov.",""))+
    ggtitle(cohort_name) + theme(legend.position = "none", plot.title = element_text(size = 12, face = "bold")) 
  }
  if(i %in% rightlab){
    p <- ggplot(rain_sub, aes(x=month, y=rain)) + geom_bar(stat='identity', width=0.5, alpha=0.5) +
      geom_line(data = dfit, aes(x=(jday/365)*12+0.5, y=(fit-shift)*conversion_factor, color=seasonality_category), size=2) +
      geom_ribbon(data = dfit, aes(x=(jday/365)*12+0.5,  
                                   y=(fit-shift)*conversion_factor, 
                                   ymin=(fit_lb-shift)*conversion_factor,  
                                   ymax=(fit_ub-shift)*conversion_factor, 
                                   color=NULL, fill=seasonality_category), alpha=0.3) +
      scale_y_continuous(limits = yrange, labels = scaleFUN, position = "right", expand = expand_scale(mult = c(0,0.1)), sec.axis = sec_axis(~(./(conversion_factor)+shift), name = "")) +
      ylab("Rainfall (mm)") + xlab(NULL) +
      scale_fill_manual(values=cbbPalette[-1], drop=TRUE, limits = levels(rain$seasonality_category)) +
      scale_color_manual(values=cbbPalette[-1], drop=TRUE, limits = levels(rain$seasonality_category)) +
      scale_x_discrete(expand = c(0, 0), #breaks = 1:6*2, 
                       labels = c("Jan.","", "Mar.","", "May","", "Jul.","", "Sep.","", "Nov.",""))+
      ggtitle(cohort_name) + theme(legend.position = "none", plot.title = element_text(size = 12, face = "bold")) 
  }
  
  if(!(i %in% leftlab | i %in% rightlab)){
    p <- ggplot(rain_sub, aes(x=month, y=rain)) + 
      geom_bar(stat='identity', width=0.5, alpha=0.5) +
      geom_line(data = dfit, aes(x=(jday/365)*12+0.5, y=(fit-shift)*conversion_factor, color=seasonality_category), size=2) +
      geom_ribbon(data = dfit, aes(x=(jday/365)*12+0.5,  
                                   y=(fit-shift)*conversion_factor, 
                                   ymin=(fit_lb-shift)*conversion_factor,  
                                   ymax=(fit_ub-shift)*conversion_factor, 
                                   color=NULL, fill=seasonality_category), alpha=0.3) +
      scale_y_continuous(limits = yrange, labels = scaleFUN, position = "right", expand = expand_scale(mult = c(0,0.1)), sec.axis = sec_axis(~(./(conversion_factor)+shift), name = "")) +
      ylab("") + xlab(NULL) +
      scale_fill_manual(values=cbbPalette[-1], drop=TRUE, limits = levels(rain$seasonality_category)) +
      scale_color_manual(values=cbbPalette[-1], drop=TRUE, limits = levels(rain$seasonality_category)) +
      scale_x_discrete(expand = c(0, 0), #breaks = 1:6*2, 
                       labels = c("Jan.","", "Mar.","", "May","", "Jul.","", "Sep.","", "Nov.",""))+
      ggtitle(cohort_name) + theme(legend.position = "none", plot.title = element_text(size = 12, face = "bold")) 
  }
  
  return(p)
}


#Get N's for caption
Ns <- d %>% group_by(cohort) %>% summarize(nmeas=n(), nchild=length(unique(subjid)))
Ns
Ns %>% summarize(min(nmeas), min(nchild), max(nmeas), max(nchild))



rain_plot(df=d, rain=rain2, cohort_name=cohorts[5])
              
cohorts 
 
plot_list=list()
for(i in 1:length(cohorts)){
  print(cohorts[i])
  plot_list[[i]] <- rain_plot(df=d, rain=rain2, cohort_name=cohorts[i])
}

#Save plot objects
saveRDS(plot_list, file=paste0(BV_dir,"/figures/plot-objects/rain_seasonality_plot_objects.rds"))

length(plot_list)

plot_grid <- plot_grid(
  plot_list[[1]], plot_list[[11]], 
  plot_list[[2]], plot_list[[12]], 
  plot_list[[3]], plot_list[[13]], 
  plot_list[[4]], plot_list[[14]], 
  plot_list[[5]], plot_list[[15]], 
  plot_list[[6]], plot_list[[16]], 
  plot_list[[7]], plot_list[[17]], 
  plot_list[[8]], plot_list[[18]], 
  plot_list[[9]], plot_list[[19]], 
  plot_list[[10]], plot_list[[20]], 
  plot_list[[21]], 
  labels = rep("", 21), ncol = 2, align = 'v', axis = 'l')

ggsave(plot_grid, file=paste0(BV_dir,"/figures/manuscript-figure-composites/wasting/rain_seasonality_plot.png"), width=10, height=24)



