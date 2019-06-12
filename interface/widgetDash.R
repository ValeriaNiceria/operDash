widget <- function(icon = "fa fa-cloud", textTop = "Text top", textSub = "Text Sub", type = "default") {
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


widgetSimples <- function(icon = "fa fa-user", text = "100", type = "default") {
  icon = paste(icon, "fa-3x")
  
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
           tags$div(class="row vertical-align",
                    tags$div(class="col-3",
                             tags$i(class=icon)),
                    tags$div(class="col-9 text-right",
                             tags$h2(class="font-bold", text))
           )
  )
}

