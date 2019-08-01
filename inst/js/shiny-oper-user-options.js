$(document).ready(function() {
  $(document).on('click', '.rounded-circle', function() {
    user = $('.user-option')
    if (user.hasClass('collapse')) {
      $('.user-option').removeClass('collapse')
    } else {
      $('.user-option').addClass('collapse')
    }
  })
})
