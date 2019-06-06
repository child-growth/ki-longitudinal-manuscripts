
rm(list = ls())
#source(paste0(here::here(), "/0-config.R"))
library(shiny)
require(here)
require(stringr)
require(dplyr)
require(tidyr)

# define paths
fig_path = "figures/"
figdata_path = "figure-data/"
#------------------------------------------------
# Data Loading
#------------------------------------------------

# Load data





#------------------------------------------------
# Inputs for Shiny App
#------------------------------------------------

# #Plot parameters
# yticks <- c( 0.50, 1.00, 2.00, 4.00, 8.00)
# tableau10 <- c("#1F77B4","#FF7F0E","#2CA02C","#D62728",
#                "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
# tableau11 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
#                "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
# Ylab <- "Relative Risk"
# scaleFUN <- function(x) sprintf("%.2f", x)
# theme_set(theme_bw())


#------------------------------------------------
# Load all files
#------------------------------------------------
load_fig_files <- function(file_path){
  data <- list.files(path=fig_path, recursive = T)
  #fig-OUTCOME-CUTOFF-MEASURE-POPULATION-LOCATION-AGE-ANALYSIS.pdf
  varnames <- c("fig", "outcome", "cutoff", "measure", "population", "location",
                "age", "analysis")
  
  
  #create data.frame of variables contained in plot title
  df <- as.data.frame(str_split(data,"-", simplify=T), plotnames=data)
  print(file_path)
  colnames(df) <- varnames
  df$plotnames <- data
  
  #clean up
  df$fig <- gsub(".*fig", "fig", df$fig)
  
  df$file_extension <- sub('.*\\.', '', df$analysis)
  df <- df %>%
    filter(file_extension %in% c('png', 'RDS'))
  df$analysis <- gsub(".png","", df$analysis)
  df$analysis <- gsub(".RDS","", df$analysis)
  
  df$severe <- ifelse(df$cutoff==3,"Severe","Not severe")
  df <- df %>% select(-cutoff)
  
  return(df)
}

transform_variables <- function(df){
  transformations = read.csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vREmg4PurW2AKddhf1Mtj9dAyaeCeYPUpHurNUe3r0gVVeeLrkS3aU-4XlYhZ96iWsBpr-R9sDT8Alp/pub?gid=0&single=true&output=csv")
  
  df <- df %>%
    dplyr::mutate(outcome = df %>% left_join(transformations, by = c("outcome" = "variable")) %>% 
                    replace_na(list(variable.type = "outcome")) %>% 
                    filter(variable.type == "outcome") %>% 
                    pull("description")
                  
    ) %>%
    
    dplyr::mutate(measure = df %>% left_join(transformations, by = c("measure" = "variable")) %>% 
                    replace_na(list(variable.type = "measure")) %>% 
                    filter(variable.type == "measure") %>% 
                    pull("description")
    ) %>%
    
    dplyr::mutate(population = df %>% left_join(transformations, by = c("population" = "variable")) %>% 
                    replace_na(list(variable.type = "population")) %>% 
                    filter(variable.type == "population") %>% 
                    pull("description")
    ) %>%
    dplyr::mutate(age = df %>% left_join(transformations, by = c("age" = "variable")) %>% 
                    replace_na(list(variable.type = "age")) %>% 
                    filter(variable.type == "age") %>% 
                    pull("description")
    ) %>%
    dplyr::mutate(location = df %>% left_join(transformations, by = c("location" = "variable")) %>% 
                    replace_na(list(variable.type = "location")) %>% 
                    filter(variable.type == "location") %>% 
                    pull("description")
    ) %>%
    dplyr::mutate(analysis = df %>% left_join(transformations, by = c("analysis" = "variable")) %>% 
                    replace_na(list(variable.type = "analysis")) %>% 
                    filter(variable.type == "analysis") %>% 
                    pull("description")
    )
  
  return(df)
  
}



#load in names of pngs in figures file
# change to figures directory (remove /mock_shiny)
df <- load_fig_files(file_path=fig_path)
df <- transform_variables(df)
table_df <- load_fig_files(file_path = figdata_path)
table_df <- transform_variables(table_df)
df <- rbind(df, table_df)





#------------------------------------------------
# Build Shiny App
#------------------------------------------------


