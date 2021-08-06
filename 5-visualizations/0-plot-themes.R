


theme_ki <- function() {
  theme_bw() %+replace%
    theme(
      strip.background = element_blank(),
      legend.position="none",
      plot.title = element_text(size = 16, face = "bold"),
      strip.text = element_text(size=14),
      axis.title = element_text(size=12),
      axis.text.y = element_text(size=10),
      axis.text.x = element_text(size=10, angle = 0, hjust = 0.5, vjust=.1)
    )
}

#hbgdki pallets
tableau10 <- c("#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
tableau11 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
# colorblind friendly palette
cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
nyt_pal <- c("#510000", "#AC112D", "#EC6D47", "#F2A058", "#F7D269", "#839772", "#325D8A")


theme_set(theme_ki)


#-------------------------------------------------------------------------------------------
# Plot functions
#-------------------------------------------------------------------------------------------
ki_desc_flurry_plot <- function(d, Disease, Measure, Birth, Severe, Age_range, 
                         xlabel="Age category",
                         ylabel="",
                         Region=NULL,
                         h2=3,
                         strip.text.size=18,
                         yrange=NULL,
                         returnData=F) {
  
  df <- d %>% filter(
    disease == Disease &
      measure == Measure &
      birth == Birth &
      severe == Severe &
      age_range == Age_range &
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
  
  ### new
  df <- df %>% mutate(ispooled = as.factor(ifelse(cohort=="pooled", "yes", "no")))
  
  if (min(df$lb) < 0) {
    print("Warning: some lower bounds < 0")
  }
  
  p <- ggplot(df,aes(y=est,x=agecat)) +
    
    # pooled 
    geom_point(aes(shape=measure, size=measure, fill=region, color=region), 
               size = 2, stroke = 0,
               data = df %>% filter(ispooled == "yes")) +
    
    geom_errorbar(aes(color=region, group=interaction(measure, region),
                      ymin=lb, ymax=ub), width = 0,
                  data = df %>% filter(ispooled == "yes")) +
    
    geom_text(data=df[df$measure ==Measure,] %>% 
                filter(ispooled == "yes"), 
              aes(x = agecat, y = est, label = round(est)),
              hjust = 1.5, 
              vjust = 0.5) + 
    
    geom_text(data=df[df$measure == Measure,] %>% 
                filter(ispooled == "yes"), 
              aes(x = agecat, y = est, label = round(est)),
              hjust = 1.5, 
              vjust = 0.5) + 
    
    # cohort-stratified 
    geom_point(color = "#878787", fill = "#878787", size = 1.5, 
               data = df %>% filter(ispooled == "no"),
               position = position_jitter(width = 0.15), alpha = 0.25) +
    
    scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                       guide = FALSE) +
    scale_size_manual(values = c(2, 1.5), guide = FALSE) +
    scale_shape_manual(values = c(16, 17),
                       name = 'Measure')+
    scale_fill_manual(values=tableau11, guide = FALSE) +
    
    xlab(xlabel)+
    ylab(ylabel) +

    # add space to the left and right of points on x axis
    # to accommodate point estimate labels
    scale_x_discrete(expand = expand_scale(add = 1)) +
    
    scale_y_continuous(breaks = scales::pretty_breaks(n = 10))  +
    
    theme(
      axis.text.x = element_text(margin =
                                   margin(t = 0, r = 0, b = 0, l = 0),
                                 size = 14)) +
    theme(axis.title.y = element_text(size = 14)) +
    
    ggtitle("")
  
  if(!is.null(Region)) {
    p <- p + facet_wrap(~cohort) +
      theme(strip.text = element_text(size=strip.text.size, margin = margin(t = 0)))
  }else {
    p <- p + facet_grid(~region) +
      theme(strip.text = element_text(size=14, margin = margin(t = 0))) 
  }
  
  if(!is.null(yrange)){
    p <- p + coord_cartesian(ylim=yrange)
  }
  
  
  
  if(returnData){
    return(list(plot=p,data=df))
  }else{
    return(list(plot=p))
  }
}


ki_desc_plot <- function(d, Disease, Measure, Birth, Severe, Age_range, 
                         Cohort="pooled",
                         xlabel="Age category",
                         ylabel="",
                         Region=NULL,
                         h1=0,
                         h2=3,
                         strip.text.size=18,
                         yrange=NULL,
                         returnData=F) {
  
  df <- d %>% filter(
    disease == Disease &
      measure == Measure &
      birth == Birth &
      severe == Severe &
      age_range == Age_range &
      !is.na(region) & !is.na(agecat)
  )
  df <- droplevels(df)
  
  if (!is.null(Region)) {
    df <- df %>% filter(region == Region, cohort != "pooled")
  } else {
    df <- df %>% filter(cohort == Cohort)
  }

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

  if (min(df$lb) < 0) {
    print("Warning: some lower bounds < 0")
  }
  
  p <- ggplot(df,aes(y=est,x=agecat)) +
    geom_errorbar(aes(color=region, ymin=lb, ymax=ub), width = 0) +
    geom_point(aes(fill=region, color=region), size = 2) +
    geom_text(aes(x = agecat, y = est, label = round(est)), hjust = 1.5) +
    scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure)) +
    xlab(xlabel)+
    ylab(ylabel) +

    # add space to the left and right of points on x axis
    # to accommodate point estimate labels
    scale_x_discrete(expand = expand_scale(add = 1)) +

    scale_y_continuous(breaks = scales::pretty_breaks(n = 10))  +

    theme(
      axis.text.x = element_text(margin =
                                       margin(t = 0, r = 0, b = 0, l = 0),
                                     size = 14)) +
    theme(axis.title.y = element_text(size = 14)) +

    ggtitle("")

  if(!is.null(Region)) {
    p <- p + facet_wrap(~cohort) +
      theme(strip.text = element_text(size=strip.text.size, margin = margin(t = 0)))
  }else {
    p <- p + facet_grid(~region) +
      theme(strip.text = element_text(size=14, margin = margin(t = 0))) 
  }

  if(!is.null(yrange)){
    p <- p + coord_cartesian(ylim=yrange)
  }



  if(returnData){
    return(list(plot=p,data=df))
  }else{
    return(list(plot=p))
  }
}

