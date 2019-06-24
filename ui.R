source("./imports.R")


navbar <- navbarDash(brand = "operDash",
                    menuLeft(
                      menuItem(text = "Box", tabName = "box"),
                      menuItem(text = "valueBox", icon = icon("th-large"), tabName = "valueBox"),
                      menuItem(text = "Elements", icon = icon("flask"), tabName = "elements"),
                      menuItem(text = "Panel", icon = icon("columns"), tabName = "panel"),
                      menuItem(text = "Timeline", icon = icon("stream"), tabName = "timeline"),
                      
                      menuDropdown(text = "Elements", icon = icon("flask"),
                                   menuItem(text = "Buttons", tabName = "buttonsElement"),
                                   menuItem(text = "Jumbotron", tabName = "jumbotronElement"),
                                   menuItem(text = "Alert", tabName = "alertElement"),
                                   menuItem(text = "progressBar", tabName = "progressBarElement")
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
  
  # valueBox 
  valueBoxExample,
  
  # Elements
  elementsExample,
  
  # Panel
  panelExample,
  
  # timeline
  timelineExample,
  
  # Elements - buttons
  buttonsElement,
  
  # Elements - jumbotron
  jumbotronElement,
  
  # Elements - alert
  alertElement,
  
  # Elements - progressBar
  progressBarElement,
  
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


ui <- pageDash(
  title = "operDash",
  header = headDash(),
  navbar = navbar,
  body = body,
  footer = footerDash(),
  footerScripts = footerScriptsDash()
)