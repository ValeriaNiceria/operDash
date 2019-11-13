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
    # Widgets - Exemplo -----
    widgets
  )
)
