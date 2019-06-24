codeValueBoxExample <-
tabItem(tabName = "codeValueBox",
        fluidRow(
          column(
            width = 12,
            box(
              boxTitle(title = "valueBox()", boxTools(collapseLink())),
              boxContent(
HTML('
<pre class="R">
valueBox(
  icon = icon("cloud"),
  textTop = "Topo",
  textSub = "Sub",
  status = "danger"
)
</pre>
')
              )
            )
          )
        ),
        fluidRow(
          column(
            width = 12,
            box(
              boxTitle(title = "infoProgress()", boxTools(collapseLink())),
              boxContent(
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
')
              )
            )
          )
        ),
        fluidRow(
          column(
            width = 12,
            box(
              boxTitle(title = "infoMetric()", boxTools(collapseLink())),
              boxContent(
                tags$small(strong("colorPercent => "), span(class="bg-primary", "text-navy"), span(class="bg-danger", "text-danger")),
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
            )
          )
        )

    
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