# fixed effects descriptive epi plot, 
# which has different aesthetics
ki_desc_plot_fe <- function(d, Disease, Measure, Birth, Severe, Age_range, 
                         Cohort="pooled",
                         xlabel="Age category",
                         ylabel="",
                         Region=NULL,
                         h1=0,
                         h2=3,
                         yrange=NULL,
                         returnData=F) {
  
  df <- d %>% filter(
    disease == Disease &
      measure == Measure &
      birth == Birth &
      severe == Severe &
      age_range == Age_range &
      !is.na(region) & !is.na(agecat)
  )
  df <- droplevels(df)
  
  if (!is.null(Region)) {
    df <- df %>% filter(region == Region, cohort != "pooled")
  } else {
    df <- df %>% filter(cohort == Cohort)
  }
  
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
  
  if (min(df$lb) < 0) {
    print("Warning: some lower bounds < 0")
  }
  
  p <- ggplot(df,aes(y=est,x=agecat)) +
    geom_errorbar(aes(color=region, ymin=lb, ymax=ub), width = 0) +
    geom_point(aes(fill=region, color=region), size = 2) +
    geom_text(aes(x = agecat, y = est, label = round(est)), hjust = 1.5) +
    scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure)) +
    xlab(xlabel)+
    ylab(ylabel) +
    # add space to the left and right of points on x axis
    # to accommodate point estimate labels
    scale_x_discrete(expand = expand_scale(add = 1)) +
    
    scale_y_continuous(breaks = scales::pretty_breaks(n = 10))  +
    
    theme(axis.text.x = element_text(margin =
                                       margin(t = 0, r = 0, b = 0, l = 0),
                                     size = 10)) +
    theme(axis.title.y = element_text(size = 12)) +
    ggtitle("")
  
  if (!is.null(Region)) {
    p <- p + facet_wrap(~cohort) +
      theme(strip.text = element_text(size=18, margin = margin(t = 0)))
  } else {
    p <- p + facet_grid(~region) +
      theme(strip.text = element_text(size=16, margin = margin(t = 0))) 
  }
  
  if(!is.null(yrange)){
    p <- p + coord_cartesian(ylim=yrange)
  }
  
  
  
  if(returnData){
    return(list(plot=p,data=df))
  }else{
    return(p)
  }
}





