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
        text = "Box",
        icon = icon("th-large"),
        tabName = "element_box"
      ),
      sidebarItem(
        text = "Widgets",
        icon = icon("th"),
        tabName = "element_widgets"
      ),
      sidebarItem(
        text = "UI Elements",
        icon =  icon("laptop"),
        tabName = "element_ui"
      ),
      sidebarItem(
        text = "Teste2",
        icon = icon("circle-o"),
        sidebarSubItem(
          text = "Text1",
          icon = icon("circle-o"),
          tabName = "teste1"
        ),
        sidebarSubItem(
          text = "Text2",
          icon = icon("circle-o"),
          tabName = "teste2"
        )
      )
    )
  ),

  # Body ----
  body = operDashBody(
    # Carregando as bibliotecas do highlightjs, que será utilizado para mostrar os exemplos de código formatado.
    tags$head(
      # htmltools::htmlDependency("jquery", "3.3.1",
      #                           src = c(href = "https://code.jquery.com/"),
      #                           script = "jquery-3.3.1.min.js"),
      tags$link(
        rel="stylesheet",
        href="//cdn.jsdelivr.net/gh/highlightjs/cdn-release@9.16.2/build/styles/default.min.css"),
      tags$script(src="//cdn.jsdelivr.net/gh/highlightjs/cdn-release@9.16.2/build/highlight.min.js"),
      tags$script(
        HTML(
          '$(document).ready(function() {
          hljs.initHighlightingOnLoad();
          })'
        )
      )
    ),

    # Exemplos ----------
    # Box - Exemplo ----
    boxElement,

    # Widgets - Exemplo -----
    widgetsElement,

    # UI Elements - Exemplo ----
    uiElement
  )
)
