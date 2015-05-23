shinyUI(pageWithSidebar(
  headerPanel("Jedi Temperature Converter"),
  sidebarPanel(    
    numericInput('temperatureInput', 'Temperature', 0, min = -1000, max = 1000, step = 10),
    selectInput("from", label = "From:", 
                choices = list("Celcius", "Fahrenheit",
                               "Kelvin","Rankine"), selected = "Celcius"),
    selectInput("to", label = "To:", 
                choices = list("Celcius", "Fahrenheit",
                               "Kelvin","Rankine"), selected = "Fahrenheit"),
    helpText("Conversion between some galactic temperature scales, this app allows you. ",
             "http://en.wikipedia.org/wiki/Conversion_of_units_of_temperature ",
             "Type or select a galactic temperature, then from the dropdown boxes select ",
             "your base scale and which scale you want to convert to!",
             "Completed, your task will be, success you will have achieved.",
             "You now too are are a Galactic Temperature Jedi, Young Padawan.")
    
  ),
  mainPanel(
    h3('Results'),
    h4('You entered'),
    verbatimTextOutput("userInput"),
    h4('Result'),
    verbatimTextOutput("result")
  )
))