$(document).ready(function(){
  $(document).on("click", "ul.nav.metismenu li", function() {

    link = $('ul.nav.metismenu li')

    if ($(this).hasClass('nav-header')) {
    } else {
      $('ul.nav.metismenu li').removeClass('active');
      $(this).addClass('active');
    }
  })
});



