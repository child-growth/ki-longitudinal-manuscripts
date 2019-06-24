
rm(list=ls())
library(tidyverse)
library(ggthemes)
library(metafor)
library(shiny)
library(DT)
library(xtable)
library(here)

#------------------------------------------------
# Data Loading
#------------------------------------------------


#Load data
df <- readRDS(paste0(here::here(),"/7-cc-shiny-app/shiny_rf_results.rds"))

unique(df$intervention_variable)
intervention_variable
df  = df %>% mutate(intervention_variable = case_when(
  intervention_variable == "sex" ~  "Sex",
  intervention_variable == "enwast"~  "Enrolled wasted",
  intervention_variable == "gagebrth"~  "Gestational age at birth",
  intervention_variable == "predexfd6"~  "Excl/Pred breastfed <6mo.",
  intervention_variable == "mage"~ "Mother's age",
  intervention_variable == "mhtcm"~ "Mother's height" ,
  intervention_variable == "mwtkg"~ "Mother's weight" ,
  intervention_variable == "mbmi"~ "Mother's BMI" ,
  intervention_variable == "meducyrs"~ "Mother's education" ,
  intervention_variable == "feducyrs"~ "Father's education" ,
  intervention_variable == "parity"~  "Birth order" ,
  intervention_variable == "hfoodsec"~ "HH food security", 
  intervention_variable == "nchldlt5"~   "# of children <5 in HH",
  intervention_variable == "hhwealth_quart"~  "HH wealth" ,
  intervention_variable == "fage"~ "Father's age" ,
  intervention_variable == "fhtcm"~ "Father's height", 
  intervention_variable == "birthwt"~ "Birth weight (kg)", 
  intervention_variable == "birthlen"~ "Birth length (cm)", 
  intervention_variable == "vagbrth"~ "Vaginal birth" ,
  intervention_variable == "hdlvry"~ "Child delivered at home" ,
  intervention_variable == "single"~ "Single parent" ,
  intervention_variable == "nrooms"~ "# of rooms in HH", 
  intervention_variable == "nhh"~ "# of people in HH" ,
  intervention_variable == "anywast06"~ "Any wasting  <6 mo.", 
  intervention_variable == "pers_wast"~ "Persistent wasting  <6 mo.", 
  # intervention_variable == "trth2o"~ "Treats drinking water" ,
  intervention_variable == "cleanck"~ "Clean cooking fuel usage", 
  intervention_variable == "impfloor"~ "Improved floor" ,
  intervention_variable == "impsan"~ "Improved sanitation", 
  intervention_variable == "safeh20"~ "Safe water source" ,
  intervention_variable == "perdiar6"~ "Diarrhea <6 mo. (% days)", 
  intervention_variable == "perdiar24"~ "Diarrhea <24 mo.  (% days)", 
  # intervention_variable == "earlybf"~ "Breastfed hour after birth", 
  # intervention_variable == "predfeed3"~  "Predominant breastfeeding under 3 mo.",
  # intervention_variable == "predfeed36"~  "Predominant breastfeeding from 3-6 mo.",
  # intervention_variable == "predfeed6"~  "Predominant breastfeeding under 6 mo.",
  # intervention_variable == "exclfeed3"~  "Exclusive breastfeeding under 3 mo.",
  # intervention_variable == "exclfeed36"~  "Exclusive breastfeeding from 3-6 mo.",
  # intervention_variable == "exclfeed6"~  "Exclusive breastfeeding under 6 mo.",
  intervention_variable == "month"~  "Month of measurement",
  intervention_variable == "brthmon"~  "Birth month",
  intervention_variable == "lag_WHZ_quart"~  "Mean WHZ in the prior 3 mo."))

df$intervention_variable <- factor(df$intervention_variable)

df  = df %>% mutate(outcome_variable = case_when(
  outcome_variable == "sstunted" ~ "Prevalence of severe stunting",
  outcome_variable == "stunted" ~ "Prevalence of stunting",
  outcome_variable == "ever_stunted" ~ "Cumulative incidence of stunting",
  outcome_variable == "ever_sstunted" ~ "Cumulative incidence of severe stunting",
  outcome_variable == "ever_wasted" ~ "Cumulative incidence of wasting",
  outcome_variable == "pers_wast" ~ "Prevalence of persistent wasting",
  outcome_variable == "wast_rec90d" ~ "Wasting recovery",
  outcome_variable == "swasted" ~ "Prevalence of severe wasting",
  outcome_variable == "wasted" ~ "Prevalence of wasting",
  outcome_variable == "ever_co" ~ "Cumulative incidence of the co-occurance of stunting and wasting",
  outcome_variable == "ever_swasted" ~ "Cumulative incidence of severe wasting",
  outcome_variable == "dead" ~ "Deceased",
  outcome_variable == "co_occurence" ~ "Prevalence of the co-occurance of stunting and wasting",
  outcome_variable == "pers_wast624" ~ "Persistently wasted 624"
))


