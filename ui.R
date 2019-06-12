source("./interface_imports.R")

ui <- htmlTemplate(filename = "index.html",
                   headDash = headerDash(),
                   
                   menuDash = menuDash(title_site = "Dashboard",
                                          menuLeft(
                                            menuItem(text = "ibox", tabName = "ibox"),
                                            menuItem(text = "Widget", icon = "fa fa-caret-right", tabName = "widget")
                                            ),
                                          
                                          menuRight(
                                            menuItem(text = "TESTE2", icon = "fa fa-sign-out"),
                                            menuItem(text = "TESTE2", icon = "fa fa-sign-out"),
                                            menuItem(text = "TESTE2", icon = "fa fa-sign-out")
                                            )
                                          ),
                   
                   
                   contentDash = contentDash(
                     
                     tabItems(
                       tabItem(tabName = "ibox",
                               fluidRow(column(width = 4,
                                               iboxDash(
                                                 iboxTitleDash(
                                                   iboxToolsDash(labelDash())
                                                 )
                                               )
                                        ),
                               
                                       column(width = 8,
                                              iboxDash(
                                                iboxTitleDash(
                                                  iboxToolsDash(collapseLink(),
                                                                closeLink())
                                                ),
                                                iboxContentDash(
                                                  
                                                )
                                              )
                                       )
                               )  
                       ),
                       
                       
                       tabItem(tabName = "widget",
                               # Widgets - 1° Linha
                               fluidRow(
                                 column(
                                   width = 3,
                                   widget(type = "default")),
                                 column(
                                   width = 3,
                                   widget(type = "primary")),
                                 column(
                                   width = 3,
                                   widget(type = "info")),
                                 column(
                                   width = 3,
                                   widget(type = "warning"))
                               ),
                               
                               # Widgets - 2° Linha
                               fluidRow(
                                 column(
                                   width = 3,
                                   widget(type = "danger")
                                 ),
                                 column(
                                   width = 2,
                                   widgetSimples(type = "warning")
                                 ),
                                 column(
                                   width = 2,
                                   widgetSimples(type = "primary")
                                 ),
                                 column(
                                   width = 2,
                                   widgetSimples(type = "info")
                                 ),
                                 column(
                                   width = 2,
                                   widgetSimples(type = "danger")
                                 )
                               )
                               
                            )  
                        )
                       
                     ),
                   
                   
                   footerDash = footerDash()
                   
                   )