library(shiny)
library(shinyapps)
library(devtools)
library(knitr)

# this function takes as input the total population (totpop) and the 
# number of seats available in the car (numitem).
# the output is the number of possible combinations where order is not
# important (i.e. This is the number of rides you have to give your
# neighbors in your new car)
numcombo <- function(totpop,numitem) choose(round(abs(totpop)),round(abs(numitem)))


shinyServer(function(input, output) {
        
        # output the number of people entered who want a ride
        output$value1 <- renderPrint(round(abs({ input$totpop })))
        # output the number of passenger seats entered
        output$value2 <- renderPrint(round(abs({ input$numitem })))

        # Calculate and output the number of car rides you have to give.  
        # This is the number of combinations where order is not important.
        output$combinations <- renderPrint(numcombo(input$totpop,input$numitem))

})