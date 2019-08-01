$(document).ready(function() {
  $(document).on('click', 'a.tab-link', function() {
    dropdown = $('a.tab-link').next()
    if (dropdown.hasClass('in')) {
      dropdown.removeClass('in')
    } else {
      dropdown.addClass('in')
    }
  })
})
