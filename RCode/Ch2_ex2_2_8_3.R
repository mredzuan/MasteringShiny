#Q3
#Create a slider input to select values between 0 and 100 where the interval between each selectable value on the slider is 5. Then, add animation to the input widget so when the user presses play the input widget scrolls through the range automatically.


library(shiny)


ui <- fluidPage(
  
  sliderInput("slideId1", label = "Select value between 0 - 100", min = 0, max=100, step = 5, value = 5,
              animate = TRUE),
  
  sliderInput("slideId2", label = "Select value between 0 - 100", min = 0, max=100000, step = 5, value = 5,
              animate = animationOptions(interval = 1, loop = TRUE))
  
  
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)