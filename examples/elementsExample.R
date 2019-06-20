elementsExample <- 
  tabItem(tabName = "elements",
          
          # appButton()
          
          fluidRow(
            column(
              width = 12,
              h3(class="font-bold", "appButton()"),
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
          
          
          
          # circleButton()
          
          fluidRow(
            column(
              width = 12,
              h3(class="font-bold", "circleButton()"),
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
          
          
          
          # jumbotron()
          
          fluidRow(
            column(
              width = 12,
              h3(class="font-bold", "jumbotron()"),
              box(
                jumbotron(tags$h1("Jumbotron"))
              )
            )
          ),
          
          
          
          # alert()
          
          fluidRow(
            column(
              width = 12,
              h3(class="font-bold", "alert()"),
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
          
          
          
          # progressBar
          
          fluidRow(
            column(
              width = 12,
              h3(class="font-bold", "progressBar()"),
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
          ),
          
          
          
          # carousel
          fluidRow(
            column(
              width = 6,
              h3(class="font-bold", "carouselBlock( carouselItem() )"),
              box(
                boxContent(
                  carouselBlock(
                    carouselItem(src = "https://www.w3schools.com/bootstrap/chicago.jpg", 
                                 title = "Título",
                                 subTitle = "Testando"),
                    carouselItem(src = "https://www.w3schools.com/bootstrap/la.jpg")
                  )
                )
              )
              
            )
          )
          
          
  )