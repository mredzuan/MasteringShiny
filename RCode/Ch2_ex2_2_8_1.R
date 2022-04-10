#Q1
#When space is at a premium, it’s useful to label text boxes using a placeholder that appears inside the text entry area. How do you call textInput() to generate the UI below?


library(shiny)

ui <- fluidPage(
  textInput("textId", label = "", placeholder = "Your name")
)



server <- function(input, output){
  
}


shinyApp(ui, server)