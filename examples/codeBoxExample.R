codeBoxExample <- 
tabItem(tabName = "codeBox",
    tags$h3(class="font-bold", "box()"),
HTML('
<pre class="R">
box(...)
</pre>
'),

    tags$h3(class="font-bold", "boxTitle()"),
HTML('
<pre class="R">
boxTitle(
  title = "Título box",
  color = "#00a7d0",
  ...
)
</pre>
'),

    tags$h3(class="font-bold", "boxContent()"),
HTML('
<pre class="R">
boxContent(...)
</pre>
'),

    tags$h3(class="font-bold", "boxTools()"),
HTML('
<pre class="R">
boxTools(...)
</pre>
'),

    tags$h3(class="font-bold", "closeLink()"),
HTML('
<pre class="R">
closeLink()
</pre>
'),

    tags$h3(class="font-bold", "collapseLink()"),
HTML('
<pre class="R">
collapseLink()
</pre>
'),

    tags$h3(class="font-bold", "label()"),
    tags$small("status => default, primary, info, success, warning, danger"),
    tags$br(),
    tags$small("float => left, right"),
HTML('
<pre class="R">
label(
  label = "trabalhando",
  status = "success",
  float = "right",
  ...
)
</pre>
')
)