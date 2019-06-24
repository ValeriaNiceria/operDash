alertElement <-
tabItem(tabName = "alertElement",
        fluidRow(
          column(
            width = 12,
            box(
              boxContent(
                alert(message = "Alert message success", 
                      status = "success"
                ),
                alert(message = "Alert message info", 
                      status = "info"
                ),
                alert(message = "Alert message warning", 
                      status = "warning"
                ),
                alert(message = "Alert message danger", 
                      status = "danger"
                )
              )
            )
          )
        ),
        fluidRow(
          column(
            width = 12,
HTML('
<pre class="R">
alert(message = "Alert message success", 
      status = "success"
),
alert(message = "Alert message info", 
      status = "info"
),
alert(message = "Alert message warning", 
      status = "warning"
),
alert(message = "Alert message danger", 
      status = "danger"
)
</pre>
')
          )
        )
)