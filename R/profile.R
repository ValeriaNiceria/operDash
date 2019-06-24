profile <- function(width = 12, title = NULL, subTitle = NULL, src = NULL, content = NULL, ...) {
  width = paste0("col-lg-", width)
  tags$div(class=width,
           tags$div(class="widget-head-color-box navy-bg p-lg text-center",
                    tags$div(class="m-b-md",
                             tags$h2(class="font-bold no-margins", title),
                             tags$small(subTitle)
                             ),
                    tags$img(src = src, class="rounded-circle circle-border m-b-md", alt="profile", style="width:140px")
                    ),
           tags$div(class="widget-text-box", content ),
           
           ...
           )
}