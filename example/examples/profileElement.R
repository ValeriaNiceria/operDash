profileElement <-
tabItem(
  tabName = "profileElement",
  fluidRow(
    column(
      width = 6,
      profile(
        width = 8,
        title = "Título",
        subTitle = "Subtítulo",
        src = "img/user.jpeg",
        content = tags$div(
          tags$p("conteúdo"),
          tags$small("testando")
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
    profile(
      width = 8,
      title = "Título",
      subTitle = "Subtítulo",
      src = "img/user.jpeg",
      content = tags$div(
                  tags$p("conteúdo"),
                  tags$small("testando")
                )
    )
  )
)
</pre>
')
    )
  )
)