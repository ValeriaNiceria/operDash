boxElement <- tabItem(
  tabName = "element_box",
  h2("Box - Exemplo"),
  fluidRow(
    box(
      title = "Primeiro Box",
      color = "primary",
      minimize = TRUE,
      message = "Testando campo de informação",
      close = TRUE,

      h3('olá')
    )
  )
)
