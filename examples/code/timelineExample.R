codeTimelineExample <-
tabItem(tabName = "codeTimeline",
    tags$h3(class="font-bold", "timelineBlock()"),
HTML('
<pre class="R">
timelineBlock(...)
</pre>
'),
    tags$h3(class="font-bold", "timelineItem()"),
    tags$small(strong("statusIcon =>"), span(class="bg-muted", "muted"), span(class="bg-primary", "primary"), span(class="bg-success", "success"), span(class="bg-info", "info"), span(class="bg-warning", "warning"), span(class="bg-danger", "danger")),
HTML('
<pre class="R">
timelineItem(
  icon = icon("briefcase"),
  statusIcon = "primary",
  title = "Título",
  content = "conteúdo da timeline",
  time = "20/06/2019"
)
</pre>
'),

    tags$h2(class="font-bold", "Exemplo"),
HTML('
<pre class="R">
box(
  boxContent(
    timelineBlock(
      timelineItem(
       icon = icon("briefcase"),
       statusIcon = "primary",
       title = "Título",
       content = tags$div(p("conteúdo teste timeline 2"), 
                          br(),
                          appButton(label = "mais...", 
                                  icon = icon("plus"), 
                                  status = "info")),
       time = tags$div("Today",
                      br(), 
                      icon("clock"), 
                      small("11:40"))
      )
    )
  )
)
</pre>
')
  
)

# fluidRow(
#   column(
#     width = 12,
#     box(
#       boxTitle(title = "Exemplo", boxTools(collapseLink())),
#       boxContent(
# 
#       )
#     )
#   )
# )