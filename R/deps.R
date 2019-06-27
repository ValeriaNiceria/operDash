# Add an html dependency, without overwriting existing ones
appendDependencies <- function(x, value) {
  if (inherits(value, "html_dependency"))
    value <- list(value)

  old <- attr(x, "html_dependencies", TRUE)

  htmlDependencies(x) <- c(old, value)
  x
}


appendDependenciesFooter <- function(x, value) {
  if (inherits(value, "html_dependency"))
    value <- list(value)

  old <- attr(x, "html_dependencies", TRUE)

  htmlDependencies(x) <- c(value, old)
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


  dashboardDeps <- list(
    # bootstrap
    htmltools::htmlDependency(
      name = "bootstrap",
      version = "4.1.0",
      src = c(file = system.file("bootstrap-4.1.0", package = "operDash")),
      script = bootstrap_js,
      stylesheet = bootstrap_css
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
      stylesheet = oper_css,
      script = init_js
    )
  )

  appendDependencies(x, dashboardDeps)
}


addDepsFooter <- function() {

  oper_js <- "js/operDash.js"
  poper_js <- "js/popper.min.js"
  metismenu_js <- "js/metis_menu/jquery.slimscroll.min.js"
  slimscroll_js <- "js/slimscroll/jquery.slimscroll.min.js"
  pace_js <- "js/pace/pace.min.js"
  end_js <- "js/end.js"


  dashboardDeps <- list(
    # operDash
    htmltools::htmlDependency(
      name = "oper",
      version = "0.1.0",
      src = c(file = system.file("oper-0.1.0", package = "operDash")),
      script = c(oper_js, poper_js, metismenu_js, slimscroll_js, pace_js, end_js)
    )
  )

  appendDependenciesFooter(dashboardDeps)

}