# Define UI for application that draws a forest plot
ui <- navbarPage("HBGDki Results Dashboard",
                 # tabPanel("Exposure analysis",
                 #          titlePanel("Associations between child, parental, and household characteristics and wasting and stunting outcomes"),
                 #          
                 #          sidebarLayout(
                 #            sidebarPanel(
                 #              # Variables with dropdown selections for user input
                 #              selectInput('exposure',
                 #                          'Exposure Variable:',
                 #                          choices = unique(df$intervention_variable)),
                 #              uiOutput('region'),
                 #              uiOutput('outcome'),
                 #              uiOutput('age'),
                 #              uiOutput('adjusted'),
                 #              uiOutput('pool_method')
                 #            ),
                 #            
                 #            # Show a plot of the selected exposure-outcome pair
                 #            mainPanel(
                 #              plotOutput("forestPlot", height=600),
                 #              br(),
                 #              br(),
                 #              plotOutput("pooledPlot", height=600),
                 #              br(),
                 #              br(),
                 #              br(),
                 #              # Create a new row for the table.
                 #              fluidRow(
                 #                #DT::dataTableOutput("table")
                 #                tableOutput("table")
                 #              )
                 #            )
                 #            
                 #          )),
                 #---> New blank tab
                 tabPanel("Introduction",
                          fluidRow(h3("Descriptive epidemiology of child stunting and wasting"), 
                          "This site contains supporting figures for analyses of child stunting and wasting using the ki child growth databse. In the Descriptive Epidemiology tab, the dropdown menus can be used to select which figure to display."),
                          h4("1. Outcome"), 
                          "Type of outcome measured. This includes continuous measures of child growth (length-for-age Z-score and weight-for-length Z-score) as well as binary indicators of child growth (stunting, wasting, co-occurence).",
                          h4("2. Measure"), 
                          "Type of outcome measured. This includes continuous measures of child growth (length-for-age Z-score and weight-for-length Z-score) as well as binary indicators of child growth (stunting, wasting, co-occurence).",
                          h4("3. Region"), 
                          "Geographic region (Africa, Latin America, South Asia)",
                          h4("4. Outcome type"), 
                          "Severe stunting or wasting (Z-score <-3) or not severe stunting or wasting (Z-score <-2)",
                          h4("5. Population"), 
                          "Combination of populations (overall, regional, or cohort-specific)",
                          h4("6. Age range"), 
                          "3-month and 6-month age-stratified analyses",
                          h4("7. Analysis"), 
                          "The primary analysis results are displayed as well as various sensitivity analyses."
                          ),
                 tabPanel("Descriptive epidemiology",
                          fluidRow(
                            h4("Note: this site is still under construction", align="center",style = "color:blue"),
                            column(4, selectInput("Outcome",
                                                  "1. Outcome:",
                                                  choices = unique(df$outcome))),
                            column(4, uiOutput('Measure')),
                            column(4, uiOutput('Region')),
                            column(4, uiOutput('OutcomeType')),
                            column(4, uiOutput('Population')),
                            column(4, uiOutput('Age')),
                            column(4, uiOutput('Analysis'))
                          ),
                          
                          br(),
                          br(),
                          
                          mainPanel(
                            width = 16,
                            align = "center",
                            imageOutput("image")))#, height=600)#,
                 #br(),
                 #br(),
                 #br(),
                 # Create a new row for the table.
                 #fluidRow(
                 #DT::dataTableOutput("table_desc")
                 # tableOutput("table_desc")
                 #  uiOutput('tables_desc')
                 #),
                 #br(),
                 #br(),
                 #br(),
                 # Create a new row for the table.
                 #fluidRow(
                 #DT::dataTableOutput("table_desc")
                 #  tableOutput("table_desc")
                 #)
                 
                 #        ))
                 # tabPanel("Comparison",
                 #          fluidRow(
                 #            column(2, 
                 #                selectInput("OutcomeC",
                 #                            "Outcome:",
                 #                            choices = unique(desc$outcome)),
                 #                selectInput("RegionC",
                 #                            "Region:",
                 #                            choices = unique(desc$region)),
                 #                selectInput("PooledC",
                 #                            "Pooled:",
                 #                            #choices = unique(desc$age_range))
                 #                            c("Pooled", "Cohort-stratified", "Region-stratified")),
                 #                selectInput("colorC",
                 #                            "Color:",
                 #                            #choices = unique(desc$age_range))
                 #                            tableau11),
                 #                selectInput("YlabelC",
                 #                            "Y-axis label:",
                 #                            choices = c("","Prevalence", 
                 #                                        "Incidence rate per 1,000 days person-time", 
                 #                                        "Cumulative incidence (%)", 
                 #                                        "Mean", "Recovery (%)"))
                 #              ),
                 #            column(4,
                 #                   plotOutput("plot1", height=400)
                 #                   ),
                 #            column(2,
                 #                   selectInput('exposureC',
                 #                               'Exposure Variable:',
                 #                               choices = unique(df$intervention_variable)),
                 #                   uiOutput('regionC'),
                 #                   uiOutput('outcomeC'),
                 #                   uiOutput('ageC'),
                 #                   uiOutput('adjustedC'),
                 #                   uiOutput('pool_methodC')
                 #                   ),
                 #            column(4,
                 #                   plotOutput("forestPlotComparison", height=500),
                 #                   br(),
                 #                   br(),
                 #                   plotOutput("pooledPlotComparison", height=400)
                 #            )
                 #          ))
)