#-------------------------------------------------------------------------------------------
# Combo plot to plot CI and IP in same plot
#-------------------------------------------------------------------------------------------


# TO DO: implement Ben's request to move the legend into the body
# of the plot

# change incidence proportion to "% new incident cases"
# change 

ki_combo_plot <- function(d, Disease, Measure, Birth, Severe, Age_range, 
                          Cohort="pooled",
                          xlabel="Age category",
                          ylabel="Incidence proportion (95% CI)",
                          h1=0,
                          h2=3,
                          yrange=NULL,
                          dodge=0,
                          returnData=F){
  
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
  
  # fix factor levels if birth strat
  if (Birth == "strat") {
    df <- df %>%
      mutate(agecat = as.character(agecat)) %>%
      mutate(agecat = ifelse(agecat=="8 days-3", "0-3", agecat)) %>%
      mutate(agecat = factor(agecat, levels = c(
        "Birth",
        "0-3", 
        "3-6",
        "6-9",
        "9-12",
        "12-15",
        "15-18",
        "18-21",
        "21-24"
      )))
  }
  
  
  # remove extra text from label at birth
  # that overlaps between CI and IP
  if(Birth!="strat"){
    df <- df %>% mutate(est.f = ifelse(agecat=="0-3" & 
                                         measure=="Incidence proportion", NA, est))
  }else{
    df <- df %>% mutate(est.f = ifelse(agecat=="Birth" & 
                                         measure=="Incidence proportion", NA, est))
  }
  
  # remove N= labels for incidence proportion
  df <- df %>% mutate(nmeas.f = ifelse(measure == 'Incidence proportion', '', nmeas.f)) %>%
    mutate(nstudy.f = ifelse(measure == 'Incidence proportion', '', nstudy.f))
  
  
  if (min(df$lb) < 0) {
    print("Warning: some lower bounds < 0")
  }
  
  p <- ggplot(df,aes(y=est,x=agecat)) +
    geom_errorbar(aes(color=region, 
                      group=interaction(measure, region), ymin=lb, ymax=ub), 
                  width = 0, position = position_dodge(dodge)) +
    geom_point(aes(shape=measure, size=measure, fill=region, color=region
    ),  position = position_dodge(dodge)) +
    
    geom_text(data=df[df$measure =='Incidence proportion',], 
              aes(x = agecat, y = est, label = round(est.f)),
              hjust = 1.5, 
              position = position_dodge(width = dodge),
              vjust = 0.5) + 
    
    geom_text(data=df[df$measure =='Incidence proportion - monthly cohorts',], 
              aes(x = agecat, y = est, label = round(est.f)),
              hjust = 1.5, 
              position = position_dodge(width = dodge),
              vjust = 0.5) + 
    
    geom_text(data=df[df$measure =="Cumulative incidence",],              
              aes(x = agecat, y = est, label = round(est.f)),
              hjust = 1.5, 
              position = position_dodge(width = dodge),
              vjust = 0.5) + 
    
    geom_text(data=df[df$measure =="Cumulative incidence - monthly cohorts",],              
              aes(x = agecat, y = est, label = round(est.f)),
              hjust = 1.5, 
              position = position_dodge(width = dodge),
              vjust = 0.5) + 
    
    scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                       guide = FALSE) +
    scale_size_manual(values = c(2, 1.5), guide = FALSE) +
    scale_shape_manual(values = c(16, 17),
                       name = 'Measure')+
    #labels = c('Cumulative Incidence', 'New Incident Cases')) + 
    scale_fill_manual(values=tableau11, guide = FALSE) +
    
    xlab(xlabel)+
    ylab(ylabel) +
    
    # add space to the left and right of points on x axis
    # to accommodate point estimate labels
    scale_x_discrete(expand = expand_scale(add = 1)) +
    
    scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
    theme(strip.text = element_text(size=18, margin = margin(t = 0))) +
    
    theme(axis.text.x = element_text(margin = 
                                       margin(t = 0, r = 0, b = 0, l = 0),
                                     size = 9)) +
    theme(axis.title.x = element_text(margin = 
                                        margin(t = 5, r = 0, b = 0, l = 0),
                                      size = 14)) +
    theme(axis.title.y = element_text(size = 14)) +
    
    ggtitle("") +
    facet_grid(~region) +
    
    guides(color = FALSE) +
    
    theme(legend.position = c(.06,.83),
          legend.title = element_blank(),
          legend.text = element_text(size = 10),
          legend.background = element_blank(),
          legend.margin = margin(1, 1.5, 1, 1),
          legend.box.background = element_rect(colour = "black"))
  
  if(!is.null(yrange)){
    p <- p + coord_cartesian(ylim=yrange)
  }
  
  if(returnData){
    return(list(plot=p,data=df))
  }else{
    return(p)
  }
}


