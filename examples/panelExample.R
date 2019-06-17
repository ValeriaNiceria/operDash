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
            
          ),
          fluidRow(
            column(
              width = 12,
              box(
                boxContent(
                  collapsePanel(
                    collapsePanelItem(
                      title = "Collapse Panel #1",
                      id = "collapsePanel1",
                      content = "Esse é o conteúdo do painel #1"
                    ),
                    collapsePanelItem(
                      title = "Collapse Panel #2",
                      id = "collapsePanel2",
                      content = "Esse é o conteúdo do painel #2"
                    )
                  )
                )
              )
            )
          )
  )