$(document).ready(function(){
  $(document).on("click", "ul.nav.metismenu li", function() {
    $('ul.nav.metismenu li').removeClass('active');
    $(this).addClass('active');
  })
});
