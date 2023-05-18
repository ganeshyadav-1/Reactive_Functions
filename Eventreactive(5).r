ui <- fluidPage(
  numericInput("num1", "Enter a number", value = 0),
  numericInput("num2", "Enter a number", value = 0),
  actionButton("add_button", "Add"),
  verbatimTextOutput("result")
)

server <- function(input, output) {
  # create a reactive expression that multiplies x by 2
  sum_value <- eventReactive(input$add_button, {
    input$num1 + input$num2
  })
  
  # output the result
  output$result <- renderPrint({ 
    sum_value()
  })
}

shinyApp(ui, server)
