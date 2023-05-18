library(shiny)

# Define UI for application that adds two numbers
ui <- fluidPage(  
  
  # Application title
  titlePanel("Addition of Two Numbers"),
  
  numericInput("num1", "Enter First Number:", 0),
  
  numericInput("num2", "Enter Second Number:", 0),
  
  actionButton("add_button", "Add"),
  
  textOutput("result")
)

server <- function(input, output) {
  
  result <- reactive({
    input$num1 + input$num2
  })
  
  observeEvent(input$add_button, {
    output$result <- renderPrint({
      result()
    })
  })
}

# Run the application 
shinyApp(ui = ui, server = server)
