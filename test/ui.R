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


#
# ui <- operPage(
#   title = "operDash",
#   navbar = navbar,
#   body = body
# )
#
#



ui =  operPage(

  title = "Dashboard Oper",

  sidebar = sidebarDash(
    userOptions = userOptions(
      itemUser('Informações', tabName = 'info'),
      itemUserDivider(),
      itemUser('Logout', tabName = 'logout')
      ),

    brand = h1('testando'),
    sidebarDropdown(text = "Box", icon = icon("box"),
                sidebarDropdownItem(text = "Box", tabName = "box"),
                sidebarDropdownItem(text = "Teste", tabName = "testando")),
    sidebarDropdown(text = "Box", icon = icon("box"),
                    sidebarDropdownItem(text = "Box", tabName = "box"),
                    sidebarDropdownItem(text = "Teste", tabName = "testando")),
    sidebarItem(text = "Teste", tabName = "teste")
  ),


  body = bodyDash(
    tabItem(
      tabName = "box",
      fluidRow(
        column(
          width = 4,
          box(
            boxTitle(
              info = infoLink(position = "right",
                              message = "Mensagem de info para o usuário"),
              colorText = "white",
              background = "#00a7d0",
              boxTools(collapseLink(),
                       label(label = "testando"))
            ),
            boxContent(
              numericInput(inputId ='n',
                           label = 'Number of obs',
                           value = 100)
            )
          )
        ),
        column(
          width = 8,
          box(
            boxTitle(
              boxTools(closeLink(),
                       collapseLink(),
                       infoLink(position = "left",
                                message = "Mensagem de info para o usuário"))
            ),
            boxContent(
              highchartOutput('plot')
            )
          )
        )
      )
    ),

    tabItem(
      tabName = "teste",
      fluidRow(
        column(
          width = 4,
          sliderInput(inputId = "bins",
                      label = "Number of bins:",
                      min = 1,
                      max = 100,
                      value = 70)
        ),
        column(
          width = 8,
          h1("Testando")
        )
      )
    )
  )
)
