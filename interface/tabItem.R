tabItem <- function(tabName = NULL, ...) {
  if (is.null(tabName))
    stop("Need tabName")
  
  
  tags$div(
    role = "tabpanel",
    class = "tab-pane",
    id = paste0("shiny-tab-", tabName),
    ...
  )
}


# tabItems <- function(...) {
#   div(class = "tab-content", ...)
# }
