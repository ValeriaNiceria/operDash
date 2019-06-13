source("./imports.R")


menuDash = menuDash(title_site = "Dashboard",
                    menuLeft(
                      menuItem(text = "Box", tabName = "box"),
                      menuItem(text = "Widget", icon = icon("th-large"), tabName = "widget"),
                      menuItem(text = "Elements", icon = icon("flask"), tabName = "elements"),
                      menuDropdown(menuItem(text = "TESTE2", icon = icon("sign-out")))
                    ),
                    
                    menuRight(
                      menuItem(text = "TESTE2", icon = icon("sign-out")),
                      menuItem(text = "TESTE2", icon = icon("sign-out")),
                      menuItem(text = "TESTE2", icon = icon("sign-out"))
                    )
)


content = contentDash(
  # ibox
  tabItem(tabName = "box",
          fluidRow(column(width = 4,
                          box(
                            boxTitle(
                              boxTools(label())
                            ),
                            boxContent(
                              numericInput(inputId ='n', 
                                           label = 'Number of obs', 
                                           value = 100)
                            )
                          )
          ),
          
          column(width = 8,
                 box(
                   boxTitle(
                     boxTools(collapseLink(),
                               closeLink())
                   ),
                   boxContent(
                     plotOutput('plot')
                   )
                 )
          )
          ),
          
          fluidRow(
            column(
              width = 12,
              box(
                boxContent(
                  
                )
              )
            )
          )
  ),
  
  # Widgets 
  tabItem(tabName = "widget",
          fluidRow(
            column(
              width = 3,
              infoBox(type = "default")),
            column(
              width = 3,
              infoBox1(type = "primary")),
            column(
              width = 3,
              infoBox(type = "info")),
            column(
              width = 3,
              infoBox(type = "warning"))
          ),
          
          fluidRow(
            column(
              width = 3,
              infoBox(type = "danger")
            )
          )
  ),
  
  tabItem(tabName = "elements",
          fluidRow()
  )
)



ui <- htmlTemplate("./template/index.html",
                   
                   headDash = headerDash(),
                   
                   menuDash = menuDash,
                   
                   contentDash = content,
                   
                   footerDash = footerDash()
                   
)