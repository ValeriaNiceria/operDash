panelExample <-
  tabItem(tabName = "panel",
          fluidRow(
            column(
              width = 4,
              panel(title = "Título")
            ),
            column(
              width = 4,
              panel(title = "Título",
                    body = "conteúdo",
                    type = "primary",
                    footer = "Rodapé")
            ),
            column(
              width = 4,
              panel(body = "conteúdo",
                    type = "success")
            )
            
          ),
          fluidRow(
            column(
              width = 4,
              panel(title = "Título",
                    body = "conteúdo",
                    type = "info")
            ),
            column(
              width = 4,
              panel(title = "Título",
                    body = "conteúdo",
                    type = "warning")
            ),
            column(
              width = 4,
              panel(title = "Título",
                    body = "conteúdo",
                    type = "danger")
            )
            
          )
  )