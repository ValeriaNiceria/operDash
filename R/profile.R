profile <- function(width = 12, title = NULL, subTitle = NULL, src = NULL, content = NULL, ...) {
  width = paste0("col-lg-", width)
  shiny::tags$div(class=width,
                  shiny::tags$div(class="widget-head-color-box navy-bg p-lg text-center",
                                  shiny::tags$div(class="m-b-md",
                                                  shiny::tags$h2(class="font-bold no-margins", title),
                                                  shiny::tags$small(subTitle)
                             ),
                             shiny::tags$img(src = src, class="rounded-circle circle-border m-b-md", alt="profile", style="width:140px")
                    ),
                  shiny::tags$div(class="widget-text-box", content ),

           ...
           )
}
