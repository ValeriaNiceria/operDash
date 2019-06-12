source("./interface_imports.R")

ui <- htmlTemplate(filename = "index.html",
                   headDash = headerDash(),

                   menuDash = menuDash(title_site = "Dashboard",
                                          menuLeft(
                                            menuItem(text = "ibox", tabName = "ibox"),
                                            menuItem(text = "Widget", icon = "fa fa-th-large", tabName = "widget"),
                                            menuDropdown(menuItem(text = "TESTE2", icon = "fa fa-sign-out"))
                                            ),
                                          
                                          menuRight(
                                            menuItem(text = "TESTE2", icon = "fa fa-sign-out"),
                                            menuItem(text = "TESTE2", icon = "fa fa-sign-out"),
                                            menuItem(text = "TESTE2", icon = "fa fa-sign-out")
                                            )
                                          ),
                   
                   
                   contentDash = contentDash(
                     
                       # ibox
                       tabItem(tabName = "ibox",
                               fluidRow(column(width = 4,
                                               ibox(
                                                 iboxTitle(
                                                   iboxTools(label())
                                                 )
                                               )
                                        ),
                               
                                       column(width = 8,
                                              ibox(
                                                iboxTitle(
                                                  iboxTools(collapseLink(),
                                                                closeLink())
                                                ),
                                                iboxContent(
                                                  
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
                        ),
                   
                   
                   footerDash = footerDash()
                   
                   )