#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application for MILES per GALLON 
shinyUI(fluidPage(
  
  # Application title
  titlePanel("CARS-Miles Per Gallon"),
  
  # Sidebar with controls to select the variable(cylinders,transmission and gears) to plot against mpg
 
  sidebarLayout(
    sidebarPanel(
            selectInput("variable", "Choose Variables:",
                        list("Cylinders" = "cyl", 
                             "Transmission" = "am", 
                             "Gears" = "gear"))
           
    ),
    
    # Show the caption and plot of the caption variable against mpg
    mainPanel(
            h3(textOutput("caption")),
            
            plotOutput("mpgPlot")
    )
  )
))
