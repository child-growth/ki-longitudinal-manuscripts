
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
#try(df <- readRDS("7-cc-shiny-app/shiny_rf_results.rds"))
#try(spline_variables <- readRDS("7-cc-shiny-app/spline_variables.rds"))
try(df <- readRDS("shiny_rf_results.rds"))
try(spline_variables <- readRDS("spline_variables.rds"))

#------------------------------------------------
# Inputs for Shiny App
#------------------------------------------------

#Plot parameters
yticks <- c( 0.50, 0.75, 1.00, 1.33, 2.00, 4.00, 8.00)
yticks2 <- c( 0.50, 0.75, 0.91, 1.00, 1.10, 1.33, 2.00, 4.00, 8.00)
yticks_cont <- c(-20:20/10)

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

input <- data.frame(exposure = "birthlen", outcome = "stunted", age = "6 months", parameter = "RR", region = "All", adjusted = "Yes", RE=1, adjusted=1)
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
                              selectInput('outcome',
                                          'Outcome Variable:',
                                          choices = levels(df$outcome_variable)),
                              uiOutput('exposure'),
                              uiOutput('parameter'),
                              uiOutput('age'),
                              uiOutput('region'),
                              uiOutput('adjusted'),
                              # radioButtons('adjusted',
                              #              'Covariate adjustment:',
                              #              choices = c("Adjusted","Unadjusted")),
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
                                                  choices = unique(spline_variables$spline_vars)))
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
  #Adaptive input selections based on user input - avoids blank plots
  output$exposure <- renderUI({
    df <- df %>%
      filter(outcome_variable == input$outcome)
    
    d <- df %>% drop_na(intervention_variable) %>% arrange(intervention_variable)
    
    selectInput('exposure',
                'Exposure Variable:',
                levels(d$intervention_variable))
  })
  
  
  output$parameter = renderUI({
    df <- df %>%
      filter(outcome_variable == input$outcome) %>% 
      filter(intervention_variable == input$exposure) %>% 
      drop_na(type)
    
    selectInput('parameter',
                'Parameter:',
                choices = levels(df$type)[levels(df$type) %in% unique(df$type)])
  })
  

  output$age <- renderUI({
    df <- df %>%
      filter(intervention_variable == input$exposure) %>%
      filter(outcome_variable == input$outcome) %>% 
      filter(type == input$parameter) 
    
    selectInput('age',
                'Age Category:',
                levels(df$agecat)[levels(df$agecat) %in% unique(df$agecat)])
  })
  
  output$region <- renderUI({
    df <- df %>%
      filter(intervention_variable == input$exposure) %>%
      filter(outcome_variable == input$outcome) %>% 
      filter(type == input$parameter) %>% 
      filter(agecat == input$age) %>% 
      filter(region != "N.America & Europe") %>% 
      drop_na(region)
    
    remaining_regions = levels(df$region)[levels(df$region) %in% unique(df$region)]
    
    selectInput('region',
                'Region:',
                choices = append(c("All"), remaining_regions))
  })
  
  output$adjusted <- renderUI({
    df <- df %>%
      filter(intervention_variable == input$exposure) %>%
      filter(outcome_variable == input$outcome) %>%
      filter(type == input$parameter) %>%
      filter(agecat == input$age)

    if (input$region == 'All'){
      df <- df %>%
        filter(pooled == 0 | (pooled == 1 & region == 'Pooled'))
    } else {
      df <- df %>%
        filter(region == input$region)
    }

    df = df %>% mutate(adjusted = case_when(
      adjusted == 1 ~ "Adjusted",
      adjusted == 0 ~ "Unadjusted")) %>%
      drop_na(adjusted) %>%
      arrange(adjusted)

    levels(df$adjusted) = c( "Adjusted", "Unadjusted")


    radioButtons('adjusted',
                 'Covariate adjustment:',
                 choices = levels(df$adjusted)[levels(df$adjusted) %in% unique(df$adjusted)])
  })
