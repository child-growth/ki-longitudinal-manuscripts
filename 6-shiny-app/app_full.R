
rm(list = ls())
#source(paste0(here::here(), "/0-config.R"))
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
  
  df$severe <- ifelse(df$cutoff==3,1,0)
  df <- df %>% select(-cutoff)
  
  return(df)
}



transform_variables <- function(df){
  transformations = read.csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vREmg4PurW2AKddhf1Mtj9dAyaeCeYPUpHurNUe3r0gVVeeLrkS3aU-4XlYhZ96iWsBpr-R9sDT8Alp/pub?gid=0&single=true&output=csv")
  
  df <- df %>%
    dplyr::mutate(outcome =
                    transformations %>% 
                    filter(variable.type == "outcome") %>% 
                    filter(variable == outcome) %>% 
                    select(description) %>%
                    first()
    ) %>%
    dplyr::mutate(measure = transformations %>% 
                    filter(variable.type == "measure") %>% 
                    filter(variable == measure) %>% 
                    select(description) %>%
                    first()
    ) %>%
    dplyr::mutate(population = transformations %>% 
                    filter(variable.type == "population") %>% 
                    filter(variable == population) %>% 
                    select(description) %>%
                    first()
    ) %>%
    dplyr::mutate(age = transformations %>% 
                    filter(variable.type == "age") %>% 
                    filter(variable == age) %>%
                    select(description) %>%
                    first()
    ) %>%
    dplyr::mutate(location = transformations %>% 
                    filter(variable.type == "location") %>% 
                    filter(variable == location) %>% 
                    select(description) %>%
                    first()
    ) %>%
    dplyr::mutate(analysis = transformations %>% 
                    filter(variable.type == "analysis") %>% 
                    filter(variable == analysis) %>%
                    select(description) %>%
                    first()
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
                            column(4, uiOutput('Analysis')),
                            column(4, uiOutput('Age'))
                          ),
                          
                          
                          mainPanel(
                            width = 16,
                            imageOutput("image", height=600),
                            br(),
                            br(),
                            br(),
                            # Create a new row for the table.
                            fluidRow(
                              #DT::dataTableOutput("table_desc")
                              # tableOutput("table_desc")
                              uiOutput('tables_desc')
                            ),
                            br(),
                            br(),
                            br(),
                            # Create a new row for the table.
                            fluidRow(
                              #DT::dataTableOutput("table_desc")
                              tableOutput("table_desc")
                            )
                            
                          ))
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
    df <- df %>%
      filter(outcome == input$Outcome) 

    df <- df %>%
      drop_na(measure, location, severe, population, age, analysis)
    df <- droplevels(df)
    selectInput('Measure',
                '2. Measure:',
                unique(df$measure))
  })
  
  output$Region <- renderUI({
    df <- df[df$outcome == input$Outcome, ]
    
    df <- df %>%
      filter(outcome == input$Outcome) %>%
      filter(measure == input$Measure) %>%
      drop_na(severe, population, location, age, analysis)
    df <- droplevels(df)
    selectInput('Region',
                '3. Region:',
                unique(df$location))

  })
  output$OutcomeType <- renderUI({
    df <- df %>%
      filter(outcome == input$Outcome) %>%
      filter(measure == input$Measure) %>%
      filter(location == input$Region)
    
    df <- df %>%
      drop_na(severe, population, age, analysis)
    df <- droplevels(df)
    selectInput('OutcomeType',
                '4. Outcome Type:',
                choices = c('Not Severe', 'Severe'))
  })
  
  output$Population <- renderUI({
    df <- df %>%
      filter(outcome == input$Outcome) %>%
      filter(location == input$Region) %>%
      filter(measure == input$Measure)
    
    if(input$OutcomeType == 'Severe'){df <- df %>% filter(severe == 1)}
    if(input$OutcomeType == 'Not Severe'){df <- df %>% filter(severe == 0)}
    df <- df %>%
      drop_na(population, age, analysis)
    df <- droplevels(df)
    selectInput('Population',
                '5. Population:',
                unique(df$population))
  })
  output$Age <- renderUI({
    df <- df %>%
      filter(outcome == input$Outcome) %>%
      filter(location == input$Region) %>%
      filter(measure == input$Measure) %>%
      filter(population == input$Population)
    if(input$OutcomeType == 'Severe'){df <- df %>% filter(severe == 1)}
    if(input$OutcomeType == 'Not Severe'){df <- df %>% filter(severe == 0)}

    df <- df %>%
      drop_na(age, analysis)
    df <- droplevels(df)
    selectInput('Age',
                '6. Age Range:',
                unique(df$age))
  })
  output$Analysis <- renderUI({
    df <- df %>%
      filter(outcome == input$Outcome) %>%
      filter(location == input$Region) %>%
      filter(measure == input$Measure) %>%
      filter(population == input$Population) %>%
      filter(age == input$Age)
    if(input$OutcomeType == 'Severe'){df <- df %>% filter(severe == 1)}
    if(input$OutcomeType == 'Not Severe'){df <- df %>% filter(severe == 0)}

    df <- df %>%
      drop_na(analysis)
    df <- droplevels(df)
    selectInput('Analysis',
                '7. Analysis:',
                choices = unique(df$analysis),
                selected = 'primary')
  })
  

  
  selectedData <- reactive({
    df <- df[df$outcome == input$Outcome, ]
    if(input$OutcomeType == 'Severe'){df <- df %>% filter(severe == 1)}
    if(input$OutcomeType == 'Not Severe'){df <- df %>% filter(severe == 0)}
    d <- df[df$age == input$Age, ]
    d <- d[d$population == input$Population, ]
    d <- d[d$measure == input$Measure, ]
    d <- d[d$analysis == input$Analysis, ]
    d <- d[d$location == input$Region, ]
    d
  })
  
  # Image of first plot
  output$image <- renderImage({
    d <- selectedData()
    d_img <- d %>% filter(fig == 'fig')
    file_path <- paste0(fig_path, d_img$plotnames)
    # Return a list containing the filename
    list(src = file_path,
           contentType = 'image/png',
           height = 600,
           # width = 800,
           alt = "This is alternate text")
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

