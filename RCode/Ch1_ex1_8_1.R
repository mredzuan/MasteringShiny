library(shiny)


ui <- fluidPage(
  
  textInput("name", "What is your name?"),
  numericInput("age", "How old are you?", value = NA),
  
  textOutput("greeting"),
  tableOutput("mortgage"),
  plotOutput("histogram")
)


server <- function(input, output, session){
  
  output$greeting <- renderText({
    paste("Hello ", input$name)
  })
  
  
  output$histogram <- renderPlot({
    hist(rnorm(1000))
  }, res = 96)
  
}



shinyApp(ui, server)