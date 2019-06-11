source("./interface.R")

ui <- htmlTemplate(filename = "index.html",
                   headDash = headerDash(),
                   
                   menuDash = menuTopDash(title_site = "Dashboard",
                                          menuItem(id = "test", nameMenu = "TESTE1"),
                                          menuItem(id = "test", nameMenu = "TESTE2")),
                   
                   
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