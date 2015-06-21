#Server.ui

library(shiny)

shinyUI(pageWithSidebar(
    headerPanel('Shiny Assignment'),
    sidebarPanel(

    sliderInput('input_weight','Enter weight of car in lbs/1000 (in other words, how many thousand lbs does the car weigh?)',value=3,step=0.05,min=0,max=5)

    ),
    mainPanel(
	h3('Main Panel'),

	h4('Input - lbs/1000'),
	verbatimTextOutput("in1"),
	h4('Output - Given the weight above, the car should have Miles per Gallon value of:'),
	verbatimTextOutput("mpg")

    )
))
