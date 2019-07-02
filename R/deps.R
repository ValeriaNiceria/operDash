# Add an html dependency, without overwriting existing ones
appendDependencies <- function(x, value) {
  if (inherits(value, "html_dependency"))
    value <- list(value)

  old <- attr(x, "html_dependencies", TRUE)

  htmltools::htmlDependencies(x) <- c(old, value)
  x
}


# Add dashboard dependencies to a tag object
addDeps <- function(x) {

  oper_css <- "css/customer.css"
  oper_js <- "js/operDash.js"
  bootstrap_css <- "bootstrap.min.css"
  bootstrap_js <- "bootstrap.js"
  animate_css <- "animate.css"
  init_js <- "js/init.js"
  fontawesome_css <- "https://use.fontawesome.com/releases/v5.5.0/css/"


  dashboardDeps <- list(
    # bootstrap
    htmltools::htmlDependency(
      name = "bootstrap",
      version = "4.1.0",
      src = c(file = system.file("bootstrap-4.1.0", package = "operDash")),
      stylesheet = bootstrap_css,
      script = bootstrap_js
    ),
    # font-awesome
    htmltools::htmlDependency(
      name = "fontawesome",
      version = as.character(utils::packageVersion("operDash")),
      src = c(href = fontawesome_css),
      stylesheet = "all.css"
    ),
    # animate
    htmltools::htmlDependency(
      name = "animate",
      version = "3.5.0",
      src = c(file = system.file("animate-3.5.0", package = "operDash")),
      stylesheet = animate_css
    ),
    # operDash
    htmltools::htmlDependency(
      name = "oper",
      version = "0.1.0",
      src = c(file = system.file("oper-0.1.0", package = "operDash")),
      stylesheet = oper_css
    )
  )

  appendDependencies(x, dashboardDeps)
}
