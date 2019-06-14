infoMetric <- function(title = NULL, value = NULL, subTitle = NULL, percent = "0%", colorPercent = "text-navy", icon = NULL, ...) {
  # color percent - text-navy - text-danger
  classTextPercent = paste("stat-percent font-bold", colorPercent)
  
  tags$div(class="box",
           tags$div(class="ibox-content",
                    tags$h5(title),
                    tags$h1(class="no-margins", value),
                    tags$div(class=classTextPercent,
                             percent, icon),
                    tags$small(subTitle)
           ),
           
           ...
           
  )
}
  
  
infoProgress <- function(..., title = NULL, value = "33%", colorProgress = NULL, subTitle = NULL) {
  styleProgress = paste0("width:", value)
  classProgress = paste("progress-bar")
  tags$div(class="ibox",
           tags$div(class="ibox-content",
                    tags$h5(title),
                    tags$h2(value),
                    tags$div(class="progress progress-mini",
                             tags$div(style=styleProgress, class=classProgress)
                             ),
                    tags$div(class="m-t-sm small", subTitle)
                      
           ),
           
           ...
  )
}


valueBox <- function(icon = "fa fa-cloud", textTop = "textTop", textSub = "textSub", type = "default") {
  icon = paste(icon, "fa-5x")
  
  switch(type, 
         default={
           widgetClass = "widget style1"
         },
         primary={
           widgetClass = "widget style1 navy-bg"    
         },
         info={
           widgetClass = "widget style1 lazur-bg"    
         },
         warning={
           widgetClass = "widget style1 yellow-bg"    
         },
         danger={
           widgetClass = "widget style1 red-bg"    
         },
         {
           widgetClass = "widget style1"
         }
  )
  
  tags$div(class=widgetClass,
           tags$div(class="row",
                    tags$div(class="col-4",
                             tags$i(class=icon)),
                    tags$div(class="col-8 text-right",
                             tags$span(textTop),
                             tags$h2(class="font-bold", textSub))
           )
  )
}