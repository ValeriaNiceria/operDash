codeBodyDashExample <-
tabItem(tabName = "codeBodyDash",
    tags$h3(class="font-bold", "bodyDash()"),
HTML('
<pre class="R">
bodyDash(...)
</pre>
'),


    tags$h3(class="font-bold", "tabItem()"),
HTML('
<pre class="R">
tabItem(
  tabName = "home",
  ...
)
</pre>
'),

    tags$h2(class="font-bold", "Exemplo:"),
HTML('
<pre class="R">
body = bodyDash(
  tabItem(tabName = "home",
    ...  
  )
)
</pre>
')
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