df$outcome_variable <- factor(df$outcome_variable)
levels(df$outcome_variable) = c("Prevalence of stunting", "Prevalence of severe stunting",
                                "Cumulative incidence of stunting", "Cumulative incidence of severe stunting",
                                "Prevalence of wasting", "Prevalence of severe wasting",
                                "Cumulative incidence of wasting", "Cumulative incidence of severe wasting",
                                "Prevalence of persistent wasting", "Persistently wasted 624", 
                                "Wasting recovery",
                                "Prevalence of the co-occurance of stunting and wasting", 
                                "Cumulative incidence of the co-occurance of stunting and wasting",
                                "Deceased")

df  = df %>% mutate(type = case_when(
  type == "ATE" ~ "Average Treatment Effect",
  type == "RR" ~ "Relative Risk"))

df$type <- factor(df$type)

#------------------------------------------------
# Inputs for Shiny App
#------------------------------------------------

#Plot parameters
yticks <- c( 0.50, 1.00, 2.00, 4.00, 8.00)
tableau10 <- c("#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
tableau11 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
Ylab <- "Relative Risk"
scaleFUN <- function(x) sprintf("%.2f", x)
theme_set(theme_bw())


clean_nmeans<-function(nmeas){
  nmeas <- round(nmeas/1000)
  nmeas.f <- paste0("N=",nmeas,"K children")
  return(nmeas.f)
}

clean_agecat<-function(agecat){
  agecat <- as.character(agecat)
  agecat <- gsub("months","mo.", agecat)
  agecat <- factor(agecat, levels=unique(agecat))
  return(agecat)
}

input <- data.frame(exposure = "birthlen", outcome = "stunted", age = "6 months", parameter = "RR", region = "All", adjusted = "Yes")
input <- input %>% mutate_all(as.character)

#------------------------------------------------
# Build Shiny App
#------------------------------------------------

# Define UI for application that draws a forest plot
ui <- navbarPage("HBGDki Results Dashboard",
          tabPanel("Exposure analysis",
              titlePanel("Associations between child, parental, and household characteristics and wasting and stunting outcomes"),
                
              sidebarLayout(
                  sidebarPanel(
                    # Variables with dropdown selections for user input
                  selectInput('exposure',
                              'Exposure Variable:',
                              choices = sort(levels(df$intervention_variable))),
                  selectInput('outcome',
                              'Outcome Variable:',
                              choices = levels(df$outcome_variable)),
                  selectInput('age',
                              'Child age:',
                              choices = levels(df$agecat)),
                  selectInput('parameter',
                              'Parameter:',
                              choices = levels(df$type)),
                  selectInput('region',
                              'region:',
                              choices = c("All","Asia","Africa", "Latin America")),
                  selectInput('adjusted',
                              'Adjusted:',
                              choices = c("Yes","No")),
                    #uiOutput('parameter'),
                    # uiOutput('region'),
                    # uiOutput('outcome'),
                    # uiOutput('age'),
                    # uiOutput('adjusted')#,
                    #uiOutput('pool_method')
                  radioButtons('pool_method',
                               'Pooling method:',
                               choices = c("Random","Fixed"))
                  ),
                  
                  # Show a plot of the selected exposure-outcome pair
                  mainPanel(
                    plotOutput("forestPlot", height=600),
                    br(),
                    br(),
                    plotOutput("pooledPlot", height=600),
                    br(),
                    br(),
                    br(),
                    # Create a new row for the table.
                    fluidRow(
                      #DT::dataTableOutput("table")
                      tableOutput("table")
                    )
                  )
                  
                )),
          
          tabPanel("Splines",
             fluidRow(
               column(4, selectInput("spline_outcome",
                                     "Outcome Variable:",
                                     choices = c("WHZ", "HAZ"))),
               column(4, selectInput("spline_exposure",
                                     "Exposure Variable:",
                                     choices = levels(df$intervention_variable)))
             ),
             
             br(),
             br(),
             
             mainPanel(
               width = 16,
               align = "center",
               imageOutput("image")
             )
          )
)
                          












# Define server logic required to draw the forest plot
server <- function(input, output, session) {
  # Adaptive input selections based on user input - avoids blank plots
  # output$region <- renderUI({
  #   df <- df %>%
  #     filter(intervention_variable == input$exposure) %>%
  #     drop_na(region, outcome_variable, agecat, adjusted, pooled)
  # 
  #   selectInput('region',
  #               'region:',
  #               choices = c('All', 'Asia', 'Latin America', 'Africa', 'Europe'))
  # })
  # output$outcome <- renderUI({
  #   if (input$region == 'All'){
  #     df <- df %>%
  #       filter(pooled == 0 | (pooled == 1 & region == 'Pooled'))
  #   } else {
  #     df <- df %>%
  #       filter(region == input$region)
  #   }
  #   df <- df %>%
  #     filter(intervention_variable == input$exposure) %>%
  #     # filter(ifelse(input$region == 'All', pooled == 0 | 
  #     #                 (pooled == 1 & region == 'Pooled'), region == input$region)) %>%
  #     drop_na(outcome_variable, agecat, adjusted, pooled)
  #   
  #   selectInput('outcome',
  #               'Outcome:',
  #               unique(df$outcome_variable))
  # })
  # output$age <- renderUI({
  #   if (input$region == 'All'){
  #     df <- df %>%
  #       filter(pooled == 0 | (pooled == 1 & region == 'Pooled'))
  #   } else {
  #     df <- df %>%
  #       filter(region == input$region)
  #   }
  #   
  #   df <- df %>%
  #     filter(intervention_variable == input$exposure) %>%
  #     # filter(ifelse(input$region == 'All', pooled == 0 | 
  #     #                 (pooled == 1 & region == 'Pooled'), region == input$region)) %>%
  #     filter(outcome_variable == input$outcome) %>%
  #     drop_na(agecat, adjusted, pooled)
  # 
  #   selectInput('age',
  #               'Age Category:',
  #               unique(df$agecat))
  # })
  # output$adjusted <- renderUI({
  #   if (input$region == 'All'){
  #     df <- df %>%
  #       filter(pooled == 0 | (pooled == 1 & region == 'Pooled'))
  #   } else {
  #     df <- df %>%
  #       filter(region == input$region)
  #   }
  #   
  #   df <- df %>%
  #     filter(intervention_variable == input$exposure) %>%
  #     # filter(ifelse(input$region == 'All', pooled == 0 | 
  #     #                 (pooled == 1 & region == 'Pooled'), region == input$region)) %>%
  #     filter(outcome_variable == input$outcome) %>%
  #     filter(agecat == input$age) %>%
  #     drop_na(adjusted, pooled)
  # 
  #   radioButtons('adjusted',
  #                'Covariate adjustment:',
  #                choices = c('Adjusted', 'Unadjusted'))
  # })
  # output$pool_method <- renderUI({
  #   if (input$region == 'All'){
  #     df <- df %>% filter(pooled == 0 | (pooled == 1 & region == 'Pooled'))
  #   } else {
  #     df <- df %>% filter(region == input$region)
  #   }
  #   if (input$adjusted == 'Unadjusted'){
  #     df <- df %>% filter(adjusted == 1)
  #   } else {
  #     df <- df %>% filter(adjusted == 0)
  #   }
  #   df <- df %>%
  #     filter(intervention_variable == input$exposure) %>%
  #     # filter(ifelse(input$region == 'All', pooled == 0 | 
  #     #                 (pooled == 1 & region == 'Pooled'), region == input$region)) %>%
  #     filter(outcome_variable == input$outcome) %>%
  #     filter(agecat == input$age) %>%
  #     # filter(ifelse(input$adjusted == 'Unadjusted', adjusted == 1, adjusted == 0)) %>%
  #     drop_na(pooled)
  # 
  #   radioButtons('pool_method',
  #                'Pooling method:',
  #                choices = c("Random","Fixed"))
  # })
  
  
  
  selectedData <- reactive({
    df <- df[df$outcome_variable == input$outcome, ]
    if(input$adjusted == 'No'){df <- df %>% filter(adjusted == 0)}
    if(input$adjusted == 'Yes'){df <- df %>% filter(adjusted == 1)}
    if(input$region!="All"){df <- df[df$region==input$region,]}
    if(input$region=="All"){df <- df[df$pooled==0 | (df$pooled==1 & df$region=="Pooled"),]}
    #if(input$pool_method=="Random"){df <- df[df$pooled==0 | df$studyid=="Pooled - Random"|df$studyid=="Pooled - Asia - RE"|df$studyid=="Pooled - Afica - RE"|df$studyid=="Pooled - Latin America - RE",]}
    #if(input$pool_method=="Fixed"){df <- df[df$pooled==0 | df$studyid=="Pooled - Fixed"|df$studyid=="Pooled - Asia - FE"|df$studyid=="Pooled - Afica - FE"|df$studyid=="Pooled - Latin America - FE",]}
    df <- df[df$intervention_variable == input$exposure, ]
    df <- df[df$type == input$parameter, ]
    df <- df[df$outcome_variable == input$outcome, ]
    df <- df[df$agecat == input$age, ]
    df <- df %>% filter(!is.na(estimate))
    df <- df %>% arrange(pooled, region, estimate)
    df$studyid <- factor(df$studyid, levels = unique(df$studyid))
    df
  })
  
  #Subset to data for forest vs. pooled plots
  selectedDataForest <- reactive({
    
    d <- selectedData()
     
    d <- d %>% filter(baseline_level!=intervention_level) #drop reference level
    d <- droplevels(d)
    d$pooled <- factor(d$pooled)
    d
  })
  
  selectedDataPooled <- reactive({
    d <- selectedData()
    d <- d %>% filter(pooled==1)
    d
  })
  
  
  
  
  
   output$forestPlot <- renderPlot({
      p<-ggplot(selectedDataForest(), aes(x=studyid)) +
        geom_point(aes(shape=pooled, y=estimate, fill=region, color=region), size = 4) +
        geom_linerange(aes(ymin=ci_lower, ymax=ci_upper, color=region)) +
       coord_flip() +
       #facet_wrap(~intervention_level, ncol=1) +
        labs(x = "Cohort", y = Ylab) +
        geom_hline(yintercept = 1) +
        geom_vline(xintercept = 1.5, linetype=2) +
        scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
        scale_shape_manual(values=c(21, 23)) +
        scale_colour_manual(values=tableau11) +
        scale_fill_manual(values=tableau11) +
        scale_size_continuous(range = c(0.5, 1))+
        theme(plot.title = element_text(hjust = 0.5),
              strip.background = element_blank(),
              legend.position="none",
              strip.text.x = element_text(size=12),
              axis.text.x = element_text(size=12, angle = 45, hjust = 1),
              text = element_text(size=16)) +
        ggtitle(paste0("Forest plot of cohort-specific associations for\n",
                      input$outcome, " outcome and\n", input$age)) +guides(shape=FALSE)
     
    
       if(length(unique(df$intervention_variable))>1){
        p<-p+facet_wrap(~intervention_level, ncol=1) 
       }
     
     p
   })
   
   output$pooledPlot <- renderPlot({
       ggplot(selectedDataPooled(), aes(x=intervention_level)) +
       #ggplot(selectedDataForest(), aes(x=studyid)) +
       geom_point(aes(y=estimate, fill=agecat, color=agecat), size = 4) +
       geom_linerange(aes(ymin=ci_lower, ymax=ci_upper, color=agecat),
                      alpha=0.5, size = 3) +
       labs(x = "Exposure category",
            y = "Relative risk") +
       geom_hline(yintercept = 1) +
       #geom_text(aes(x=0.5, y=(max(df$RR.CI2))-.1, label=paste0("Studies: ",Nstudies)), size=3,  hjust=0) +
       scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) +
       scale_fill_manual(values=rep(tableau10,4)) +
       scale_colour_manual(values=rep(tableau10,4)) +
       theme(plot.title = element_text(hjust = 0.5),
             strip.background = element_blank(),
             legend.position="none",
             axis.text.y = element_text(size=12),
             strip.text.x = element_text(size=10),
             axis.text.x = element_text(size=9, angle = 20, hjust = 1),
             panel.spacing = unit(0, "lines"),
             text = element_text(size=16)) +
       ggtitle(paste0("Pooled associations for\n", input$outcome, 
                      " outcome and\n", input$age))
    })
   
   output$table <- renderTable({
     selectedData() 
   })
   
   selected_plot = reactive({
     outcome = tolower(input$spline_outcome)
     exposure = input$spline_exposure
     file_name = paste0("figures/risk factor/Splines/", outcome, "/", outcome, "_stat_by_", exposure, ".png")
     file_name
   })
   
   output$image <- renderImage({
     file_path <- selected_plot()
     
     # Return a list containing the filename
     list(src = file_path,
          contentType = 'image/png',
          #height = 600,
          width = 1000,
          alt = "Image is loading")
     
   }, deleteFile = FALSE)
   
}



# Run the application 
shinyApp(ui = ui, server = server)

