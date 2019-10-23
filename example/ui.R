source("./imports.R")


# navbar <- navbarDash(brandText = "operDash",
#                     menuLeft(
#                       menuItem(text = "Box", tabName = "box"),
#
#                       menuDropdown(text = "Elements", icon = icon("flask"),
#                                    menuItem(text = "valueBox", tabName = "valueBoxElement"),
#                                    menuItem(text = "Buttons", tabName = "buttonsElement"),
#                                    menuItem(text = "Jumbotron", tabName = "jumbotronElement"),
#                                    menuItem(text = "Alert", tabName = "alertElement"),
#                                    menuItem(text = "progressBar", tabName = "progressBarElement"),
#                                    menuItem(text = "Carousel", tabName = "carouselElement"),
#                                    menuItem(text = "Panel", tabName = "panelElement"),
#                                    menuItem(text = "Timeline", tabName = "timelineElement")
#                                    )),
#
#                     menuRight(
#                       # Notification dropdown
#                       notification(icon = icon("envelope"),
#                                    label = "1",
#                                    notificationItem(
#                                      icon = icon("user", class="fa-3x"),
#                                      title = "novo usuário",
#                                      message = "Foi um criado novo usuário",
#                                      time = "14:41"),
#                                    notificationItem(
#                                      icon = icon("user", class="fa-3x"),
#                                      title = "novo usuário",
#                                      message = "Foi um criado novo usuário",
#                                      time = "14:41")
#                                    ),
#
#                       notification(icon = icon("envelope"),
#                                    label = "1",
#                                    notificationItem(
#                                      icon = icon("user", class="fa-3x"),
#                                      title = "novo usuário",
#                                      message = "Foi um criado novo usuário",
#                                      time = "14:41"),
#                                    notificationItem(
#                                      icon = icon("user", class="fa-3x"),
#                                      title = "novo usuário",
#                                      message = "Foi um criado novo usuário",
#                                      time = "14:41")
#                       ),
#
#                       menuItem(text = "Logout", icon = tags$i(class="fas fa-sign-out-alt"))
#                     )
# )


# body <- bodyDash(
#   # Box
#   boxExample,
#
#   # Elements - valueBox
#   valueBoxElement,
#
#   # Elements - buttons
#   buttonsElement,
#
#   # Elements - jumbotron
#   jumbotronElement,
#
#   # Elements - alert
#   alertElement,
#
#   # Elements - progressBar
#   progressBarElement,
#
#   # Elements - carousel
#   carouselElement,
#
#   # Elements - Panel
#   panelElement,
#
#   # Elements - Timeline
#   timelineElement
#
# )


###################
# Navbar exemplo #
###################
ui <- operDashPage(
  title = "operDash",
  header = operDashHeader(
    title = "operDash",
    logo = icon("rocket")
    ),
  sidebar = operDashSidebar(
    # sidebarUserPanel = sidebarUserPanel(name = "Valéria", info = "Testando")
    sidebarMenu = sidebarMenu(
      sidebarItem(text = "Teste",
                  icon = icon("link"),
                  tabName = "teste"),

      sidebarItem(text = "Teste2",
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
                  ))
    )
  )
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
#     sidebarItem(text = "Box", tabName = "box"),
#
#
#     brand = img(src="./logo.png", width = "150")
#   ),
#
#
#   body = body
# )
