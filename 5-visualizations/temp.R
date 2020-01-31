
ki_combo_plot <- function(d, Disease, Measure, Birth, Severe, Age_range, 
                          Cohort="pooled",
                          xlabel="Age category",
                          ylabel="",
                          h1=0,
                          h2=3,
                          yrange=NULL){
  
  df <- d %>% filter(
    disease == Disease &
      measure %in% Measure &
      birth == Birth &
      severe == Severe &
      age_range == Age_range &
      cohort == Cohort &
      !is.na(region) & !is.na(agecat)
  )
  df <- droplevels(df)
  
  # remove N= from labels
  df <- df %>% mutate(nmeas.f = gsub('N=', '', nmeas.f)) %>%
    mutate(nstudy.f = gsub('N=', '', nstudy.f))
  
  # remove text from labels
  df <- df %>% mutate(nmeas.f = gsub(' children', '', nmeas.f)) %>%
    mutate(nstudy.f = gsub(' studies', '', nstudy.f))
  
  # Remove 'months' from x axis labels  
  df <- df %>% arrange(agecat)
  df$agecat <- as.character(df$agecat)
  df$agecat <- gsub(" months", "", df$agecat)
  df$agecat <- factor(df$agecat, levels=unique(df$agecat))
  
  # remove N= labels for incidence proportion
  df <- df %>% mutate(nmeas.f = ifelse(measure == 'Incidence_proportion', '', nmeas.f)) %>%
    mutate(nstudy.f = ifelse(measure == 'Incidence_proportion', '', nstudy.f))
  
  
  p <- ggplot(df,aes(y=est,x=agecat)) +
    geom_errorbar(aes(color=region, 
                      group=interaction(measure, region), ymin=lb, ymax=ub), 
                  width = 0) +
    geom_point(aes(shape=measure, fill=region, color=region
    ), size = 2) +
    geom_text(aes(x = agecat, y = est, label = round(est)), hjust = 2) +
    scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                       guide = FALSE) +
    scale_shape_manual(values = c(16, 17),
                       name = 'Measure', 
                       labels = c('Cumulative Incidence', 'Incidence Proportion')) + 
    scale_fill_manual(values=tableau11, guide = FALSE) +
    # theme(legend.position = 'right') +
    xlab(xlabel)+
    ylab(ylabel) +
    
    geom_text(data=df, aes(x = agecat, y = h1, vjust =  1,
                           label = nmeas.f), size = 3.5) +
    geom_text(data=df, aes(x = agecat, y = h1, vjust = -1, 
                           label = nstudy.f), size = 3.5) +
    scale_x_discrete(expand = expand_scale(add = 2)) +
    
    annotate('text', x = -0.2, y = h1, label = 'Studies:', vjust = -1, size = 3.5) +
    annotate('text', x = -0.2, y = h1, label = 'Children:', vjust = 1, size = 3.5) +
    
    # annotate('text', x = 5, y = 70, label = 'Cumulative % stunted', size = 3.5) +
    # annotate('text', x = 5, y = 15, label = '% first stunting', size = 3.5) +
    
    scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
    expand_limits(y = h2) +
    theme(strip.text = element_text(size=22, margin = margin(t = 5))) +
    
    theme(axis.text.x = element_text(margin = 
                                       margin(t = 0, r = 0, b = 0, l = 0),
                                     size = 10)) +
    theme(axis.title.x = element_text(margin = 
                                        margin(t = 25, r = 0, b = 0, l = 0),
                                      size = 15)) +
    theme(axis.title.y = element_text(size = 15)) +
    
    ggtitle("") +
    facet_wrap(~region) 
  
  if(!is.null(yrange)){
    p <- p + coord_cartesian(ylim=yrange)
  }
  
  return(p)
}

#XXXXXXXX
#TEMP - merge this plot in with the below
#Use different point shape, and only use numbers from plot p2
p_temp <- ki_combo_plot(d,
                        Disease="Stunting",
                        Measure=c("Cumulative incidence", "Incidence_proportion"), 
                        Birth="yes", 
                        Severe="no", 
                        Age_range="3 months", 
                        Cohort="pooled",
                        xlabel="Child age, months",
                        h1=85,
                        h2=90)



ggsave(p_temp, file="figures/stunting/pooled_ci.png", width=12, height=8)