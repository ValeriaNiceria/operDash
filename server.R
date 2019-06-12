server <- function(input, output, session) {
  
  output$plot <- renderPlot({
    hist(runif(input$n))
  })
  
}