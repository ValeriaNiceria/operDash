codePageDashExample <- 
tabItem(tabName = "pageDash",
        tags$h3(class="text-center font-bold", "pageDash()"),
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