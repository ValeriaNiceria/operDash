codePageDashExample <- 
tabItem(tabName = "codePageDash",
        fluidRow(
          column(
            width = 12,
            box(
              boxTitle(title = "pageDash()", boxTools(collapseLink())),
              boxContent(
                HTML('
<pre class="R">
pageDash(
  title = "operDash",
  header = headDash(),
  navbar = navbarDash(),
  body = bodyDash(),
  footer = footerDash(),
  footerScripts = footerScriptsDash(),
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
    width = 6,
    box(
      boxTitle(title = "headDash()", boxTools(collapseLink())),
      boxContent(
HTML('
<pre class="R">
headDash(...)
</pre>
')
      )
    )
  ),
  column(
  width = 6,
  box(
    boxTitle(title = "footerScriptsDash()", boxTools(collapseLink())),
    boxContent(
HTML('
<pre class="R">
footerScriptsDash(...)
</pre>
')
      )
    )
  )
)
)