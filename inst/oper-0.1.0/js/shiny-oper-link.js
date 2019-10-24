$(document).ready(function(){
  $(document).on("click","li.link-sidebar", function() {
    $("li.link-sidebar").removeClass("active");
    $(this).addClass("active");
  });
});