ki_ip_flurry_plot <- function(d, Disease, Measure, Birth, Severe, Age_range, 
                              xlabel="Age category",
                              ylabel="Incidence proportion (95% CI)",
                              h1=0,
                              h2=3,
                              yrange=NULL,
                              dodge=0,
                              returnData=F){
  
  df <- d %>% filter(
    disease == Disease &
      measure %in% Measure &
      birth == Birth &
      severe == Severe &
      age_range == Age_range &
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
  
  df <- df %>% mutate(ispooled = as.factor(ifelse(cohort=="pooled", "yes", "no")))
  
  # fix factor levels if birth strat
  if (Birth == "strat") {
    df <- df %>%
      mutate(agecat = as.character(agecat)) %>%
      mutate(agecat = ifelse(agecat=="8 days-3", "0-3", agecat)) %>%
      mutate(agecat = factor(agecat, levels = c(
        "Birth",
        "0-3", 
        "3-6",
        "6-9",
        "9-12",
        "12-15",
        "15-18",
        "18-21",
        "21-24"
      )))
  }
  
  # remove N= labels for incidence proportion
  df <- df %>% mutate(nmeas.f = ifelse(measure == 'Incidence proportion', '', nmeas.f)) %>%
    mutate(nstudy.f = ifelse(measure == 'Incidence proportion', '', nstudy.f))
  
  
  if (min(df$lb) < 0) {
    print("Warning: some lower bounds < 0")
  }
  
  p <- ggplot(df,aes(y=est,x=agecat)) +
    
    # pooled 
    geom_point(aes(shape=measure, size=measure, fill=region, color=region), 
               size = 2, stroke = 0,
               data = df %>% filter(ispooled == "yes"),
               position = position_dodge(dodge)) +
    
    geom_errorbar(aes(color=region, group=interaction(measure, region),
                      ymin=lb, ymax=ub), width = 0,
                  data = df %>% filter(ispooled == "yes"),
                  position = position_dodge(dodge)) +
    
    geom_text(data=df[df$measure =='Incidence proportion',] %>% 
                filter(ispooled == "yes"), 
              aes(x = agecat, y = est, label = round(est)),
              hjust = 1.5, 
              position = position_dodge(width = dodge),
              vjust = 0.5) + 
    
    geom_text(data=df[df$measure =='Incidence proportion - monthly cohorts',] %>%
                filter(ispooled == "yes"), 
              aes(x = agecat, y = est, label = round(est)),
              hjust = 1.5, 
              position = position_dodge(width = dodge),
              vjust = 0.5) + 
    
    # cohort-stratified 
    
    geom_point(color = "#878787", fill = "#878787", size = 1.5, 
               data = df %>% filter(ispooled == "no"),
               position = position_jitter(width = 0.15), alpha = 0.25) +
    
    scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                       guide = FALSE) +
    scale_size_manual(values = c(2, 1.5), guide = FALSE) +
    scale_shape_manual(values = c(16, 17),
                       name = 'Measure')+
    scale_fill_manual(values=tableau11, guide = FALSE) +
    
    xlab(xlabel)+
    ylab(ylabel) +
    
    # add space to the left and right of points on x axis
    # to accommodate point estimate labels
    scale_x_discrete(expand = expand_scale(add = 1)) +
    
    scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
    theme(strip.text = element_text(size=18, margin = margin(t = 0))) +
    
    theme(axis.text.x = element_text(margin = 
                                       margin(t = 0, r = 0, b = 0, l = 0),
                                     size = 9)) +
    theme(axis.title.x = element_text(margin = 
                                        margin(t = 5, r = 0, b = 0, l = 0),
                                      size = 14)) +
    theme(axis.title.y = element_text(size = 14)) +
    
    ggtitle("") +
    facet_grid(~region) +
    
    guides(color = FALSE) +
    
  
  if(!is.null(yrange)){
    p <- p + coord_cartesian(ylim=yrange)
  }
  
  if(returnData){
    return(list(plot=p,data=df))
  }else{
    return(p)
  }
}





