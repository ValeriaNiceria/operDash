$(document).ready(function(){
  $(document).on("click", "ul.nav.metismenu li", function() {

    link = $('ul.nav.metismenu li')

    if (link).hasClass(':not(nav-header)') {
      $('ul.nav.metismenu li').removeClass('active');
      $(this).addClass('active');
    }


  })
});
