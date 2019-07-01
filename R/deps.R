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
  font_awesome_all <- "css/all.min.css"
  font_awesome_v4 <- "css/v4-shims.min.css"


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
      name = "font-awesome",
      version = "5.3.1",
      src = c(file = system.file("font-awesome-5.3.1", package = "operDash")),
      stylesheet = c(font_awesome_all, font_awesome_v4)
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
