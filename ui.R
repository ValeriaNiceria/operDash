source("./interface_imports.R")

ui <- htmlTemplate(filename = "index.html",
                   headDash = headerDash(),
                   
                   menuDash = menuTopDash(title_site = "Dashboard",
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
                              )
                     
                   ),
                   
                   
                   footerDash = footerDash()
                   
                   )