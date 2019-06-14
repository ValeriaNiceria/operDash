source("./imports.R")


menuDash = menuDash(title_site = "Dashboard",
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
  
  # valueBox 
  tabItem(tabName = "valueBox",
          fluidRow(
            column(
              width = 3,
              valueBox(type = "default")),
            column(
              width = 3,
              valueBox(type = "primary")),
            column(
              width = 3,
              valueBox(type = "info")),
            column(
              width = 3,
              valueBox(type = "warning"))
          ),
          
          fluidRow(
            column(
              width = 3,
              valueBox(type = "danger")
            ),
            column(
              width = 3,
              infoMetric(title = "Income", 
                         value = "999,99", 
                         subTitle = "Total income", 
                         percent = "77%", 
                         icon = icon("bolt"))
            ),
            column(
              width = 3,
              infoProgress(title = "Título",
                           value = "56%",
                           subTitle = "Sub título")
            )
          )
  ),
  
  tabItem(tabName = "elements",
          fluidRow(
            column(
              width = 12,
              box(
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
              )
            )
          ),
          fluidRow(
            column(
              width = 12,
              box(
                boxContent(
                  jumbotron(tags$h1("Jumbotron"))
                )
              )
            )
          ),
          fluidRow(
            column(
              width = 12,
              box(
                boxContent(
                  alert(message = "Alert message success", 
                        type = "success"
                        ),
                  alert(message = "Alert message info", 
                        type = "info"
                  ),
                  alert(message = "Alert message warning", 
                        type = "warning"
                  ),
                  alert(message = "Alert message danger", 
                        type = "danger"
                  )
                )
              )
            )
          )
  ),
  
  tabItem(tabName = "panel",
          fluidRow(
            column(
              width = 4,
              panel(title = "Título")
            ),
            column(
              width = 4,
              panel(title = "Título",
                    body = "conteúdo",
                    type = "primary",
                    footer = "Rodapé")
            ),
            column(
              width = 4,
              panel(body = "conteúdo",
                    type = "success")
            )
            
          ),
          fluidRow(
            column(
              width = 4,
              panel(title = "Título",
                    body = "conteúdo",
                type = "info")
            ),
            column(
              width = 4,
              panel(title = "Título",
                    body = "conteúdo",
                    type = "warning")
            ),
            column(
              width = 4,
              panel(title = "Título",
                    body = "conteúdo",
                    type = "danger")
            )
            
          ),
          fluidRow(
            column(
              width = 6,
              box(
                boxContent(
                  collapsePanel(
                    collapsePanelItem(
                      title = "Collapse Panel #1",
                      id = "collapsePanel1",
                      content = "Esse é o conteúdo do painel #1"
                    ),
                    collapsePanelItem(
                      title = "Collapse Panel #2",
                      id = "collapsePanel2",
                      content = "Esse é o conteúdo do painel #2"
                    )
                  )
                )
              )
            )
          )
 )
)



ui <- htmlTemplate("./interface/index.html",
                   
                   headDash = headerDash(),
                   
                   menuDash = menuDash,
                   
                   contentDash = content,
                   
                   footerDash = footerDash()
                   
)