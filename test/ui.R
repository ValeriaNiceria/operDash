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


###################
# Navbar exemplo #
###################
ui <- operPage(
  title = "operDash",
  navbar = navbar,
  body = body
)



###################
# Sidebar exemplo #
###################
# ui =  operPage(
#
#   title = "Dashboard Oper",
#
#   sidebar = sidebarDash(
#     sidebarItem(text = "Box", tabName = "box"),
#     sidebarDropdown(text = "Elements", icon = icon("flask"),
#                     sidebarDropdownItem(text = "valueBox", tabName = "valueBoxElement"),
#                     sidebarDropdownItem(text = "Buttons", tabName = "buttonsElement"),
#                     sidebarDropdownItem(text = "Jumbotron", tabName = "jumbotronElement"),
#                     sidebarDropdownItem(text = "Alert", tabName = "alertElement"),
#                     sidebarDropdownItem(text = "progressBar", tabName = "progressBarElement"),
#                     sidebarDropdownItem(text = "Carousel", tabName = "carouselElement"),
#                     sidebarDropdownItem(text = "Panel", tabName = "panelElement"),
#                     sidebarDropdownItem(text = "Timeline", tabName = "timelineElement")
#                 ),
#     sidebarDropdown(text = "Dash", icon = icon("laptop-code"),
#                     sidebarDropdownItem(text = "pageDash", tabName = "codePageDash"),
#                     sidebarDropdownItem(text = "navbarDash", tabName = "codeNavbarDash"),
#                     sidebarDropdownItem(text = "bodyDash", tabName = "codeBodyDash"),
#                     sidebarDropdownItem(text = "box", tabName = "codeBox"),
#                     sidebarDropdownItem(text = "valueBox", tabName = "codeValueBox"),
#                     sidebarDropdownItem(text = "elements", tabName = "codeElements"),
#                     sidebarDropdownItem(text = "panel", tabName = "codePanel"),
#                     sidebarDropdownItem(text = "timeline", tabName = "codeTimeline")
#                     ),
#     sidebarItem(text = "Box", tabName = "box"),
#
#     userOptions = userOptions(
#       itemUser('Informações', tabName = 'info'),
#       itemUserDivider(),
#       itemUser('Logout', tabName = 'logout')
#     ),
#
#     brand = h1('testando')
#   ),
#
#
#   body = body
# )
