codeProfileExample <-
tabItem(
  tabName = "codeProfile",
  fluidRow(
    column(
      width = 12,
      box(
        boxTitle(title = "profile()", boxTools(collapseLink())),
        boxContent(
HTML('
<pre class="R">
profile(
  width = 8,
  title = "Título",
  subTitle = "Subtítulo",
  src = "img/user.jpeg",
  content = "conteúdo"
)
</pre>
')
        )
      )
    )
  )
)