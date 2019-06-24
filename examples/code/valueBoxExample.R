codeValueBoxExample <-
tabItem(tabName = "codeValueBox",
    tags$h3(class="font-bold", "valueBox()"),
HTML('
<pre class="R">
valueBox(
  icon = icon("cloud"),
  textTop = "Topo",
  textSub = "Sub",
  status = "danger"
)
</pre>
'),

    tags$h3(class="font-bold", "infoProgress()"),
    tags$small(strong("status =>"), span(class="bg-primary", "primary"), span(class="bg-success", "success"), span(class="bg-info", "info"), span(class="bg-warning", "warning"), span(class="bg-danger", "danger")),
HTML('
<pre class="R">
infoProgress(
    title = "Título",
    subTitle = "Sub",
    value = "56",
    status = "danger",
    ...
)
</pre>
'),

    tags$h3(class="font-bold", "infoMetric()"),
    tags$small("colorPercent => text-navy, text-danger"),
HTML('
<pre class="R">
infoMetric(
    title = "Título",
    subTitle = "Sub",
    value = "56",
    percent = "60%",
    colorPercent = "text-navy",
    icon = icon("bolt"),
    ...
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