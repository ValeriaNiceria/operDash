server <- function(input, output, session) {

  output$plot <- renderPlot({
    h1 <- hist(runif(input$n), plot = FALSE)
    plot(h1, col = "#00a7d0")
  })

}
