library(shiny)
shinyUI(pageWithSidebar(
    headerPanel('Developing Data Products Project'),
    sidebarPanel(
        h3('How to'),
        p('Enter gross horsepower, number of cylinders, and weight of car.The predicted MPG is on the right.'),
        h3('Enter predictors of MPG below.'),
        numericInput('hp', 'Gross horsepower:', 140, min = 50, max = 330, step = 10), # sample input
        radioButtons('cyl', 'Number of cylinders:', c('4' = 4, '6' = 6, '8' = 8), selected = '4'), # radio button example
        numericInput('wt', 'Weight (lbs):', 3200, min = 1500, max = 5500, step = 100)
    ),
    mainPanel(
        h6('Course Project by William Rowell'),
        h3('Predicted MPG'):
        h4('Your info'),
        verbatimTextOutput("inputValues"),
        h4('Prediction result;'),
        verbatimTextOutput("prediction"),
        h4('MPG relative to data set'),
        plotOutput('plots'),
        h3('Method'),
        p('Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391–411.')
    )
))
