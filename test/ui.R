source("./imports.R")


navbar <- navbarDash(brandText = "operDash",
                    menuLeft(
                      menuItem(text = "Box", tabName = "box"),

                      menuDropdown(text = "Elements", icon = icon("flask"),
                                   menuItem(text = "valueBox", tabName = "valueBoxElement"),
                                   menuItem(text = "Buttons", tabName = "buttonsElement"),
                                   menuItem(text = "Jumbotron", tabName = "jumbotronElement"),
                                   menuItem(text = "Alert", tabName = "alertElement"),
                                   menuItem(text = "progressBar", tabName = "progressBarElement"),
                                   menuItem(text = "Carousel", tabName = "carouselElement"),
                                   menuItem(text = "Panel", tabName = "panelElement"),
                                   menuItem(text = "Timeline", tabName = "timelineElement")
                                   ),

                      menuDropdown(text = "Dash", icon = icon("laptop-code"),
                                   menuItem(text = "pageDash", tabName = "codePageDash"),
                                   menuItem(text = "navbarDash", tabName = "codeNavbarDash"),
                                   menuItem(text = "bodyDash", tabName = "codeBodyDash"),
                                   menuItem(text = "box", tabName = "codeBox"),
                                   menuItem(text = "valueBox", tabName = "codeValueBox"),
                                   menuItem(text = "elements", tabName = "codeElements"),
                                   menuItem(text = "panel", tabName = "codePanel"),
                                   menuItem(text = "timeline", tabName = "codeTimeline")),
                      menuDropdown(text = "Graphs", icon = icon("chart-line"))),


                    menuRight(
                      # Notification dropdown
                      notification(icon = icon("envelope"),
                                   label = "1",
                                   notificationItem(
                                     icon = icon("user", class="fa-3x"),
                                     title = "novo usuário",
                                     message = "Foi um criado novo usuário",
                                     time = "14:41"),
                                   notificationItem(
                                     icon = icon("user", class="fa-3x"),
                                     title = "novo usuário",
                                     message = "Foi um criado novo usuário",
                                     time = "14:41")
                                   ),

                      notification(icon = icon("envelope"),
                                   label = "1",
                                   notificationItem(
                                     icon = icon("user", class="fa-3x"),
                                     title = "novo usuário",
                                     message = "Foi um criado novo usuário",
                                     time = "14:41"),
                                   notificationItem(
                                     icon = icon("user", class="fa-3x"),
                                     title = "novo usuário",
                                     message = "Foi um criado novo usuário",
                                     time = "14:41")
                      ),

                      menuItem(text = "Logout", icon = tags$i(class="fas fa-sign-out-alt"))
                    )
)


body <- bodyDash(
  # Box
  boxExample,

  # Elements - valueBox
  valueBoxElement,

  # Elements - buttons
  buttonsElement,

  # Elements - jumbotron
  jumbotronElement,

  # Elements - alert
  alertElement,

  # Elements - progressBar
  progressBarElement,

  # Elements - carousel
  carouselElement,

  # Elements - Panel
  panelElement,

  # Elements - Timeline
  timelineElement,

  # Dash - Code
  # code pageDash
  codePageDashExample,

  # code navbarDash
  codeNavbarDashExample,

  # code bodyDash
  codeBodyDashExample,

  # code box
  codeBoxExample,

  # valueBox
  codeValueBoxExample,

  # code Elements
  codeElementsExample,

  # code Panel
  codePanelExample,

  # code Timeline
  codeTimelineExample

)


# ui <- pageDash(
#   title = "operDash",
#   head = headDash(),
#   navbar = navbar,
#   body = body,
#   footer = footerDash(),
#   footerScripts = footerScriptsDash()
# )


# ui <- pageSidebarDash(
#
#   sidebar = sidebarDash(
#     sidebarItem(
#       label = "TESTANDO",
#       icon = tags$i(class="fa fa-user"),
#       tabName = "teste"
#     )
#   ),
#
#   body = bodyDash(
    # tabItem(
    #   tabName = "teste",
    #   fluidRow(
    #     column(
    #       width = 4,
    #       sliderInput(inputId = "bins",
    #                   label = "Number of bins:",
    #                   min = 1,
    #                   max = 50,
    #                   value = 30)
    #     ),
    #     column(
    #       width = 8,
    #       plotOutput(outputId = "distPlot")
    #     )
    #   )
    # )
#   )
#
# )



ui <- operPage(
  sidebar = sidebarDash(
    sidebarItem(label = "Testando", tabName = "teste"),
    sidebarItem(label = "Ola", icon = icon('link'), tabName = "oi")
  ),

  body =
    tabItem(
      tabName = "teste",
      fluidRow(
        column(
          width = 4,
          sliderInput(inputId = "bins",
                      label = "Number of bins:",
                      min = 1,
                      max = 50,
                      value = 30)
        ),
        column(
          width = 8,
          plotOutput(outputId = "distPlot")
        )
      )
    )

)
