library(shiny)
library(shinyapps)
library(devtools)
library(knitr)


# This application will calculate the number of combinations of people to ride in your new car.
# Enter total people who want to ride in the car (not including the driver).
# Enter the number of passenger seats in the car.  Then, click Submit.
# Note: If a number entered is not an integer, it will be rounded (i.e. 1.5 becomes 2, 1.4 becomes 1)
# Negative signs are ignored.
# It will return the number of possible combinations (where order does not matter) for all the passengers, given the number
# of people who want a ride and the number of passenger seats.

shinyUI(fluidPage(
        
        titlePanel("Calculate combinations of passengers to ride in a car (i.e. the number of rides you have to give to your neighbors)"),

        h4('This application will calculate the number of combinations of passengers to ride in your new car.'),
        h4('Enter total people who want to ride in the car (not including the driver)'),
        h4('Enter the number of passenger seats in the car (do not include the driver seat).  Then, click Submit.'),
        h4('Note: If a number entered is not an integer, it will be rounded (i.e. 1.6 becomes 2, 1.4 becomes 1)'),
        h4('Negative signs are ignored'),
        h4('It will return the number of possible combinations (where order does not matter) for all the passengers, given the number of people who want a ride and the number of passenger seats.'),
        sidebarPanel(
        # create input boxes for the total people who want to ride in the car and the number of passenger seats
        numericInput("totpop", label = h3("Enter total people who want to ride in the car"), value = NA, min=1),
        
        numericInput("numitem", label = h3("Enter the number of passenger seats in the car.  Then, click Submit."), value = NA, min=1),

        submitButton('Submit')

        ),
        mainPanel(

        # Display the values entered for Total People and number of passengers seats in car.
        h4('You entered Total People'),
        verbatimTextOutput("value1"),
        h4('You entered number of passenger seats in car'),
        verbatimTextOutput("value2"),
        h3('The number of combinations of passengers that can ride in the car where order is not important (i.e. The number of rides in your new car you have to give to your neighbors)'),
        verbatimTextOutput("combinations")
)


))