label <- function(title = "title", type = "success", position = "right") {
  labelType = paste0("label-", type)
  labelPosition = paste0("float-", position)
  classValue = paste("label", labelType, labelPosition)
  
  tags$span(class=classValue, title)
}

collapseLink <- function() {
  tags$a(class="collapse-link",
         tags$i(class="fa fa-chevron-up"))
}

closeLink <- function() {
  tags$a(class="close-link",
         tags$i(class="fa fa-times"))
}


iboxTools <- function(...) {
  tags$div(class="ibox-tools",
           ...)
}


iboxTitle <- function(..., iboxTitle = "iboxTitle") {
  tags$div(class = "ibox-title",
           tags$h5(iboxTitle),
           ...)
}


iboxContent <- function(...) {
  tags$div(class = "ibox-content",
           ...)
}


ibox <- function(...) {
  tags$div(class = "ibox",
           ...)
}


# <div class="ibox ">
#   <div class="ibox-title">
#     <span class="label label-success float-right">Monthly</span>
#       <h5>Views</h5>
#       </div>
#       <div class="ibox-content">
#         <h1 class="no-margins">386,200</h1>
#           <div class="stat-percent font-bold text-success">98% <i class="fa fa-bolt"></i></div>
#             <small>Total views</small>
#             </div>
#             </div>