$(document).ready(function() {
  if ($('nav').hasClass('navbar-static-side')) {
    $('.shiny-oper-tab-content').addClass('shiny-oper-margin-top-sidebar')
  } else {
    $('.shiny-oper-tab-content').addClass('shiny-oper-margin-top-navbar')
  }

})