# Define server logic required to draw the forest plot
server <- function(input, output, session) {
  
  # Adaptive input selections based on user input - avoids blank plots
  
  output$Measure <- renderUI({
    d <- df %>%
      filter(outcome == input$Outcome) %>%
      drop_na(measure, location, severe, population, age, analysis)
    
    d <- droplevels(d)
    
    selectInput('Measure',
                '2. Measure:',
                unique(d$measure))
  })
  
  output$Region <- renderUI({
    d <- df %>%
      filter(outcome == input$Outcome) %>%
      filter(measure == input$Measure) %>%
      drop_na(location, severe, population, age, analysis)
    
    d <- droplevels(d)
    
    selectInput('Region',
                '3. Region:',
                unique(d$location))
  })
  
  output$OutcomeType <- renderUI({
    d <- df %>%
      filter(outcome == input$Outcome) %>%
      filter(measure == input$Measure) %>%
      filter(location == input$Region) %>%
      drop_na(severe, population, age, analysis)
    
    d <- droplevels(d)
    selectInput('OutcomeType',
                '4. Outcome Type:',
                choices = unique(d$severe))
  })
  
  output$Population <- renderUI({
    d <- df %>%
      filter(outcome == input$Outcome) %>%
      filter(location == input$Region) %>%
      filter(measure == input$Measure) %>%
      filter(severe == input$OutcomeType) %>%
      drop_na(population, age, analysis)
    
    d <- droplevels(d)
    selectInput('Population',
                '5. Population:',
                unique(d$population))
  })
  output$Age <- renderUI({
    d <- df %>%
      filter(outcome == input$Outcome) %>%
      filter(location == input$Region) %>%
      filter(measure == input$Measure) %>%
      filter(population == input$Population) %>%
      filter(severe == input$OutcomeType) %>%
      drop_na(age, analysis)
    
    d <- droplevels(d)
    
    selectInput('Age',
                '6. Age Range:',
                unique(d$age))
  })
  
  output$Analysis <- renderUI({
    d <- df %>%
      filter(outcome == input$Outcome) %>%
      filter(location == input$Region) %>%
      filter(measure == input$Measure) %>%
      filter(population == input$Population) %>%
      filter(severe == input$OutcomeType) %>%
      drop_na(analysis)
    
    d <- droplevels(d)
    
    selectInput('Analysis',
                '7. Analysis:',
                choices = unique(d$analysis),
                selected = 'primary')
  })
  
  
  
  selectedData <- reactive({
    d = df %>% filter(outcome == input$Outcome) %>%
      filter(measure == input$Measure) %>%
      filter(population == input$Population) %>%
      filter(location == input$Region) %>%
      filter(age == input$Age) %>%
      filter(analysis == input$Analysis) %>%
      filter(severe == input$OutcomeType)
    
    d
  })
  
  # Image of first plot
  output$image <- renderImage({
    d <- selectedData()
    
    d_img = d %>% select(plotnames)
    
    #d_img <- d %>% filter(fig == 'fig')
    file_path <- paste0(fig_path, d_img[1, 1])
    
    # Return a list containing the filename
    list(src = file_path,
         contentType = 'image/png',
         #height = 600,
         width = 1200,
         alt = "Image is loading")
    
  }, deleteFile = FALSE)
  
  
  # If RDS contains multiple dataframes, process them as HTML output for Shiny
  # Else, use renderTable for an individual dataframe
  
  multi_tables <- function(table_dfs){
    tables <- list()
    for (x in names(table_dfs)){
      tables_data <- table_dfs[[x]]
      tables[[as.character(x)]] <- 
        print(xtable(tables_data, caption = paste('Variable: ', x)),
              type = 'html', include.rownames = FALSE,
              html.table.attributes = 'class="data table table-bordered table-condensed"',
              caption.placement = 'top')
    }
    return(lapply(tables, paste))
  }
  
  output$tables_desc <- renderUI({
    d <- selectedData() 
    d_tbl <- d %>% filter(fig == 'figdata')
    file_path <- paste0(figdata_path, d_tbl$plotnames)
    table_data <- readRDS(file_path)
    if (class(table_data) == 'list'){
      output <- unlist(multi_tables(table_data))
      return(div(HTML(output), class = 'shiny-html-output'))
    } else {
      return('')
    }
  })
  
  output$table_desc <- renderTable({
    d <- selectedData()
    d_tbl <- d %>% filter(fig == 'figdata')
    file_path <- paste0(figdata_path, d_tbl$plotnames)
    table_data <- readRDS(file_path)
    if (class(table_data) == 'list'){
      return('')
    } else {
      return(table_data)
    }
  })
}





# Run the application 
shinyApp(ui = ui, server = server)

