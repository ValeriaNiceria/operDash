$(document).ready(function() {
  $(document).on('click', 'a.tab-link', function() {
    link_clicked = $(this).next()
    if (link_clicked.hasClass('nav-second-level')) {
        if (link_clicked.hasClass('collapsing')) {
          link_clicked.removeClass('in')
        } else {
          link_clicked.addClass('in')
        }
    } else {
        $('.collapse.in').removeClass('in')
    }
  })
})
