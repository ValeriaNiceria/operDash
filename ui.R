source("./imports.R")


menuDash = menuDash(title_site = "Dashboard",
                    menuLeft(
                      menuItem(text = "Box", tabName = "box"),
                      menuItem(text = "Widget", icon = icon("th-large"), tabName = "widget"),
                      menuItem(text = "Elements", icon = icon("flask"), tabName = "elements"),
                      menuItem(text = "Panel", icon = icon("columns"), tabName = "panel"),
                      menuDropdown(menuItem(text = "TESTE2", icon = icon("sign-out-alt")))
                    ),
                    
                    menuRight(
                      menuItem(text = "TESTE2", icon = icon("sign-out-alt")),
                      menuItem(text = "TESTE2", icon = icon("sign-out-alt")),
                      menuItem(text = "TESTE2", icon = icon("sign-out-alt"))
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
              infoBox(type = "primary")),
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
          fluidRow(column(
                    width = 2,
                    appButton()
                  ),
                  column(
                    width = 2,
                    appButton(type = "default")
                  ),
                  column(
                    width = 2,
                    appButton(type = "info")
                  ),
                  column(
                    width = 2,
                    appButton(type = "success")
                  ),
                  column(
                    width = 2,
                    appButton(idButton="danger",
                              label = "Danger",
                              type = "danger",
                              size = "sm")
                  )
          )
  ),
  
  tabItem(tabName = "panel",
          fluidRow(
            column(
              width = 4,
              panel()
            ),
            column(
              width = 4,
              panel(title = "Título",
                    content = "conteúdo",
                    type = "primary")
            ),
            column(
              width = 4,
              panel(type = "success")
            )
            
          ),
          fluidRow(
            column(
              width = 4,
              panel(type = "info")
            ),
            column(
              width = 4,
              panel(title = "Título",
                    content = "conteúdo",
                    type = "warning")
            ),
            column(
              width = 4,
              panel(type = "danger")
            )
            
          )
 )
)



ui <- htmlTemplate("./template/index.html",
                   
                   headDash = headerDash(),
                   
                   menuDash = menuDash,
                   
                   contentDash = content,
                   
                   footerDash = footerDash()
                   
)