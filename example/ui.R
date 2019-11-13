source("./imports.R")


###################
#     Exemplo     #
###################
ui <- operDashPage(
  title = "operDash",
  # Header ----
  header = operDashHeader(
    title = "operDash",
    logo = icon("rocket")
  ),
  # Sidebar ----
  sidebar = operDashSidebar(
    sidebarUserPanel = sidebarUserPanel(
      name = "Valéria",
      info = tags$a(href="#", icon("circle", class="text-success"), "Online")
    ),
    sidebarMenu = sidebarMenu(
      sidebarItem(
        text = "Widgets",
        icon = icon("th"),
        tabName = "widgets"
      ),
      sidebarItem(
        text = "Teste2",
        icon = icon("link"),
        sidebarSubItem(
          text = "Text1",
          icon = icon("link"),
          tabName = "teste1"
        ),
        sidebarSubItem(
          text = "Text2",
          icon = icon("link"),
          tabName = "teste2"
        )
      )
    )
  ),
  # Body ----
  body = operDashBody(
    # Widgets -----
    tabItem(
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
  )
)
