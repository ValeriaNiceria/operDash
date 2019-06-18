carouselExample <- 
  tabItem(tabName = "carousel",
          fluidRow(
            column(
              width = 6,
              box(
                carouselDash(
                    carouselItem(
                        img_src = "img/shiny.png",
                        active = TRUE),
                    carouselItem(
                       img_src = "img/user.jpeg")
                )
              )
            )
          )
        )