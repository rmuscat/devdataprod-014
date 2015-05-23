shinyServer(
  function(input, output) {
    output$userInput <- renderPrint({paste(input$temperatureInput, "From:", input$from,"To:",input$to)})
    output$result <- renderPrint(convertTemperature(input$temperatureInput,input$from,input$to))
  }
)

convertTemperature <- function(t,from,to) { 

   # normalise t  o celcius
  base <- switch(from,
    Celcius = t,
    Kelvin = t - 273.15,
    Fahrenheit = (t - 32) * 5/9,
    Rankine = (t - 491.67) * 5/9
  )
  res <- switch(to,
    Celcius = base,
    Kelvin = base + 273.15,
    Fahrenheit = (base * 9/5) + 32,
    Rankine = (base + 273.15) * 9/5
  )
  # print(paste(t,from,to,base,res))
  res
}
