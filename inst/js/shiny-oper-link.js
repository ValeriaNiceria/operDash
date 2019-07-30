$(document).ready(function(){
  $(document).on("click", "li.oper-link", function () {
    $('.oper-link').removeClass('active');
    $(this).addClass('active');
  });
});
