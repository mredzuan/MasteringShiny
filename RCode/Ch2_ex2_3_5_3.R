#Q3
#Update the options in the call to renderDataTable() below so that the data is displayed, but all other controls are suppress (i.e. remove the search, ordering, and filtering commands). You’ll need to read ?renderDataTable and review the options at https://datatables.net/reference/option/.


library(shiny)

ui <- fluidPage(
  dataTableOutput("table")
)

server <- function(input, output, session) {
  output$table <- renderDataTable(mtcars, options = list(ordering = FALSE, searching = FALSE))
}

shinyApp(ui, server)