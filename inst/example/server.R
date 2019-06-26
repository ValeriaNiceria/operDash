server <- function(input, output, session) {
  
  output$plot <- renderHighchart({
    h1 <- hist(runif(input$n), plot = FALSE)
    hchart(h1) %>% 
      hc_colors(list("#00a7d0", "#283b4f"))
  })

  
  # output$barChart <- renderHighchart({
  #   pokemon%>%
  #     count(type_1)%>%
  #     arrange(n)%>%
  #     hchart(type = "bar", hcaes(x = type_1, y = n))
  # })
  
}