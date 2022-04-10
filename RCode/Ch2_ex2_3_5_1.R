#Q1
#Which of textOutput() and verbatimTextOutput() should each of the following render functions be paired with?

#a) renderPrint(summary(mtcars))

#b) renderText("Good morning!")

#c) renderPrint(t.test(1:5, 2:6))

#d) renderText(str(lm(mpg ~ wt, data = mtcars)))



library(shiny)

ui <- fluidPage(
  verbatimTextOutput("summaryMtcars"),
  textOutput("goodMorning"),
  verbatimTextOutput("tTest"),
  verbatimTextOutput("lm")
)

server <- function(input, output, session) {
  
  output$summaryMtcars <- renderPrint(summary(mtcars))
  
  output$goodMorning <- renderText("Good morning!")
  
  output$tTest <- renderPrint(t.test(1:5, 2:6))
  
  output$lm <- renderPrint(str(lm(mpg ~ wt, data = mtcars)))
  
}

shinyApp(ui, server)