$(document).ready(function(){
  $(document).on("click", "#side-menu li", function() {
  	$(".metismenu li").removeClass("active")
  	$(this).addClass("active")
  })
})
