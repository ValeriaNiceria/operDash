server <- function(input, output, session) {

  output$plot <- renderHighchart({
    h1 <- hist(runif(input$n), plot = FALSE)
    hchart(h1) %>%
      hc_colors(list("#00a7d0", "#283b4f"))
  })


  output$distPlot <- renderPlot({

    x    <- faithful$waiting
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    hist(x, breaks = bins, col = "#75AADB", border = "white",
         xlab = "Waiting time to next eruption (in mins)",
         main = "Histogram of waiting times")

  })

  # output$barChart <- renderHighchart({
  #   pokemon%>%
  #     count(type_1)%>%
  #     arrange(n)%>%
  #     hchart(type = "bar", hcaes(x = type_1, y = n))
  # })

}
