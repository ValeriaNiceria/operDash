alert <- function(message = NULL, type = "success", ...) {
  # type = success - info - warning - danger
  classAlert = paste0("alert alert-", type, " alert-dismissable")
  tags$div(class=classAlert, 
           tags$button(`aria-hidden`="true",
                       `data-dismiss`="alert",
                       class="close",
                       type="button", x),
           message
           )
}