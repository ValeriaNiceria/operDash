source("./imports.R")


navbar <- navbarDash(brand = "operDash",
                    menuLeft(
                      menuItem(text = "Box", tabName = "box"),
                      menuItem(text = "valueBox", icon = icon("th-large"), tabName = "valueBox"),
                      menuItem(text = "Elements", icon = icon("flask"), tabName = "elements"),
                      menuItem(text = "Panel", icon = icon("columns"), tabName = "panel"),
                      
                      menuDropdown(text = "Dash", icon = icon("laptop-code"), 
                                   menuItem(text = "pageDash", tabName = "codePageDash"),
                                   menuItem(text = "navbarDash", tabName = "codeNavbarDash"),
                                   menuItem(text = "bodyDash", tabName = "codeBodyDash"))
                      # menuDropdown(text = "Elements", icon = icon("flask"), 
                      #              menuItem(text = "Buttons", tabName = "buttons"),
                      #              menuItem(text = "Jumbotron", tabName = "jumbotron"),
                      #              menuItem(text = "Alert Message", tabName = "alertMessage"),
                      #              menuItem(text = "Progress", tabName = "progress"))
                    ),
                    
                    menuRight(
                      menuItem(text = "TESTE2"),
                      
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
  
  # Dash - Code
  # pageDash
  codePageDashExample,
  
  # navbarDash
  codeNavbarDashExample,
  
  # bodyDash
  codeBodyDashExample
)


ui <- pageDash(
  title = "operDash",
  header = headDash(),
  navbar = navbar,
  body = body,
  footer = footerDash(),
  footerScripts = footerScriptsDash()
)