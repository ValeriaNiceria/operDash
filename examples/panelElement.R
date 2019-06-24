panelElement <-
  tabItem(tabName = "panelElement",
          fluidRow(
            column(
              width = 4,
              panel(title = "Título")
            ),
            column(
              width = 4,
              panel(title = "Título",
                    body = "conteúdo",
                    status = "primary",
                    footer = "Rodapé")
            ),
            column(
              width = 4,
              panel(body = "conteúdo",
                    status = "success")
            )
            
          ),
          fluidRow(
            column(
              width = 4,
              panel(title = "Título",
                    body = "conteúdo",
                    status = "info")
            ),
            column(
              width = 4,
              panel(title = "Título",
                    body = "conteúdo",
                    status = "warning")
            ),
            column(
              width = 4,
              panel(title = "Título",
                    body = "conteúdo",
                    status = "danger")
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
    panel(
      title = "Título"
    )
  ),
  column(
    width = 4,
    panel(
      title = "Título",
      body = "conteúdo",
      status = "primary",
      footer = "Rodapé"
    )
  ),
  column(
    width = 4,
    panel(
      body = "conteúdo",
      status = "success"
    )
  )

),
fluidRow(
    column(
    width = 4,
    panel(
      title = "Título",
      body = "conteúdo",
      status = "info"
    )
  ),
  column(
    width = 4,
    panel(
      title = "Título",
      body = "conteúdo",
      status = "warning"
    )
  ),
  column(
    width = 4,
    panel(
      title = "Título",
      body = "conteúdo",
      status = "danger"
    )
  )
)
</pre>
')
              )
            )
  )