#' @name tabItem
#'
#' @param tabName name to tab.
#' @param ... Items to put in the dashboard body.
#'
#' @export

# tabItem <- function(tabName = NULL, ...) {
#   if (is.null(tabName))
#     stop("Need tabName")
#
#
#   shiny::tags$div(
#     role = "tabpanel",
#     class = "tab-pane  container-fluid",
#     id = paste0("shiny-tab-", tabName),
#     ...
#   )
# }


tabItem <- function(tabName = NULL, ...) {
  if (is.null(tabName))
    stop("Need tabName")

  shiny::tagList(
    tags$div(
      class="col-lg-12 shiny-oper-tab-content",
      id = paste0("shiny-tab-", tabName),
      style = "visibility:hidden",

      ...

    ),

    shiny::singleton(
      shiny::includeScript(
        system.file("js/shiny-oper-tabs.js",
                    package = "operDash")
      )
    )
  )


  # shiny::tags$div(
  #   role = "tabpanel",
  #   class = "tab-pane  container-fluid",
  #   id = paste0("shiny-tab-", tabName),
  #   ...
  # )
}
