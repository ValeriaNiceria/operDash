boxExample <-
  tabItem(tabName = "box",
          fluidRow(
            column(
              width = 4,
              box(
                boxTitle(
                  info = infoLink(position = "right",
                                  message = "Mensagem de info para o usuário"),
                  colorText = "white",
                  background = "#00a7d0",
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
          column(
            width = 8,
            box(
               boxTitle(
                 boxTools(closeLink(),
                          collapseLink(),
                          infoLink(position = "left",
                                   message = "Mensagem de info para o usuário"))
               ),
               boxContent(
                 highchartOutput('plot')
               )
             )
            )
          ),
          fluidRow(
            column(
              width = 12,
HTML('
<pre class="R">
fluidRow(
  column(
    width = 4,
    box(
      boxTitle(
        info = infoLink(position = "right",
                        message = "Mensagem de info para o usuário"),
        colorText = "white",
        background = "#00a7d0",
        boxTools(
                collapseLink(),
                label(label = "testando")
        )
      ),
      boxContent(
        numericInput(
          inputId = "n",
          label = "Number of obs",
          value = 100
        )
      )
    )
  ),
  column(
    width = 8,
    box(
      boxTitle(
        boxTools(
          closeLink(),
          collapseLink(),
          infoLink(position = "left",
                   message = "Mensagem de info para o usuário")
        )
      ),
      boxContent(
        highchartOutput("plot")
      )
    )
  )
)
</pre>
')
              )
            )

  )
