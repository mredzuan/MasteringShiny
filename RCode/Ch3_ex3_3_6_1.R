#Q1
#Fix the simple errors found in each of the three server functions below. First try spotting the problem just by reading the code; then run the code to make sure you’ve fixed it.

library(shiny)

ui <- fluidPage(
  textInput("name", "What's your name?"),
  textOutput("greeting")
)

server1 <- function(input, output, session) {

  #wrong syntax input$greeting should be output$greeting
  #name missing "input$"
  output$greeting <- renderText(paste0("Hello ", input$name))
}



server2 <- function(input, output, server) {
  
  #greeting should be on reactive function
  greeting <- reactive(paste0("Hello ", input$name))
  output$greeting <- renderText(greeting())
}




server3 <- function(input, output, server) {
  
  #typo on greeting and output not wrap into renderText function
  output$greeting <-renderText(paste0("Hello ", input$name))
}

shinyApp(ui, server3)