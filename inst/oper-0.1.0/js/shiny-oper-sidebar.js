$(document).ready(function() {
  $(document).on('click', '.sidebar-toggle', function() {

    if ($('body').hasClass('sidebar-collapse')) {
      $('.user-panel').css('display', 'none')
      $('.brand-icon').css('display', 'block')
      $('.brand-title').css('display', 'none')
    } else {
      $('.user-panel').css('display', 'block')
      $('.brand-icon').css('display', 'none')
      $('.brand-title').css('display', 'block')
    }
  })
})
