profileElement <-
tabItem(
  tabName = "profileElement",
  profile(
    width = 4,
    title = "Título",
    subTitle = "Subtítulo",
    src = "img/user.jpeg",
    content = tags$div(
      tags$p("conteúdo"),
      tags$small("testando")
    )
  )
)