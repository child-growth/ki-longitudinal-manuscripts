
rm(list = ls())
source(paste0(here::here(), "/0-config.R"))



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





# #------------------------------------------------
# # Build Shiny App
# #------------------------------------------------
# 
# # Define UI for application that draws a forest plot
# ui <- navbarPage("HBGDki Results Dashboard",
#             
#                  tabPanel("Descriptive epidemiology",
                          # fluidRow(
                          #   column(4,
                          #          selectInput("Outcome",
                          #                      "Outcome:",
                          #                      choices = unique(df$outcome))
                          #   )#,
                            # column(4,
                            #        selectInput("Measure",
                            #                    "Measure:",
                            #                    choices = unique(df$measure))
#                             # ),
#                             # column(4,
#                             #        selectInput("Region",
#                             #                    "Region:",
#                             #                    choices = unique(df$location))
#                             # ),
#                             # column(4,
#                             #        selectInput("OutcomeType",
#                             #                    "Outcome Type:",
#                             #                    c("Not Severe", "Severe"))
#                             # ),
#                             # column(4,
#                             #        selectInput("Analysis",
#                             #                    "Analysis:",
#                             #                    choices = unique(df$analysis))
#                             # ),
#                             # column(4,
#                             #        selectInput("Population",
#                             #                    "Population:",
#                             #                    choices = unique(df$population))
#                             # ),
#                             # column(4,
#                             #        selectInput("Age",
#                             #                    "Age range:",
#                             #                    choices = unique(df$age))
#                             # )
#                           ),
#                           
#                           
#                           mainPanel(
#                             width = 16,
#                             br(),
#                             br(),
#                             br(),
#                             # Create a new row for the table.
#                             fluidRow(
#                               DT::dataTableOutput("tables_desc")
#                               # tableOutput("table_desc")
#                               # uiOutput('tables_desc')
#                             ),
#                             br(),
#                             br(),
#                             br(),
#                             # Create a new row for the table.
#                             fluidRow(
#                               DT::dataTableOutput("tables_desc")
#                             )
#                             
#                           ))
#  
# )
# 
# 
# 
# # Define server logic required to draw the forest plot
# server <- function(input, output, session) {
#   
#   # # Adaptive input selections based on user input - avoids blank plots
#   # output$region <- renderUI({
#   #   df <- df[df$outcome == input$Outcome, ]
#   #   
#   #   df <- df %>%
#   #     drop_na(severe, measure, population, location, age, analysis)
#   #   df <- droplevels(df)
#   #   selectInput('Region',
#   #               'Region:',
#   #               unique(df$location))
#   #   
#   # })
#   # output$severe <- renderUI({
#   #   df <- df %>%
#   #     filter(outcome == input$Outcome) %>%
#   #     filter(location == input$Region)
#   #   
#   #   df <- df %>%
#   #     drop_na(severe, measure, population, age, analysis)
#   #   df <- droplevels(df)
#   #   selectInput('OutcomeType',
#   #               'Outcome Type:',
#   #               choices = c('Not Severe', 'Severe'))
#   # })
  # output$measure <- renderUI({
  #   df <- df %>%
  #     filter(outcome == input$Outcome) %>%
  #     filter(location == input$Region)
  #   if(input$OutcomeType == 'Severe'){df <- df %>% filter(severe == 1)}
  #   if(input$OutcomeType == 'Not Severe'){df <- df %>% filter(severe == 0)}
  #   df <- df %>%
  #     drop_na(measure, population, age, analysis)
  #   df <- droplevels(df)
  #   selectInput('Measure',
  #               'Measure:',
  #               unique(df$measure))
  # })
#   # output$population <- renderUI({
#   #   df <- df %>%
#   #     filter(outcome == input$Outcome) %>%
#   #     filter(location == input$Region) %>%
#   #     filter(measure == input$Measure)
#   #   if(input$OutcomeType == 'Severe'){df <- df %>% filter(severe == 1)}
#   #   if(input$OutcomeType == 'Not Severe'){df <- df %>% filter(severe == 0)}
#   #   df <- df %>%
#   #     drop_na(population, age, analysis)
#   #   df <- droplevels(df)
#   #   selectInput('Population',
#   #               'Population:',
#   #               unique(df$population))
#   # })
#   # output$age <- renderUI({
#   #   df <- df %>%
#   #     filter(outcome == input$Outcome) %>%
#   #     filter(location == input$Region) %>%
#   #     filter(measure == input$Measure) %>%
#   #     filter(population == input$Population)
#   #   if(input$OutcomeType == 'Severe'){df <- df %>% filter(severe == 1)}
#   #   if(input$OutcomeType == 'Not Severe'){df <- df %>% filter(severe == 0)}
#   #   
#   #   df <- df %>%
#   #     drop_na(age, analysis)
#   #   df <- droplevels(df)
#   #   selectInput('Age',
#   #               'Age Range:',
#   #               unique(df$age))
#   # })
#   # output$analysis <- renderUI({
#   #   df <- df %>%
#   #     filter(outcome == input$Outcome) %>%
#   #     filter(location == input$Region) %>%
#   #     filter(measure == input$Measure) %>%
#   #     filter(population == input$Population) %>%
#   #     filter(age == input$Age)
#   #   if(input$OutcomeType == 'Severe'){df <- df %>% filter(severe == 1)}
#   #   if(input$OutcomeType == 'Not Severe'){df <- df %>% filter(severe == 0)}
#   #   
#   #   df <- df %>%
#   #     drop_na(analysis)
#   #   df <- droplevels(df)
#   #   selectInput('Analysis',
#   #               'Analysis:',
#   #               unique(df$analysis))
#   # })
#   # 
#   
#   
#   selectedData <- reactive({
#     df <- df[df$outcome == input$Outcome, ]
#     # if(input$OutcomeType == 'Severe'){df <- df %>% filter(severe == 1)}
#     # if(input$OutcomeType == 'Not Severe'){df <- df %>% filter(severe == 0)}
#     # d <- df[df$age == input$Age, ]
#     # d <- d[d$population == input$Population, ]
#     # d <- d[d$measure == input$Measure, ]
#     # d <- d[d$analysis == input$Analysis, ]
#     # d <- d[d$location == input$Region, ]
#     # d
#     df
#   })
#   
# 
#   
#   
#   output$tables_desc <- renderDataTable({selectedData()})
# 
# 
# }
# 
# 
# 
# # Run the application 
# shinyApp(ui = ui, server = server)
# 


# table example
shinyApp(
  ui = fluidPage(
    fluidRow(
      column(2,
             selectInput("Outcome",
                         "Outcome:",
                         choices = unique(df$outcome))),
      column(2,
             uiOutput("measure")),
      column(2,
             tableOutput('table')
      )
    )
  ),
  server = function(input, output) {
    
    output$measure <- renderUI({
      df <- df %>%
        filter(outcome == input$Outcome) 
      df <- df %>%
        drop_na(measure)
      df <- droplevels(df)
      selectInput('Measure',
                  'Measure:',
                  unique(df$measure))
    })
    
    output$table <- renderTable(df)
  }
)
