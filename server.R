server <- function(input, output, session) {
  
  output$plot <- renderHighchart({
    h1 <- hist(runif(input$n), plot = FALSE)
    hchart(h1) %>% 
      hc_colors("#283b4f")
  })
  
}