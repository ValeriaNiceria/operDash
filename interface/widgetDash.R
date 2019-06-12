widgetDefault <- function(icon = "fa fa-cloud", textTop = "Text top", textSub = "Text Sub") {
  icon = paste(icon, "fa-5x")
  
  tags$div(class="widget style1",
           tags$div(class="row",
                    tags$div(class="col-4",
                             tags$i(class=icon)),
                    tags$div(class="col-8 text-right",
                             tags$span(textTop),
                             tags$h2(class="font-bold", textSub))
           )
  )
}


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


widgetInfo <- function(icon = "fa fa-cloud", textTop = "Text top", textSub = "Text Sub") {
  icon = paste(icon, "fa-5x")
  
  tags$div(class="widget style1 lazur-bg",
           tags$div(class="row",
                    tags$div(class="col-4",
                             tags$i(class=icon)),
                    tags$div(class="col-8 text-right",
                             tags$span(textTop),
                             tags$h2(class="font-bold", textSub))
           )
  )
}


widgetWarning <- function(icon = "fa fa-cloud", textTop = "Text top", textSub = "Text Sub") {
  icon = paste(icon, "fa-5x")
  
  tags$div(class="widget style1 yellow-bg",
           tags$div(class="row",
                    tags$div(class="col-4",
                             tags$i(class=icon)),
                    tags$div(class="col-8 text-right",
                             tags$span(textTop),
                             tags$h2(class="font-bold", textSub))
           )
  )
}


widgetDanger <- function(icon = "fa fa-cloud", textTop = "Text top", textSub = "Text Sub") {
  icon = paste(icon, "fa-5x")
  
  tags$div(class="widget style1 red-bg",
           tags$div(class="row",
                    tags$div(class="col-4",
                             tags$i(class=icon)),
                    tags$div(class="col-8 text-right",
                             tags$span(textTop),
                             tags$h2(class="font-bold", textSub))
           )
  )
}