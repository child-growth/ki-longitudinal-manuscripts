
rm(list = ls())
source(paste0(here::here(), "/0-config.R"))


#------------------------------------------------
# Data Loading
#------------------------------------------------

# Load data


#load in names of pngs in figures file
# change to figures directory (remove /mock_shiny)
nm <- list.files(path=paste0(here::here(),"/figures/mock_shiny"), recursive = T)
#Set names for variables from png filenames
#fig-OUTCOME-CUTOFF-MEASURE-POPULATION-LOCATION-AGE-ANALYSIS.pdf
varnames <- c("fig","outcome","sev","meas","pop","loc","age","analysis")


#create data.frame of variables contained in plot title
img_df <- as.data.frame(str_split(nm,"-", simplify=T), plotnames=nm)
colnames(img_df) <- varnames
img_df$plotnames <- nm

#clean up
img_df$analysis <- gsub(".png","", img_df$analysis)
img_df$sev <- ifelse(img_df$sev==3,1,0)

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
                                               choices = c("Stunting","Wasting"))
                            ),
                            column(4,
                                   selectInput("Measure",
                                               "Measure:",
                                               choices = unique(img_df$meas))
                            ),
                            column(4,
                                   selectInput("Region",
                                               "Region:",
                                               choices = unique(img_df$loc))
                            ),
                            column(4,
                                   selectInput("Severe",
                                               "Severe:",
                                               c("No", "Yes"))
                            ),
                            column(4,
                                   selectInput("Analysis",
                                               "Analysis:",
                                               choices = unique(img_df$analysis))
                            ),
                            column(4,
                                   selectInput("Population",
                                               "Population:",
                                               choices = unique(img_df$pop))
                            ),
                            column(4,
                                   selectInput("Age",
                                               "Age range:",
                                               choices = unique(img_df$age))
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
                              tableOutput("table_desc")
                            ),
                            br(),
                            br(),
                            br(),
                            # Create a new row for the table.
                            fluidRow(
                              #DT::dataTableOutput("table_desc")
                              tableOutput("tablecode")
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
    if(input$outcome == 'Wasting'){df <- df %>% filter(outcome == 'wast')}
    if(input$outcome == 'Stunting'){df <- df %>% filter(outcome == 'stunt')}
    df <- df %>%
      drop_na(sev, meas, pop, loc, age, analysis)
    
    selectInput('Region',
                'Region:',
                unique(df$loc))

  })
  output$sev <- renderUI({
    if(input$outcome == 'Wasting'){df <- df %>% filter(outcome == 'wast')}
    if(input$outcome == 'Stunting'){df <- df %>% filter(outcome == 'stunt')}
    df <- df %>%
      drop_na(sev, meas, pop, loc, age, analysis)
    
    selectInput('Severe',
                'Severe:',
                choices = c('No', 'Yes'))
  })
  output$meas <- renderUI({
    if(input$outcome == 'Wasting'){df <- df %>% filter(outcome == 'wast')}
    if(input$outcome == 'Stunting'){df <- df %>% filter(outcome == 'stunt')}
    df <- df %>%
      drop_na(sev, meas, pop, loc, age, analysis)
    
    selectInput('Measure',
                'Measure:',
                unique(df$meas))
  })
  output$pop <- renderUI({
    if(input$outcome == 'Wasting'){df <- df %>% filter(outcome == 'wast')}
    if(input$outcome == 'Stunting'){df <- df %>% filter(outcome == 'stunt')}
    df <- df %>%
      drop_na(sev, meas, pop, loc, age, analysis)

    selectInput('Population',
                'Population:',
                unique(df$pop))
  })
  output$loc <- renderUI({
    if(input$outcome == 'Wasting'){df <- df %>% filter(outcome == 'wast')}
    if(input$outcome == 'Stunting'){df <- df %>% filter(outcome == 'stunt')}
    df <- df %>%
      drop_na(sev, meas, pop, loc, age, analysis)
    
    selectInput('Location',
                'Location:',
                unique(df$loc))
  })
  output$age <- renderUI({
    if(input$outcome == 'Wasting'){df <- df %>% filter(outcome == 'wast')}
    if(input$outcome == 'Stunting'){df <- df %>% filter(outcome == 'stunt')}
    df <- df %>%
      drop_na(sev, meas, pop, loc, age, analysis)
    
    selectInput('Age',
                'Age Range:',
                unique(df$age))
  })
  output$analysis <- renderUI({
    if(input$outcome == 'Wasting'){df <- df %>% filter(outcome == 'wast')}
    if(input$outcome == 'Stunting'){df <- df %>% filter(outcome == 'stunt')}
    df <- df %>%
      drop_na(sev, meas, pop, loc, age, analysis)

    selectInput('Analysis',
                'Analysis:',
                unique(df$analysis))
  })
  

  
  selectedData <- reactive({
    if(input$Outcome == 'Wasting'){df <- df %>% filter(outcome == 'wast')}
    if(input$Outcome == 'Stunting'){df <- df %>% filter(outcome == 'stunt')}
    if(input$Severe == 'Yes'){df <- df %>% filter(sev == 1)}
    if(input$Severe == 'No'){df <- df %>% filter(sev == 0)}
    d <- df[df$age == input$Age, ]
    d <- d[d$pop == input$Population, ]
    d <- d[d$meas == input$Measure, ]
    d <- d[d$analysis == input$Analysis, ]
    d <- d[d$loc == input$Region, ]
    d
  })
  
  # Image of first plot
  output$image <- renderImage({
    d <- selectedData()
    print(d)
    file_path <- paste0(here::here(), '/figures/mock_shiny/', d$plotnames)
    # Return a list containing the filename
    list(src = file_path,
           contentType = 'image/png',
           width = 400,
           height = 300,
           alt = "This is alternate text")
  }, deleteFile = FALSE)
  
  
  #Subset to data for forest vs. pooled plots
  selectedDataForest <- reactive({
    
    d <- selectedData()
    
    d <- d %>% filter(RR.CI1!=RR.CI2) #drop reference level
    d <- droplevels(d)
    d$pooled <- factor(d$pooled)
    d
  })
  
  selectedDataPooled <- reactive({
    d <- selectedData()
    d <- d %>% filter(pooled==1)
  })
  
  
  

  
  selectedDescData <- reactive({
    desc <- desc[desc$outcome == input$Outcome, ]
    desc <- desc[desc$measure == input$Measure, ]
    desc <- desc[desc$birth == input$Birth, ]
    desc <- desc[desc$severe == input$Severe, ]
    desc <- desc[desc$age_range == input$Agerange, ]
    
    if(input$Pooled=="Pooled"){
      desc <- desc[desc$region == input$Region, ]
      desc <- desc[desc$cohort == "pooled", ]
      #desc_title <- paste0( input$Outcome," in ", input$Region)
    }else{
      if(input$Pooled=="Region-stratified"){
        desc <- desc[desc$cohort == "pooled" & !is.na(desc$region), ] 
        desc <- desc[desc$region != "Overall", ]
        #desc_title <- paste0( input$Outcome,"- Region stratified ")
      }else{
        desc <- desc[desc$cohort != "pooled", ]  
        if( input$Region != "Overall"){
          desc <- desc[desc$region == input$Region, ]
          #desc_title <- paste0( input$Outcome," in ", input$Region)
        }
      }
    }
    desc <- droplevels(desc)
    desc <- desc[!is.na(desc$agecat),]
    desc
  })
  
  
  
  ######### Comparison Plots Selected Data
  selectedDataComparison <- reactive({
    df <- df[df$outcome_variable == input$outcomeC, ]
    if(input$adjustedC == 'Unadjusted'){df <- df %>% filter(unadjusted == 1)}
    if(input$adjustedC == 'Adjusted'){df <- df %>% filter(unadjusted == 0)}
    if(input$regionC!="All"){df <- df[df$Region==input$region,]}
    if(input$regionC=="All"){df <- df[df$pooled==0 | (df$pooled==1 & df$Region=="Pooled"),]}
    if(input$pool_methodC=="Random"){df <- df[df$pooled==0 | df$studyid=="Pooled - Random"|df$studyid=="Pooled - Asia - RE"|df$studyid=="Pooled - Afica - RE"|df$studyid=="Pooled - Latin America - RE",]}
    if(input$pool_methodC=="Fixed"){df <- df[df$pooled==0 | df$studyid=="Pooled - Fixed"|df$studyid=="Pooled - Asia - FE"|df$studyid=="Pooled - Afica - FE"|df$studyid=="Pooled - Latin America - FE",]}
    df <- df[df$intervention_variable == input$exposureC, ]
    d <- df[df$agecat == input$ageC, ]
    d
  })
  
  #Subset to data for forest vs. pooled plots
  selectedDataForestComparison <- reactive({
    
    d <- selectedDataComparison()
    
    d <- d %>% filter(RR.CI1!=RR.CI2) #drop reference level
    d <- droplevels(d)
    d$pooled <- factor(d$pooled)
    d
  })
  
  selectedDataPooledComparison <- reactive({
    d <- selectedDataComparison()
    d <- d %>% filter(pooled==1)
  })
  
   
  selectedDescDataComparison <- reactive({
    desc <- desc[desc$outcome == input$OutcomeC, ]
    if(input$Pooled=="Pooled"){
      desc <- desc[desc$region == input$RegionC, ]
      desc <- desc[desc$cohort == "pooled", ]
      #desc_title <- paste0( input$Outcome," in ", input$Region)
    }else{
      if(input$PooledC=="Region-stratified"){
        desc <- desc[desc$cohort == "pooled", ] 
        desc <- desc[desc$region != "Overall", ]
        #desc_title <- paste0( input$Outcome,"- Region stratified ")
      }else{
        desc <- desc[desc$cohort != "pooled", ]  
        if( input$RegionC != "Overall"){
          desc <- desc[desc$region == input$RegionC, ]
          #desc_title <- paste0( input$Outcome," in ", input$Region)
        }
      }
    }
    desc
    #desc <- desc[df$age_range == input$AgeRange, ]
  })
  
   output$forestPlot <- renderPlot({
      ggplot(selectedDataForest(), aes(x=studyid)) +
        geom_point(aes(shape=pooled, y=RR, fill=Region, color=Region), size = 4) +
        geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Region)) +
        #coord_flip(ylim=range(0.5,8)) +
       coord_flip() +
       facet_wrap(~intervention_level, ncol=1) +
        labs(x = "Cohort", y = Ylab) +
        geom_hline(yintercept = 1) +
        geom_vline(xintercept = 1.5, linetype=2) +
        #geom_vline(xintercept = 1.5) +
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
   })
   
   output$pooledPlot <- renderPlot({
       ggplot(selectedDataPooled(), aes(x=intervention_level)) +
       #ggplot(selectedDataForest(), aes(x=studyid)) +
       geom_point(aes(y=RR, fill=agecat, color=agecat), size = 4) +
       geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=agecat),
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
   
   output$forestPlotComparison <- renderPlot({
     ggplot(selectedDataForestComparison(), aes(x=studyid)) +
       geom_point(aes(shape=pooled, y=RR, fill=Region, color=Region), size = 4) +
       geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Region)) +
       #coord_flip(ylim=range(0.5,8)) +
       coord_flip() +
       facet_wrap(~intervention_level, ncol=1) +
       labs(x = "Cohort", y = Ylab) +
       geom_hline(yintercept = 1) +
       geom_vline(xintercept = 1.5, linetype=2) +
       #geom_vline(xintercept = 1.5) +
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
             text = element_text(size=12, face = 'bold')) +
       ggtitle(paste0("Forest plot of cohort-specific associations for\n",
                      input$outcomeC, " outcome and\n", input$ageC)) +guides(shape=FALSE)
   })
   
   output$pooledPlotComparison <- renderPlot({
     ggplot(selectedDataPooledComparison(), aes(x=intervention_level)) +
       #ggplot(selectedDataForest(), aes(x=studyid)) +
       geom_point(aes(y=RR, fill=agecat, color=agecat), size = 4) +
       geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=agecat),
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
             text = element_text(size=12, face = 'bold')) +
       ggtitle(paste0("Pooled associations for\n", input$outcomeC, 
                      " outcome and\n", input$ageC))
   })
   
   # output$table <- DT::renderDataTable(DT::datatable({
   #   selectedData() 
   # }))
   output$table <- renderTable({
     selectedData() 
   })
   

   
   # Plot descriptive data
   descPlot <- function(){
     
     if(input$Pooled=="Pooled"){
       desc_title <- paste0( input$Measure," in ", input$Region)
     }else{
       if(input$Pooled=="Region-stratified"){
         desc_title <- paste0( input$Measure,"- Region stratified ")
       }else{
         desc <- desc[desc$cohort != "pooled", ]  
         if( input$Pooled == "Cohort-stratified"){
           desc_title <- paste0( input$Measure," in ", input$Region)
         }
       }
     }
     
     
     p <- ggplot(selectedDescData(),aes(y=est,x=agecat)) +
       geom_point(aes(fill=measure, color=measure), size = 4) +
       geom_linerange(aes(ymin=lb, ymax=ub, color=measure),  alpha=0.5, size = 3) +
       #scale_color_manual(values=rep(tableau10,3), drop=TRUE, limits = levels(shiny_desc_data$outcome)) +
       scale_color_manual(values=input$color, drop=TRUE, limits = levels(shiny_desc_data$measure)) +
       xlab("Age category")+
       ylab(input$Ylabel) +
       # annotate("text",x=prev.res$agecat,y=15.2,label=prev.res$nmeas.f,size=3)+
       # annotate("text",x=prev.res$agecat,y=16,label=prev.res$nstudy.f,size=3)+
       # annotate("text",label=prev.res$ptest.f,x=prev.res$agecat,
       #          y=prev.res$est,hjust=-2,size=3)+
       #ggtitle(desc_title) +
       theme(strip.background = element_blank(),
             legend.position="none",
             plot.title = element_text(size = 30, face = "bold"),
             strip.text = element_text(size=16),
             axis.title = element_text(size=18),
             axis.text.y = element_text(size=16),
             axis.text.x = element_text(size=16, angle = 45, hjust = 1))
     if(input$Pooled=="Cohort-stratified"){
       p <- p + facet_wrap(~cohort) 
     }
     if(input$Pooled=="Region-stratified"){
       p <- p + facet_wrap(~region) 
     }
     
     p
    }
   
   output$plot <- renderPlot({
     descPlot()
   })
   
   descPlotComparison <- function(){
     
     if(input$PooledC=="Pooled"){
       desc_title <- paste0( input$OutcomeC," in ", input$RegionC)
     }else{
       if(input$PooledC=="Region-stratified"){
         desc_title <- paste0( input$OutcomeC,"- Region stratified ")
       }else{
         desc <- desc[desc$cohort != "pooled", ]  
         if( input$PooledC == "Cohort-stratified"){
           desc_title <- paste0( input$OutcomeC," in ", input$RegionC)
         }
       }
     }
     
     
     p <- ggplot(selectedDescDataComparison(),aes(y=est,x=agecat)) +
       geom_point(aes(fill=outcome, color=outcome), size = 4) +
       geom_linerange(aes(ymin=lb, ymax=ub, color=outcome),  alpha=0.5, size = 3) +
       #scale_color_manual(values=rep(tableau10,3), drop=TRUE, limits = levels(shiny_desc_data$outcome)) +
       scale_color_manual(values=input$colorC, drop=TRUE, limits = levels(shiny_desc_data$outcome)) +
       xlab("Age category")+
       ylab(input$YlabelC) +
       ggtitle(desc_title) +
       theme(strip.background = element_blank(),
             legend.position="none",
             plot.title = element_text(size = 18, face = "bold"),
             strip.text = element_text(size=16),
             axis.title = element_text(size=18),
             axis.text.y = element_text(size=16),
             axis.text.x = element_text(size=16, angle = 45, hjust = 1))
     if(input$PooledC=="Cohort-stratified"){
       p <- p + facet_wrap(~cohort) 
     }
     if(input$PooledC=="Region-stratified"){
       p <- p + facet_wrap(~region) 
     }
     
     p
   }
   
   output$plot1 <- renderPlot({
     descPlotComparison()
   })
   
   # downloadHandler contains 2 arguments as functions, namely filename, content
   output$down.png <- downloadHandler(
     filename =  function() {
       #"Shinyplot.png"
       #paste(input$dataset, '.png', sep='')
       paste('Shinyplot', '.png', sep='')
      
     },
     # content is a function with argument file. content writes the plot to the device
     content = function(file) {
       #   png(filename=file) # open the png device
       # descPlot()
       # dev.off()  # turn the device off
       device <- function(..., width, height) grDevices::png(..., width = 12, height = 8, res = 300, units = "in")
       ggsave(file, plot = descPlot(), device = device)
     } 
   )
   #callModule(plotDownload, "plot", output$plot)
   
   
   #output$table_desc <- DT::renderDataTable(DT::datatable({
   output$table_desc <- renderTable({
       selectedDescData()})
   #}, digits=2))
   

   
}



# Run the application 
shinyApp(ui = ui, server = server)

