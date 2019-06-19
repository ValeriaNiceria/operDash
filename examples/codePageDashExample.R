codePageDashExample <- 
tabItem(tabName = "codePageDash",
        tags$h3(class="font-bold", "pageDash()"),
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
'),

    tags$h3(class="font-bold", "headDash()"),
HTML('
<pre class="R">
headDash(...)
</pre>
'),

tags$h3(class="font-bold", "footerScriptsDash()"),
HTML('
<pre class="R">
footerScriptsDash(...)
</pre>
')
)