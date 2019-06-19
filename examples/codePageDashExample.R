codePageDashExample <- 
tabItem(tabName = "pageDash",
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

    tags$h2(class="text-center font-bold", "Exemplo")
)