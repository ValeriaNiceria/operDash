$(document).ready(function(){
  $(document).on('click', '.navbar-header', function () {
    body = $('body');
    if (body.hasClass('mini-navbar')) {
      $('.oper-brand').css('display', 'none').animate({opacity:1},1300);
    } else {
      $('.oper-brand').css('display', 'block').animate({opacity:1},1300);
    }
  });
});