ki_wast_ip_flurry_plot <- function(d, Disease, Measure, Birth, Severe, Age_range, 
                              xlabel="Age category",
                              ylabel="Proportion (95% CI)",
                              h1=0,
                              h2=3,
                              yrange=NULL,
                              dodge=0,
                              returnData=F,
                              legend.pos = c(.92,.8)){
  
  df <- d %>% filter(
    disease == Disease &
      measure %in% Measure &
      birth == Birth &
      severe == Severe &
      age_range == Age_range &
      !is.na(region) & !is.na(agecat)
  )
  #df <- df %>% filter(birth=="yes" | agecat=="0-3 months")
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
  
  df <- df %>% mutate(ispooled = as.factor(ifelse(cohort=="pooled", "yes", "no")))
  
  # fix factor levels if birth strat
  if (Birth == "strat") {
    df <- df %>%
      mutate(agecat = as.character(agecat)) %>%
      mutate(agecat = ifelse(agecat=="8 days-3", "0-3", agecat)) %>%
      mutate(agecat = factor(agecat, levels = c(
        "Birth",
        "0-3", 
        "3-6",
        "6-9",
        "9-12",
        "12-15",
        "15-18",
        "18-21",
        "21-24"
      )))
  }
  df <- df %>% filter(!(measure=="Incidence proportion" & agecat=="0-3")) %>%
    droplevels()
  
  # remove N= labels for incidence proportion
  df <- df %>% mutate(nmeas.f = ifelse(measure == 'Incidence proportion', '', nmeas.f)) %>%
    mutate(nstudy.f = ifelse(measure == 'Incidence proportion', '', nstudy.f))
  
  
  if (min(df$lb) < 0) {
    print("Warning: some lower bounds < 0")
  }
  
  p <- ggplot(df,aes(y=est,x=agecat)) +
    
    # cohort-stratified 
    geom_point(aes(shape=measure, color=measure), fill = "#878787", size = 1.5, 
               data = df %>% filter(ispooled == "no"),
               position = position_jitter(width = 0.15), alpha = 0.8) +
    scale_color_manual(values=c("grey60","grey80"), drop=TRUE, limits = levels(df$measure),
                       guide = FALSE) +
    new_scale_color() + 
    # pooled 
    geom_point(aes(shape=measure, size=measure, fill=region, color=region,
                   group=interaction(measure, region)), 
               size = 2.5, stroke = 0,
               data = df %>% filter(ispooled == "yes"),
               position = position_dodge(dodge)) +
    
    geom_errorbar(aes(color=region, group=interaction(measure, region),
                      ymin=lb, ymax=ub), width = 0,
                  data = df %>% filter(ispooled == "yes"),
                  position = position_dodge(dodge)) +
    
    scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                       guide = FALSE) +
    # geom_text(data=df[df$measure =='Incidence proportion',] %>% 
    #             filter(ispooled == "yes"), 
    #           aes(x = agecat, y = est, label = round(est)),
    #           hjust = 1.5, 
    #           position = position_dodge(width = dodge),
    #           vjust = 0.5) + 
    scale_size_manual(values = c(2, 1.5), guide = FALSE) +
    scale_shape_manual(values = c(16, 17),
                       name = 'Measure')+
    scale_fill_manual(values=tableau11, guide = FALSE) +
    
    xlab(xlabel)+
    ylab(ylabel) +
    
    # add space to the left and right of points on x axis
    # to accommodate point estimate labels
    scale_x_discrete(expand = expand_scale(add = 1)) +
    
    scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
    theme(strip.text = element_text(size=18, margin = margin(t = 0))) +
    
    theme(axis.text.x = element_text(margin = 
                                       margin(t = 0, r = 0, b = 0, l = 0),
                                     size = 9)) +
    theme(axis.title.x = element_text(margin = 
                                        margin(t = 5, r = 0, b = 0, l = 0),
                                      size = 14)) +
    theme(axis.title.y = element_text(size = 14)) +
    
    ggtitle("") +
    facet_grid(~region) +
    
    guides(color = FALSE) +
    
    
    if(!is.null(yrange)){
      p <- p + coord_cartesian(ylim=yrange)
    }
  
  p <- p +  theme(legend.position = legend.pos,
                  legend.title = element_blank(),
                  legend.background = element_blank(),
                  legend.box.background = element_rect(colour = "black"))
  
  if(returnData){
    return(list(plot=p,data=df))
  }else{
    return(p)
  }
}


