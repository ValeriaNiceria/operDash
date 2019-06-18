carouselExample <- 
  tabItem(tabName = "carousel",
          fluidRow(
            column(
              width = 12,
              box(
                carouselDash(title = "CarouselDash Example",
                             carouselItem(
                               title = "Slide 1",
                               body = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap."
                             ),
                             carouselItem(
                               title = "Slide 2",
                               body = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap."
                             )
                )
              )
            )
          )
        )