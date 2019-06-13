tabBox <- function(tabBoxTitle = NULL, tabBoxContent = NULL) {
  tags$div(class="tabs-container",
           tags$ul(class="nav nav-tabs", role="tablist",
                   tabBoxTitle
                    ),
           
           tags$div(class="tab-content",
                    tabBoxContent
                    )
           )
}


tabBoxTitle <- function(text = "text", tabName = "tab") {
  tabName = paste0("#", tabName)
  
  tags$li(
    tags$a(class="nav-link", `data-toggle`="tab", href=tabName, text)
  )
}


tabContent <- function(..., tabName = "tab") {
  tags$div(role="tabpanel", id=tabName, class="tab-pane",
           tags$div(class="panel-body",
                    ...
                    )
           )
}