ip_plot <- function(d,
                    Disease,
                    Measure,
                    Birth,
                    Severe,
                    Age_range,
                    Cohort = "pooled",
                    xlabel = "Age category",
                    ylabel = "Proportion (95% CI)",
                    h1 = 0,
                    h2 = 3,
                    yrange = NULL,
                    dodge = 0,
                    returnData = F,
                    Region = NULL,
                    strip.text.size=12,
                    geom_text_adjust_vec = 0) {
  
  
  df <- d %>% filter(
    disease == Disease &
      measure %in% Measure &
      birth == Birth &
      severe == Severe &
      age_range == Age_range &
      # cohort == Cohort &
      !is.na(region) & !is.na(agecat)
  )
  df <- droplevels(df)
  
  if (!is.null(Region)) {
    df <- df %>% filter(region == Region, cohort != "pooled")
  } else {
    df <- df %>% filter(cohort == Cohort)
  }
  
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
  df <- df %>% mutate(nmeas.f = ifelse(measure == 'Incidence proportion', '', nmeas.f)) %>%
    mutate(nstudy.f = ifelse(measure == 'Incidence proportion', '', nstudy.f))
  
  
  p <- ggplot(df,aes(y=est,x=agecat)) +
    geom_errorbar(aes(color=region, 
                      group=interaction(measure, region), ymin=lb, ymax=ub), 
                  width = 0, position = position_dodge(dodge)) +
    geom_point(aes(shape=measure, fill=region, color=region
    ), size = 2, position = position_dodge(dodge)) +
    geom_text(aes(x = agecat, y = est, label = round(est)), 
              hjust = 1.5, 
              position = position_dodge(width = dodge),
              vjust = geom_text_adjust_vec) +
    scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
                       guide = FALSE) +
    scale_shape_manual(values = c(16, 17)) + 
    scale_fill_manual(values=tableau11, guide = FALSE) +
    
    xlab(xlabel)+
    ylab(ylabel) +
    
    # add space to the left and right of points on x axis
    # to accommodate point estimate labels
    scale_x_discrete(expand = expand_scale(add = 1)) +
    
    scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
    theme(strip.text = element_text(size=18, margin = margin(t = 0))) +
    
    theme(axis.text.x = element_text(margin = 
                                       margin(t = 0, r = 0, b = 0, l = 0),
                                     size = 9)) +
    theme(axis.title.x = element_text(margin = 
                                        margin(t = 5, r = 0, b = 0, l = 0),
                                      size = 14)) +
    theme(axis.title.y = element_text(size = 14)) +
    
    ggtitle("") +
    facet_grid(~region) +
    
    guides(color = FALSE) 
  
  if(!is.null(yrange)){
    p <- p + coord_cartesian(ylim=yrange)
  }
  
  if (!is.null(Region)) {
    p <- p + facet_wrap(~cohort) +
      theme(strip.text = element_text(size=strip.text.size, margin = margin(t = 0)))
  } else {
    p <- p + facet_grid(~region) +
      theme(strip.text = element_text(size=6, margin = margin(t = 0))) 
  }
  
  if(!is.null(yrange)){
    p <- p + coord_cartesian(ylim=yrange)
  }
  
  
  if(returnData){
    return(list(plot=p,data=df))
  }else{
    return(p)
  }
}




