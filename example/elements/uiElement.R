uiElement <- tabItem(
  tabName = "element_ui",
  title = "UI Elements",

  fluidRow(
    box(
      width = 6,
      title = "Carousel",
      carousel(
        carouselItem(src = "img/slide1.png"),
        carouselItem(src = "img/slide2.png", title = "operDash - Slide")
      )
    ),
    # Code - Start
    column(
      width = 6,
      HTML('
<pre><code class="R">
  fluidRow(
    box(
      width = 6,
      title = "Carousel",
      carousel(
        carouselItem(src = "img/slide1.png"),
        carouselItem(src = "img/slide2.png", title = "operDash - Slide")
      )
    )
  )
</code></pre>
    ')
    )
    # Code - End
  )
)
