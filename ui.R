#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a Iris Plot
ui <- fluidPage(
    
    # Application title
    titlePanel("Iris Dataset"), 
    
    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            #input using radio buttons
            radioButtons("x", "Select X-axis:",                    
                         list("Sepal.Length"='a', "Sepal.Width"='b', "Petal.Length"='c', "Petal.Width"='d')),       
            radioButtons("y", "Select Y-axis:",                    
                         list("Sepal.Length"='e', "Sepal.Width"='f', "Petal.Length"='g', "Petal.Width"='h')
            )
        ),
        
        # Show a plot of the generated distribution
        mainPanel(       
            plotOutput("distPlot")
        )
    )
)