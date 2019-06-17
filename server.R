server <- function(input, output, session) {
  
  output$plot <- renderHighchart({
    h1 <- hist(runif(input$n), plot = FALSE)
    hchart(h1) %>% 
      hc_colors("#283b4f")
  })
  
  
  output$barChart <- renderHighchart({
    pokemon%>%
      count(type_1)%>%
      arrange(n)%>%
      hchart(type = "bar", hcaes(x = type_1, y = n))
  })
  
  
  output$treemap <- renderHighchart({
    pokemon%>%
      count(type_1)%>%
      arrange(n)%>%
      hchart(type = "treemap", hcaes(x = type_1, value = n, color = n))
  })
  
  output$scatterplot <- renderHighchart({
    highchart()%>%
      hc_add_series(pokemon, "scatter", hcaes(x = height, y = weight))
  })
  
  output$tablePokemon <- renderDataTable({
    pokemon %>%
      select(pokemon, attack, defense, hp, speed) %>%
      datatable(
        colnames = c('Pokemon',
                     'Attack',
                     'Defense', 
                     'HP', 
                     'Speed'),
        options = list(
          language = list(url = '//cdn.datatables.net/plug-ins/1.10.11/i18n/Portuguese.json'),
          columnDefs = list(list(className = 'dt-center',
                                 targets = 0:(ncol(.))))
        )
      ) 
  })
}