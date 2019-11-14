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
      title = "Alerts",
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
      title = "Alerts",
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
  ),

  # Callout - Exemplo ----------------
  fluidRow(
    box(
      width = 6,
      title = "Callouts",
      icon_box = icon("bullhorn"),
      callout(
        status = "danger",
        title = "Título da mensagem",
        message = "Esse é um exemplo de mensagem"
      ),
      callout(
        status = "info",
        title = "Título da mensagem",
        message = "Esse é um exemplo de mensagem"
      ),
      callout(
        status = "warning",
        title = "Título da mensagem",
        message = "Esse é um exemplo de mensagem"
      ),
      callout(
        status = "success",
        title = "Título da mensagem",
        message = "Esse é um exemplo de mensagem"
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
      title = "Callouts",
      icon_box = icon("bullhorn"),
      callout(
        status = "danger",
        title = "Título da mensagem",
        message = "Esse é um exemplo de mensagem"
      ),
      callout(
        status = "info",
        title = "Título da mensagem",
        message = "Esse é um exemplo de mensagem"
      ),
      callout(
        status = "warning",
        title = "Título da mensagem",
        message = "Esse é um exemplo de mensagem"
      ),
      callout(
        status = "success",
        title = "Título da mensagem",
        message = "Esse é um exemplo de mensagem"
      )
    )
  )
</code></pre>
    ')
    )
    # Code - End
  ),

  # Progress Bar -----------------
  fluidRow(
    box(
      width = 6,
      title = "ProgressBar",
      progressBar(
        value = 60,
        status = "danger",
        animated = TRUE
      ),
      progressBar(
        value = 45,
        status = "primary"
      ),
      progressBar(
        value = 90,
        status = "warning",
        animated = TRUE
      ),
      progressBar(
        value = 30,
        status = "success",
        animated = TRUE
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
      title = "ProgressBar",
      progressBar(
        value = 60,
        status = "danger",
        animated = TRUE
      ),
      progressBar(
        value = 45,
        status = "primary"
      ),
      progressBar(
        value = 90,
        status = "warning",
        animated = TRUE
      ),
      progressBar(
        value = 30,
        status = "success",
        animated = TRUE
      )
    )
  )
</code></pre>
    ')
    )
    # Code - End
  ),


  # Collapsible Accordion
  fluidRow(
    box(
      width = 6,
      title = "Collapsible Accordion",
      collapsible(
        collapsibleItem(
          id = "item1",
          title = "Testando collapsible",
          "Essa é uma mensagem que ficará dentro do box do collapsibleItem"
        ),
        collapsibleItem(
          id = "item2",
          title = "Testando collapsible",
          color = "danger",
          "Essa é uma mensagem que ficará dentro do box do collapsibleItem"
        ),
        collapsibleItem(
          id = "item3",
          title = "Testando collapsible",
          color = "primary",
          "Essa é uma mensagem que ficará dentro do box do collapsibleItem"
        )
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
      title = "Collapsible Accordion",
      collapsible(
        collapsibleItem(
          id = "item1",
          title = "Testando collapsible",
          "Essa é uma mensagem que ficará dentro do box do collapsibleItem"
        ),
        collapsibleItem(
          id = "item2",
          title = "Testando collapsible",
          color = "danger",
          "Essa é uma mensagem que ficará dentro do box do collapsibleItem"
        ),
        collapsibleItem(
          id = "item3",
          title = "Testando collapsible",
          color = "primary",
          "Essa é uma mensagem que ficará dentro do box do collapsibleItem"
        )
      )
    )
  )
</code></pre>
    ')
    )
    # Code - End
  ),

  # Timeline - Exemplo -------------
  fluidRow(
    box(
      width = 6,
      title = "Timeline",
      timeline(
        timelineLabel(
          color = "red",
          text = "14 Nov. 2019"
        ),
        timelineItem(
          icon = icon("clock"),
          icon_color = "blue",
          time = "15 minutos atrás",
          title = "Título",
          content = "Conteúdo"
        )
      )
    )
  )
)
