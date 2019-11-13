widgets <- tabItem(
  tabName = "widgets",
  h2("Widgets"),

  h3("infoBox"),
  fluidRow(
    infoBox(width = 3, icon = icon("envelope-o"), text = "Message", value = "500"),
    infoBox(width = 3, bg_color ="red", icon = icon("envelope-o"), text = "Message", value = "500"),
    infoBox(width = 3, bg_color ="green", icon = icon("envelope-o"), text = "Message", value = "500"),
    infoBox(width = 3, bg_color ="yellow", bg_all = TRUE, icon = icon("envelope-o"), text = "Message", value = "500", progress = "45", progress_desc = "descrição progresso")
  )
)
