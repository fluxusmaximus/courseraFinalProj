library(shiny)
library(ggplot2)

games <- read.csv("gamesList.csv")

shinyServer(
        function(input,output){  
                
                output$total <- renderPrint({
                        
                        min <- input$price[1]
                        max <- input$price[2]
                        
                        nrow(games[games$Price < max & games$Price >min,])
                        
                        
                        
                        }) 
                     
                output$newPlot <- renderPlot({
                        
                        ggplot(games, aes(x = Price)) +ggtitle("Games in Price Range") + geom_histogram(binwidth=2) + xlim(input$price)
                        
                        
                        
                })
                 
        }
)