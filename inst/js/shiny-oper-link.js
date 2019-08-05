$(document).ready(function(){
  /*$(document).on("click", "ul.nav.metismenu li", function() {

    $('ul.nav.metismenu li').removeClass('active');

    if ($(this).hasClass('nav-header')) {
    } else {
      $('ul.nav.metismenu li').removeClass('active');
      $(this).addClass('active');
    }
  })*/
});



$(document).ready(function(){
  $(document).on("click", "ul.nav.metismenu li", function() {
    tamanho = $(this).has("ul").length

    if (tamanho === 0) {
      if ($(this).hasClass('active')) {
        $(this).removeClass('active');
      } else {
        $(this).addClass('active');
      }
    }
  })
});

