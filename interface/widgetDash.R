widgetPrimary <- function(icon = "fa fa-cloud", textTop = "Text top", textSub = "Text Sub") {
  icon = paste(icon, "fa-5x")
  
  tags$div(class="widget style1 navy-bg",
           tags$div(class="row",
                    tags$div(class="col-4",
                             tags$i(class=icon)),
                    tags$div(class="col-8 text-right",
                             tags$span(textTop),
                             tags$h2(class="font-bold", textSub))
                    )
           )
}