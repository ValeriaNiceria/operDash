boxExample <- 
  tabItem(tabName = "box",
          fluidRow(column(width = 4,
                          box(
                            boxTitle(
                              color = "#00a7d0",
                              boxTools(collapseLink(),
                                       label(label = "testando"))
                            ),
                            boxContent(
                              numericInput(inputId ='n', 
                                           label = 'Number of obs', 
                                           value = 100)
                            )
                          )
          ),
          
          column(width = 8,
                 box(
                   boxTitle(
                     boxTools(closeLink(),
                              collapseLink())
                   ),
                   boxContent(
                     highchartOutput('plot')
                   )
                 )
          )
          )
          
          # fluidRow(
          #   column(
          #     width = 12,
          #     box(
          #       boxContent(
          #         # tabsetPanel(
          #         #   tabPanel("barChart", highchartOutput("barChart"))
          #         # )
          #       )
          #     )
          #   )
          # )
  )