#Plot data cleaning functions

scaleFUN <- function(x) sprintf("%.2f", x)

clean_nmeans<-function(nmeas){
  nmeas.f <- as.character(nmeas)
  i <- nmeas>=1000 & !is.na(nmeas)
  nmeas[i] <- round(nmeas[i]/1000)
  nmeas.f[i] <- paste0("N=",nmeas[i],"K children")
  nmeas.f[!i] <- as.character(nmeas[!i])
  
  return(nmeas.f)
}

clean_agecat<-function(agecat){
  agecat <- as.character(agecat)
  agecat <- gsub("months","mo.", agecat)
  agecat <- factor(agecat, levels=unique(agecat))
  return(agecat)
}





# Multiple plot function
#
# ggplot objects can be passed in ..., or to plotlist (as a list of ggplot objects)
# - cols:   Number of columns in layout
# - layout: A matrix specifying the layout. If present, 'cols' is ignored.
#
# If the layout is something like matrix(c(1,2,3,3), nrow=2, byrow=TRUE),
# then plot 1 will go in the upper left, 2 will go in the upper right, and
# 3 will go all the way across the bottom.
#
multiplot <- function(..., plotlist=NULL, file, cols=1, layout=NULL) {
  library(grid)
  
  # Make a list from the ... arguments and plotlist
  plots <- c(list(...), plotlist)
  
  numPlots = length(plots)
  
  # If layout is NULL, then use 'cols' to determine layout
  if (is.null(layout)) {
    # Make the panel
    # ncol: Number of columns of plots
    # nrow: Number of rows needed, calculated from # of cols
    layout <- matrix(seq(1, cols * ceiling(numPlots/cols)),
                     ncol = cols, nrow = ceiling(numPlots/cols))
  }
  
  if (numPlots==1) {
    print(plots[[1]])
    
  } else {
    # Set up the page
    grid.newpage()
    pushViewport(viewport(layout = grid.layout(nrow(layout), ncol(layout))))
    
    # Make each plot, in the correct location
    for (i in 1:numPlots) {
      # Get the i,j matrix positions of the regions that contain this subplot
      matchidx <- as.data.frame(which(layout == i, arr.ind = TRUE))
      
      print(plots[[i]], vp = viewport(layout.pos.row = matchidx$row,
                                      layout.pos.col = matchidx$col))
    }
  }
}