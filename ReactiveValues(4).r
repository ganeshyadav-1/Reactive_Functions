library(shiny)

ui <- fluidPage(
  numericInput(inputId = "num1", label = "Enter number 1:", value = 0),
  numericInput(inputId = "num2", label = "Enter number 2:", value = 0),
  verbatimTextOutput(outputId = "result")
)

server <- function(input, output) {
  
  values <- reactiveValues(
    product = 0
  )
  
  observeEvent(input$num1, {
    values$product <- input$num1 * input$num2
  })
  
  observeEvent(input$num2, {
    values$product <- input$num1 * input$num2
  })
  
  output$result <- renderPrint({
    isolate(values$product)
  })
  
}

shinyApp(ui = ui, server = server)
