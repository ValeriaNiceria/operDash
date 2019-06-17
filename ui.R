source("./imports.R")


navbar <- navbarDash(brand = "operDash",
                    menuLeft(
                      menuItem(text = "Box", tabName = "box"),
                      menuItem(text = "valueBox", icon = icon("th-large"), tabName = "valueBox"),
                      menuItem(text = "Elements", icon = icon("flask"), tabName = "elements"),
                      menuItem(text = "Panel", icon = icon("columns"), tabName = "panel"),
                      menuDropdown(menuItem(text = "TESTE"))
                    ),
                    
                    menuRight(
                      menuItem(text = "TESTE2"),
                      menuItem(text = "TESTE2"),
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
  panelExample
)


ui <- pageDash(
  title = "operDash",
  header = headerDash(),
  navbar = navbar,
  body = body,
  footer = footerDash(),
  footerScripts = footerScriptsDash()
)