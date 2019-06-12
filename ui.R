source("./interface_imports.R")

ui <- htmlTemplate(filename = "index.html",
                   headDash = headerDash(),
                   
                   menuDash = menuDash(title_site = "Dashboard",
                                          menuLeft(
                                            menuItem(id = "test", nameMenu = "TESTE1"),
                                            menuItem(id = "test", nameMenu = "TESTE1", icon = "fa fa-sign-out")
                                            ),
                                          
                                          menuRight(
                                            menuItem(id = "test", nameMenu = "TESTE2", icon = "fa fa-sign-out"),
                                            menuItem(id = "test", nameMenu = "TESTE2", icon = "fa fa-sign-out"),
                                            menuItem(id = "test", nameMenu = "TESTE2", icon = "fa fa-sign-out")
                                            )
                                          ),
                   
                   
                   contentDash = contentDash(
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
                              ),
                     
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
                     
                   ),
                   
                   
                   footerDash = footerDash()
                   
                   )