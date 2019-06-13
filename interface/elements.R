appButton <- function(label = "label", icon = NULL, type = "primary") {
  classButton <- paste0("btn btn-w-m btn-", type)
  tags$button(class=classButton, type="button", label)
}