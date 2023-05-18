# library(shiny)
# 
# ui <- fluidPage(
#   numericInput(inputId = "num1", label = "Enter number 1:", value = 0),
#   numericInput(inputId = "num2", label = "Enter number 2:", value = 0),
#   verbatimTextOutput(outputId = "result")
# )
# 
# server <- function(input, output) {
#   
#   sum <- reactive({
#     input$num1 + input$num2
#   })
#   
#   output$result <- renderPrint({
#     sum()
#   })
#   
# }
# 
# shinyApp(ui = ui, server = server)
# 
# 


library(shinydashboard)

ui <- fluidPage(
    numericInput(inputId = "num1", label = "Enter number 1:", value = 0),
     numericInput(inputId = "num2", label = "Enter number 2:", value = 0),
     verbatimTextOutput(outputId = "result")
  
)


server <- function(input,output){(
  sum <- reactive(
    input$num1 + input$num2
  )
  
)
  
  output$result<- renderPrint({
           sum()
    })
  
   
}

shinyApp(ui,server)