#   
# output$RE <- renderUI({
#     df <- df %>%
#       filter(intervention_variable == input$exposure) %>%
#       filter(outcome_variable == input$outcome) %>%
#       filter(type == input$parameter) %>%
#       filter(agecat == input$age)  %>%
#       filter(RE== input$)
#     
#     if (input$region == 'All'){
#       df <- df %>%
#         filter(pooled == 0 | (pooled == 1 & region == 'Pooled'))
#     } else {
#       df <- df %>%
#         filter(region == input$region)
#     }
#     
#     df = df %>% mutate(adjusted = case_when(
#       adjusted == 1 ~ "Adjusted",
#       adjusted == 0 ~ "Unadjusted")) %>% 
#       drop_na(adjusted) %>% 
#       arrange(adjusted)
#     
#     levels(df$adjusted) = c( "Adjusted", "Unadjusted")
#     
#     
#     radioButtons('adjusted',
#                  'Covariate adjustment:',
#                  choices = levels(df$adjusted)[levels(df$adjusted) %in% unique(df$adjusted)])
#   })
  
  
  
  selectedData <- reactive({
    df <- df[df$outcome_variable == input$outcome, ]
    df <- df[df$intervention_variable == input$exposure, ]
    df <- df[df$type == input$parameter, ]
    df <- df[df$agecat == input$age, ]
    if(input$region!="All"){df <- df[df$region==input$region,]}
    if(input$region=="All"){df <- df[df$pooled==0 | (df$pooled==1 & df$region=="Pooled"),]}
    if(input$adjusted == 'Unadjusted'){df <- df %>% filter(adjusted == 0)}
    if(input$adjusted == 'Adjusted'){df <- df %>% filter(adjusted == 1)}
    if(input$pool_method == 'Random'){df <- df %>% filter(pooled==0 | RE == 1)}
    if(input$pool_method == 'Fixed'){df <- df %>% filter(pooled==0 | RE == 0)}
    #if(input$pool_method=="Random"){df <- df[df$pooled==0 | df$studyid=="Pooled - Random"|df$studyid=="Pooled - Asia - RE"|df$studyid=="Pooled - Afica - RE"|df$studyid=="Pooled - Latin America - RE",]}
    #if(input$pool_method=="Fixed"){df <- df[df$pooled==0 | df$studyid=="Pooled - Fixed"|df$studyid=="Pooled - Asia - FE"|df$studyid=="Pooled - Afica - FE"|df$studyid=="Pooled - Latin America - FE",]}
    df <- df %>% filter(!is.na(estimate))
    df <- df %>% arrange(pooled, region, estimate)
    df$studyid <- factor(df$studyid, levels = unique(df$studyid))
    df
  })
  
  #Subset to data for forest vs. pooled plots
  selectedDataForest <- reactive({
    
    d <- selectedData()
    
    #if (!all(is.na(d$baseline_level))){
    #  d <- d %>% filter(baseline_level!=intervention_level) #drop reference level
    #}
    
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
    df<-selectedDataForest()
    reference_level = as.character(df %>% filter(ci_lower == 1.00 & ci_upper == 1.00) %>% 
                                     select(intervention_level) %>% 
                                     first())
    df  = df %>% filter(!(ci_lower == 1.00 & ci_upper == 1.00))
    
  
    p<-ggplot(df, aes(x=studyid)) +
      geom_point(aes(shape=pooled, y=estimate, fill=region, color=region), size = 4) +
      geom_linerange(aes(ymin=ci_lower, ymax=ci_upper, color=region)) +
      coord_flip() 
    
    if(length(unique(df$intervention_level))>1){
      p<-p+facet_wrap(~intervention_level, ncol=1) +  
            ggtitle(paste0("Forest plot of cohort-specific associations for\n",
                       input$outcome, " outcome and\n", input$age,"\nBaseline Level: ", reference_level))
    } else {
      p = p + ggtitle(paste0("Forest plot of cohort-specific associations for\n",
                             input$outcome, " outcome and\n", input$age))
    }
    if(df$continuous[1]==0){
      p<-p+scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN) + geom_hline(yintercept = 1) 
    }else{
      p<-p+scale_y_continuous(breaks=yticks_cont, labels=scaleFUN)  + geom_hline(yintercept = 0)
    }
    
    p = p +
      #facet_wrap(~intervention_level, ncol=1) +
      labs(x = "Cohort", y = Ylab) +
      geom_vline(xintercept = 1.5, linetype=2) +
      scale_shape_manual(values=c(21, 23)) +
      scale_colour_manual(limits = c("Pooled", "Africa", "Latin America", "South Asia"), 
                           values= tableau11[1:4]) +
      scale_fill_manual(limits = c("Pooled", "Africa", "Latin America", "South Asia"), 
                        values= tableau11[1:4]) +
      scale_size_continuous(range = c(min(df$ci_lower) - 0.05, max(df$ci_upper) + 0.05))+
      theme(plot.title = element_text(hjust = 0.5),
            strip.background = element_blank(),
            legend.position="none",
            strip.text.x = element_text(size=12),
            axis.text.x = element_text(size=12), #angle = 45, hjust = 1),
            text = element_text(size=16)) +
      guides(shape=FALSE)
    
    p
  })
  
  output$pooledPlot <- renderPlot({
    df <- selectedDataPooled()
    if (nrow(df) > 0){
      pooledp <- ggplot(df, aes(x=intervention_level)) +
        geom_point(aes(y=estimate, fill=agecat, color=agecat), size = 4) +
        geom_linerange(aes(ymin=ci_lower, ymax=ci_upper, color=agecat),
                       alpha=0.5, size = 3) +
        labs(x = "Exposure category",
             y = "Relative risk") +
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
      
      if(df$continuous[1]==0){
        pooledp <- pooledp+scale_y_continuous(breaks=yticks2, trans='log10', labels=scaleFUN) + geom_hline(yintercept = 1) 
      }else{
        pooledp <- pooledp+scale_y_continuous(breaks=yticks_cont, labels=scaleFUN)  + geom_hline(yintercept = 0)
      }
    } else {
      pooledp = NULL
    }
    pooledp
  })
  
  output$table <- renderTable({
    selectedData() 
  })
  
  selected_plot = reactive({
    var = spline_variables %>% filter(spline_vars == input$spline_exposure) %>% select(spline_vars_raw) %>% first()
    outcome = tolower(input$spline_outcome)
    exposure = var
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

