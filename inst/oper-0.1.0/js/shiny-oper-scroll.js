$(document).ready(function(){

  window.onscroll = function() {scrollPage()};

  function scrollPage() {
    if (document.body.scrollTop > 45 || document.documentElement.scrollTop > 45) {
      $(".main-sidebar").css('padding-top', '0px');
    } else {
      $(".main-sidebar").css('padding-top', '47px');
    }

  }
})
