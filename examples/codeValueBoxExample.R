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
    tags$small("status => primary, info, success, warning, danger"),
HTML('
<pre class="R">
infoProgress(
    title = "Título",
    value = "56",
    status = "danger",
    subTitle = "Sub",
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
    value = "56",
    subTitle = "Sub",
    percent = "60%",
    colorPercent = "text-navy",
    icon = icon("bolt"),
    ...
)
</pre>
')
)