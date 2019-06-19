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
                  appButton(status = "default")
                ),
                column(
                  width = 2,
                  appButton(status = "info")
                ),
                column(
                  width = 2,
                  appButton(status = "success")
                ),
                column(
                  width = 2,
                  appButton(idButton="danger",
                            label = "Danger",
                            status = "danger",
                            size_lg = FALSE)
                )
                )
              )
            )
          ),
          fluidRow(
            column(
              width = 12,
              box(
                appCircleButton(icon = icon("check")),
                
                appCircleButton(icon = icon("check"),
                                status = "default",
                                size_lg = TRUE),
                
                appCircleButton(icon = icon("check"),
                                status = "info",
                                size_lg = TRUE),
                
                appCircleButton(icon = icon("check"),
                                status = "danger",
                                size_lg = FALSE)
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
                        status = "success"
                  ),
                  alert(message = "Alert message info", 
                        status = "info"
                  ),
                  alert(message = "Alert message warning", 
                        status = "warning"
                  ),
                  alert(message = "Alert message danger", 
                        status = "danger"
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
                    status = "success",
                    animated = FALSE,
                    value = 75
                  ),
                  progressBar(
                    status = "info",
                    animated = TRUE,
                    value = 45
                  ),
                  progressBar(
                    status = "warning",
                    animated = FALSE,
                    value = 63
                  ),
                  progressBar(
                    status = "danger",
                    animated = TRUE,
                    value = 88
                  )
                )
              )
            )
          )
  )