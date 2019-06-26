codeBodyDashExample <-
tabItem(tabName = "codeBodyDash",
        fluidRow(
          column(
            width = 12,
            box(
              boxTitle(title = "bodyDash()", boxTools(collapseLink())),
              boxContent(
HTML('
<pre class="R">
bodyDash(...)
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
              boxTitle(title = "tabItem()", boxTools(collapseLink())),
              boxContent(
HTML('
<pre class="R">
tabItem(
  tabName = "home",
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
              boxTitle(title = "Exemplo", boxTools(collapseLink())),
              boxContent(
HTML('
<pre class="R">
body = bodyDash(
  tabItem(
    tabName = "home",
    ...  
  )
)
</pre>
')
              )
            )
          )
        )
)
