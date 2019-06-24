carouselElement <- 
tabItem(tabName = "carouselElement",
        fluidRow(
          column(
            width = 6,
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
            
          ),
          column(
          width = 6,
HTML('
<pre class="R">
fluidRow(
  column(
    width = 6,
    box(
      boxContent(
        carouselBlock(
          carouselItem(
            src = "https://www.w3schools.com/bootstrap/chicago.jpg", 
            title = "Título",
            subTitle = "Testando"
          ),
          carouselItem(
            src = "https://www.w3schools.com/bootstrap/la.jpg"
          )
        )
      )
    )
  )
)
</pre>
')
            )
      )
)
