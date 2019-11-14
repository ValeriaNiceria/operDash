uiElement <- tabItem(
  tabName = "element_ui",
  title = "UI Elements",

  # Carousel - Exemplo ----------------
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
  ),

  # Alert - Exemplo --------------
  fluidRow(
    box(
      width = 6,
      title = "Alert",
      icon_box = icon("warning"),
      alert(
        status = "danger",
        icon = icon("ban"),
        title = "Mensagem de alerta!",
        message = "Essa é uma mensagem de alerta.",
        close = TRUE
      ),
      alert(
        status = "info",
        icon = icon("info"),
        title = "Mensagem de alerta!",
        message = "Essa é uma mensagem de alerta."
      ),
      alert(
        status = "warning",
        icon = icon("warning"),
        title = "Mensagem de alerta!",
        message = "Essa é uma mensagem de alerta."
      ),
      alert(
        status = "success",
        icon = icon("check"),
        title = "Mensagem de alerta!",
        message = "Essa é uma mensagem de alerta.",
        close = T
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
      title = "Alert",
      icon_box = icon("warning"),
      alert(
        status = "danger",
        icon = icon("ban"),
        title = "Mensagem de alerta!",
        message = "Essa é uma mensagem de alerta.",
        close = TRUE
      ),
      alert(
        status = "info",
        icon = icon("info"),
        title = "Mensagem de alerta!",
        message = "Essa é uma mensagem de alerta."
      ),
      alert(
        status = "warning",
        icon = icon("warning"),
        title = "Mensagem de alerta!",
        message = "Essa é uma mensagem de alerta."
      ),
      alert(
        status = "success",
        icon = icon("check"),
        title = "Mensagem de alerta!",
        message = "Essa é uma mensagem de alerta.",
        close = T
      )
    )
  )
</code></pre>
    ')
    )
    # Code - End
  )
)
