#Q2
#Carefully read the documentation for sliderInput() to figure out how to create a date slider, as shown below.


library(shiny)

library(shiny)

ui <- fluidPage(
  sliderInput("slideId", 
              label = "When should we deviver?",
              min = as.Date("2020-09-16"),
              max = as.Date("2020-09-23"),
              value = as.Date("2020-09-17"),
              step = 2)
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)