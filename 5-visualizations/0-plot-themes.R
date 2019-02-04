


theme_ki <- function() {
  theme_bw() %+replace%
    theme(
      strip.background = element_blank(),
      legend.position="none",
      plot.title = element_text(size = 30, face = "bold"),
      strip.text = element_text(size=22, vjust= 1.5),
      axis.title = element_text(size=18),
      axis.text.y = element_text(size=16),
      axis.text.x = element_text(size=15, angle = 25, hjust = 1, vjust= -0.2)
    )
}



#hbgdki pallets
tableau10 <- c("#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
tableau11 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")


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