#Q4
#Alternatively, read up on reactable, and convert the above app to use it instead.



library(shiny)
library(reactable)

ui <- fluidPage(
  reactableOutput("table")
)

server <- function(input, output, session) {
  output$table <- renderReactable({
    reactable(mtcars)
  })
}

shinyApp(ui, server)