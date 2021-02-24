


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))



#Load data
dpool <- readRDS(paste0(here::here(),"/results/rf results/pooled_RR_results.rds")) %>% 
  filter( RR.CI1 != RR.CI2,  region!="N.America & Europe") %>%
  mutate(pooled=1)
dFE <- readRDS(paste0(here::here(),"/results/rf results/pooled_RR_FE_results.rds")) %>% 
  filter( RR.CI1 != RR.CI2,  region=="Pooled") %>%
  mutate(pooled=1, region="Pooled - FE")
dfull <- readRDS(paste0(here::here(),"/results/rf results/full_RF_results.rds")) %>% 
  filter(type=="RR", ci_lower != ci_upper) %>%
  mutate(pooled=0) %>%
  rename(RR=estimate, RR.CI1=ci_lower, RR.CI2=ci_upper)

dfull <- RMA_clean(dfull)

d <- bind_rows(dpool, dFE, dfull)

d$pooled <- factor(d$pooled, levels=c("1","0"))

d$studyid[is.na(d$studyid)] <- paste0("Pooled - ",d$region[is.na(d$studyid)])

#Strip grant identifier and add country
d$studyid <- gsub("^k.*?-" , "", d$studyid)
d$studyid <- paste0(d$studyid, ", ", paste0(substring(as.character(d$country),1,1), tolower(substring(as.character(d$country),2))))
d$studyid <- gsub("Tanzania, united republic of", "Tanzania", d$studyid)
d$studyid <- gsub("africa", "Africa", d$studyid)
d$studyid <- gsub("NANA", "", d$studyid)
unique(d$studyid)
d$studyid[d$studyid=="Pooled - Pooled, "] <- "Pooled - RE" 
d$studyid[d$studyid=="Pooled - Pooled - FE, "] <- "Pooled - FE"
d$studyid[d$studyid=="Pooled - Africa, "] <- "Pooled - Africa"
d$studyid[d$studyid=="Pooled - South Asia, "] <- "Pooled - South Asia"
d$studyid[d$studyid=="Pooled - Latin America, "] <- "Pooled - Latin America"


unique(d$outcome_variable)
d <- d %>% 
  filter(!(outcome_variable %in% c( "dead0plus", "dead624",  "dead6plus", "dead", "pers_wasted624", "co_occurence"))) %>%
  mutate(
    outcome_variable = case_when(
      outcome_variable== "stunted"~ "Stunting prev.",
      outcome_variable== "wasted"~ "Wasting prev.",
      outcome_variable== "ever_stunted"~ "Stunting CI",
      outcome_variable== "ever_wasted"~ "Wasting CI",
      outcome_variable== "sstunted"~ "Severe stunting prev.",
      outcome_variable== "swasted"~ "Severe wasting prev.",
      outcome_variable== "ever_sstunted"~ "Severe stunting CI",
      outcome_variable== "ever_swasted"~ "Severe wasting CI",
      outcome_variable== "pers_wast"~ "Persistent wasting",
      outcome_variable== "ever_co" ~ "Concurrent wasting and stunting",
      outcome_variable== "wast_rec90d" ~ "Wasting recovery within 90 days"
    ),
    outcome_variable=factor("Stunting prev.",
                            "Wasting prev.",
                            "Stunting CI",
                            "Wasting CI",
                            "Severe stunting prev.",
                            "Severe wasting prev.",
                            "Severe stunting CI",
                            "Severe wasting CI",
                            "Persistent wasting",
                            "Concurrent wasting and stunting",
                            "Wasting recovery within 90 days")
  )

#order by Region
d$region <- as.character(d$region)
d$region[d$region=="N.America & Europe"] <- "Europe"
d$region <- factor(d$region, levels=c("Pooled","Pooled - FE","South Asia", "Africa","Latin America","Europe"))
d <- d %>% arrange(pooled, region)
#d <- d[with(d, order(desc(pooled), desc(region))),]
unique(d$studyid)

d$studyid <- as.character(d$studyid)
d$studyid <- factor(d$studyid, levels=unique(d$studyid))
d$order <- as.numeric(d$studyid)

d$intervention_level[d$intervention_variable=="birthwt"] <- "< 2500 g"

d <- d%>% filter(!is.na(intervention_variable),!is.na(intervention_level), !is.na(outcome_variable), !is.na(agecat))
d <- droplevels(d)

#Test data set
#df <- d %>% filter(intervention_variable=="birthlen",outcome_variable %in% c("ever_stunted"), agecat %in% c("0-24 months", "24 months"))


forest_plot <- function(df){

  nlevels <- length(unique(df$intervention_level))
  npooled <- sum(grepl("Pooled",df$studyid))/nlevels
  
  df <- df%>% filter(!is.na(intervention_variable),!is.na(intervention_level), !is.na(outcome_variable), !is.na(agecat))
  
  title <- paste0(
    "Outcome: ", df$outcome_variable[1],
    "\nAge: ", df$agecat[1],
    "\nExposure: ", df$RFlabel_ref[1]  )
  
  p <-  ggplot(df, aes(x=studyid)) + 
    geom_point(aes(shape=pooled, y=RR, fill=region, color=region), size = 4) +
    geom_errorbar(aes(ymin=RR.CI1, ymax=RR.CI2, color=region)) +
    coord_flip() +
    ylab(d$RFlabel_ref[1]) +
    xlab("") +
    geom_hline(yintercept = 1) +
    geom_vline(xintercept = 2.5, linetype=2) +
    geom_vline(xintercept = npooled+0.5) +
    scale_y_continuous(trans='log10') +
    scale_shape_manual(values=c(21, 23)) +
    scale_colour_manual(values=tableau11[c(1,1:5)], drop=FALSE) +
    scale_fill_manual(values=tableau11[c(1,1:5)], drop=FALSE) +
    theme(strip.background = element_blank(),
          legend.position="none",
          strip.text.x = element_text(size=12),
          axis.text.x = element_text(size=12, angle = 0),
          axis.title.x = element_text(size=16, hjust = .5)) +
    ggtitle(title) + guides(shape=FALSE)
  
  if(nlevels>1){
    p <- p + facet_grid(~intervention_level)
  }
    
  return(p)

}


#Make plot objects for all strata
res <- d %>% group_by(intervention_variable, outcome_variable, agecat) %>%
  do(plot = forest_plot(.))
res$plot[[1]]
length(res[[4]])

saveRDS(res, file=here( "/figures/risk-factor/figure-data/all_forest_plot_RR.RDS"))














