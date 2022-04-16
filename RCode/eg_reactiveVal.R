
library(shiny)


message <- c("Message 1", "Message 2", "Message 3")

ui <- fluidPage(
  actionButton("minus", "-1"),
  actionButton("plus", "+1"),
  br(),
  textOutput("value")
)

# The comments below show the equivalent logic using reactiveValues()
server <- function(input, output, session) {
  value <- reactiveVal(1)       # rv <- reactiveValues(value = 0)
  
  observeEvent(input$minus, {
    newValue <- value() - 1     # newValue <- rv$value - 1
    value(newValue)             # rv$value <- newValue
  })
  
  observeEvent(input$plus, {
    newValue <- value() + 1     # newValue <- rv$value + 1
    value(newValue)             # rv$value <- newValue
  })
  
  output$value <- renderText({
    value()                     # rv$value
  })
  
  
  observe(print(message[value()]))
}

shinyApp(ui, server)

