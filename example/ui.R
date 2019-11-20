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
    # Sidebar - Paínel do usuário ----
    sidebar_user_panel = sidebarUserPanel(
      name = "Valéria",
      info = tags$a(href="#", icon("circle", class="text-success"), "Online")
    ),
    # Sidebar - Menu ----
    sidebar_menu = sidebarMenu(
      sidebarItem(
        text = "Box",
        icon = icon("th-large"),
        tab_name = "element_box"
      ),
      sidebarItem(
        text = "Widgets",
        icon = icon("th"),
        tab_name = "element_widgets"
      ),
      sidebarItem(
        text = "UI Elements",
        icon =  icon("laptop"),
        tab_name = "element_ui"
      ),
      sidebarItem(
        text = "Metrics",
        icon =  icon("chart-pie"),
        tab_name = "metricElement"
      ),
      sidebarItem(
        text = "Teste2",
        icon = icon("circle-o"),
        sidebarSubItem(
          text = "Text1",
          icon = icon("circle-o"),
          tab_name = "teste1"
        ),
        sidebarSubItem(
          text = "Text2",
          icon = icon("circle-o"),
          tab_name = "teste2"
        )
      )
    )
  ),

  # Body ----
  body = operDashBody(
    # Carregando as bibliotecas do highlightjs,
    # que será utilizado para mostrar os exemplos de código formatado.
    tags$head(
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
    uiElement,

    # Metric Elements - Exemplo ----
    metricElement
  ),

  # Footer ----
  footer = operDashFooter(
    text_left = strong("Texto a esquerda"),
    text_right = "Texto a direita"
  )
)
