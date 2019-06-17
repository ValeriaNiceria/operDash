elementsExample <- 
  tabItem(tabName = "elements",
          fluidRow(
            column(
              width = 12,
              box(
                fluidRow(column(
                  width = 2,
                  appButton()
                ),
                column(
                  width = 2,
                  appButton(type = "default")
                ),
                column(
                  width = 2,
                  appButton(type = "info")
                ),
                column(
                  width = 2,
                  appButton(type = "success")
                ),
                column(
                  width = 2,
                  appButton(idButton="danger",
                            label = "Danger",
                            type = "danger",
                            size = "sm")
                )
                )
              )
            )
          ),
          fluidRow(
            column(
              width = 12,
              box(
                jumbotron(tags$h1("Jumbotron"))
              )
            )
          ),
          fluidRow(
            column(
              width = 12,
              box(
                boxContent(
                  alert(message = "Alert message success", 
                        type = "success"
                  ),
                  alert(message = "Alert message info", 
                        type = "info"
                  ),
                  alert(message = "Alert message warning", 
                        type = "warning"
                  ),
                  alert(message = "Alert message danger", 
                        type = "danger"
                  )
                )
              )
            )
          ),
          fluidRow(
            column(
              width = 12,
              box(
                boxContent(
                  progressBar(
                    type = "success",
                    animated = TRUE,
                    value = 75
                  ),
                  progressBar(
                    type = "info",
                    animated = FALSE,
                    value = 45
                  ),
                  progressBar(
                    type = "warning",
                    animated = FALSE,
                    value = 63
                  ),
                  progressBar(
                    type = "danger",
                    animated = TRUE,
                    value = 88
                  )
                )
              )
            )
          )
  )