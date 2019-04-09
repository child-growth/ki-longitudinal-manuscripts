
rm(list = ls())
source(paste0(here::here(), "/0-config.R"))


#------------------------------------------------
# Data Loading
#------------------------------------------------

# Load data





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


#------------------------------------------------
# Load all files
#------------------------------------------------
load_fig_files <- function(file_path){
  data <- list.files(path=file_path, recursive = T)
  #fig-OUTCOME-CUTOFF-MEASURE-POPULATION-LOCATION-AGE-ANALYSIS.pdf
  varnames <- c("fig", "outcome", "cutoff", "measure", "population", "location",
                "age", "analysis")
  
  
  #create data.frame of variables contained in plot title
  df <- as.data.frame(str_split(data,"-", simplify=T), plotnames=data)
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
  df <- df %>%
    dplyr::mutate(outcome = case_when(
      outcome == "stunt" ~ "stunting",
      outcome == "wast" ~ "wasting",
      outcome == "laz" ~ "LAZ",
      outcome == "LAZ" ~ "LAZ",
      outcome == "whz" ~ "WHZ",
      outcome == "WHZ" ~ "WHZ",
      outcome == "stunt_laz" ~ "stunting and laz",
      TRUE ~ as.character(outcome)
      )
    ) %>%
    dplyr::mutate(measure = case_when(
      measure == "prev" ~ "prevalence",
      measure == "inc" ~ "incidence",
      measure == "cuminc" ~ "cumulative incidence",
      measure == "ir" ~ "incidence rate",
      measure == "mean" ~ "mean",
      measure == "vel" ~ "growth velocity",
      measure == "laz_vel" ~ "LAZ velocity",
      measure == "length_vel" ~ "length velocity",
      measure == "heatmap" ~ "heatmap",
      measure == "rec_dist" ~ "distribution after laz >= -2",
      measure == "rec_laz" ~ "mean after LAZ rose above -2",
      measure == "rec_prev" ~ "prevalence after LAZ rose above -2",
      measure == "quant" ~ "quantile",
      measure == "map" ~ "map",
      measure == "flow" ~ "change in stunting status",
      TRUE ~ as.character(measure)
    )) %>%
    dplyr::mutate(population = case_when(
      population == "overall" ~ "overall",
      population == "overall_region" ~ "overall and region-stratified",
      population == "region" ~ "region-stratified",
      population == "cohort" ~ "cohort-stratified",
      TRUE ~ as.character(population)
    )) %>%
    dplyr::mutate(age = case_when(
      age == "allage" ~ "All ages",
      TRUE ~ as.character(age)
    )) %>%
    dplyr::mutate(location = case_when(
      location == "" ~ "",
      location == "asia" ~ "South Asia",
      location == "eur" ~ "Europe",
      location == "latamer" ~ "Latin America",
      location == "africa" ~ "Africa",
      TRUE ~ as.character(location)
    )) %>%
    dplyr::mutate(analysis = case_when(
      analysis == "primary" ~ "primary",
      analysis == "month24" ~ "monthly cohorts measured each month from 0 to 24",
      analysis == "monthly" ~ "monthly cohorts",
      analysis == "exc_male_eff" ~ "exclude excluding COHORTS Guatemala and Content",
      TRUE ~ as.character(analysis)
    ))
  
  return(df)
  
}

#load in names of pngs in figures file
# change to figures directory (remove /mock_shiny)
df <- load_fig_files(file_path=paste0(here::here(),"/figures/"))
df <- transform_variables(df)
table_df <- load_fig_files(file_path = paste0(here::here(), '/results/figure-data/'))
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
                            column(4,
                                   selectInput("Outcome",
                                               "Outcome:",
                                               choices = unique(df$outcome))
                            ),
                            column(4,
                                   selectInput("Measure",
                                               "Measure:",
                                               choices = unique(df$measure))
                            ),
                            column(4,
                                   selectInput("Region",
                                               "Region:",
                                               choices = unique(df$location))
                            ),
                            column(4,
                                   selectInput("OutcomeType",
                                               "Outcome Type:",
                                               c("Not Severe", "Severe"))
                            ),
                            column(4,
                                   selectInput("Analysis",
                                               "Analysis:",
                                               choices = unique(df$analysis))
                            ),
                            column(4,
                                   selectInput("Population",
                                               "Population:",
                                               choices = unique(df$population))
                            ),
                            column(4,
                                   selectInput("Age",
                                               "Age range:",
                                               choices = unique(df$age))
                            )
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
  output$region <- renderUI({
    df <- df[df$outcome == input$Outcome, ]
    
    df <- df %>%
      drop_na(severe, measure, population, location, age, analysis)
    df <- droplevels(df)
    selectInput('Region',
                'Region:',
                unique(df$location))

  })
  output$severe <- renderUI({
    df <- df %>%
      filter(outcome == input$Outcome) %>%
      filter(location == input$Region)
    
    df <- df %>%
      drop_na(severe, measure, population, age, analysis)
    df <- droplevels(df)
    selectInput('OutcomeType',
                'Outcome Type:',
                choices = c('Not Severe', 'Severe'))
  })
  output$measure <- renderUI({
    df <- df %>%
      filter(outcome == input$Outcome) %>%
      filter(location == input$Region) 
    if(input$OutcomeType == 'Severe'){df <- df %>% filter(severe == 1)}
    if(input$OutcomeType == 'Not Severe'){df <- df %>% filter(severe == 0)}
    df <- df %>%
      drop_na(measure, population, age, analysis)
    df <- droplevels(df)
    selectInput('Measure',
                'Measure:',
                unique(df$measure))
  })
  output$population <- renderUI({
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
                'Population:',
                unique(df$population))
  })
  output$age <- renderUI({
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
                'Age Range:',
                unique(df$age))
  })
  output$analysis <- renderUI({
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
                'Analysis:',
                unique(df$analysis))
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
    file_path <- paste0(here::here(), '/figures/', d_img$plotnames)
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
     file_path <- paste0(here::here(), '/results/figure-data/', d_tbl$plotnames)
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
    file_path <- paste0(here::here(), '/results/figure-data/', d_tbl$plotnames)
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

