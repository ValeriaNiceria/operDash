$(document).ready(function() {
  $(document).on('click', '.sidebar-toggle', function() {
    if ($('body').hasClass('sidebar-collapse')) {
      $('.user-panel').removeClass('user-panel-block')
      $('.user-panel').addClass('user-panel-none')
    } else {
      $('.user-panel').removeClass('user-panel-none')
      $('.user-panel').addClass('user-panel-block')
    }
  })
})
