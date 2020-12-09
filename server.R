#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw an Iris plot
server <- function(input, output) {
    #writing server function   
    output$distPlot <- renderPlot({
        #creating Iris Plot 
        if(input$x=='a')
        {       i<-1     }     
        if(input$x=='b')
        {       i<-2     }     
        if(input$x=='c')
        {       i<-3     }     
        if(input$x=='d')
        {       i<-4     }     
        if(input$y=='e')
        {       j<-1     }     
        if(input$y=='f')
        {       j<-2     }     
        if(input$y=='g')
        {       j<-3     }     
        if(input$y=='h')
        {       j<-4     }     
        s    <- iris[, i]     
        k    <- iris[, j]     
        plot(s,k)
    }
    ) 
}
