menuTopDash <- function(..., title_site) {
  
    tags$div(class = "row border-bottom white-bg",
             tags$nav(class = "navbar navbar-expand-lg navbar-static-top", role="navigation",
                      tags$a(href = "#", title_site, class = "navbar-brand")
                      )
             )
  
  
  # HTML(sprintf('
  #       <div class="row border-bottom white-bg">
  #              <nav class="navbar navbar-expand-lg navbar-static-top" role="navigation">
  #              <!--<div class="navbar-header">-->
  #              <!--<button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">-->
  #              <!--<i class="fa fa-reorder"></i>-->
  #              <!--</button>-->
  #              
  #              <a href="#" class="navbar-brand">Inspinia</a>
  #              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-label="Toggle navigation">
  #              <i class="fa fa-reorder"></i>
  #              </button>
  #              
  #              <!--</div>-->
  #              <div class="navbar-collapse collapse" id="navbar">
  #              <ul class="nav navbar-nav mr-auto">
  #              <li class="active">
  #              <a aria-expanded="false" role="button" href="layouts.html"> Back to main Layout page</a>
  #              </li>
  #              <li class="dropdown">
  #              <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item</a>
  #              <ul role="menu" class="dropdown-menu">
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              </ul>
  #              </li>
  #              <li class="dropdown">
  #              <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item</a>
  #              <ul role="menu" class="dropdown-menu">
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              </ul>
  #              </li>
  #              <li class="dropdown">
  #              <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item</a>
  #              <ul role="menu" class="dropdown-menu">
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              </ul>
  #              </li>
  #              <li class="dropdown">
  #              <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item</a>
  #              <ul role="menu" class="dropdown-menu">
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              <li><a href="">Menu item</a></li>
  #              </ul>
  #              </li>
  #              
  #              </ul>
  #              <ul class="nav navbar-top-links navbar-right">
  #              <li>
  #              <a href="login.html">
  #              <i class="fa fa-sign-out"></i> Log out
  #              </a>
  #              </li>
  #              </ul>
  #              </div>
  #              </nav>
  #              </div>
  #              '))
}