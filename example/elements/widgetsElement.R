widgets <- tabItem(
  tabName = "element_widgets",
  h2("Widgets"),

  h3("infoBox"),
  fluidRow(
    infoBox(width = 3, icon = icon("envelope-o"), text = "Message", value = "500"),
    infoBox(width = 3, bg_color ="red", icon = icon("envelope-o"), text = "Message", value = "500"),
    infoBox(width = 3, bg_color ="green", icon = icon("envelope-o"), text = "Message", value = "500"),
    infoBox(width = 3, bg_color ="yellow", bg_all = TRUE, icon = icon("envelope-o"), text = "Message", value = "500", progress = "45", progress_desc = "descrição progresso")
  ),

  # Code - Start ----
  fluidRow(
    column(
      width = 12,
      HTML('
<pre><code class="R">
  fluidRow(
    infoBox(width = 3, icon = icon("envelope-o"), text = "Message", value = "500"),
    infoBox(width = 3, bg_color ="red", icon = icon("envelope-o"), text = "Message", value = "500"),
    infoBox(width = 3, bg_color ="green", icon = icon("envelope-o"), text = "Message", value = "500"),
    infoBox(width = 3, bg_color ="yellow", bg_all = TRUE, icon = icon("envelope-o"), text = "Message", value = "500", progress = "45", progress_desc = "descrição progresso")
  )
</code></pre>
    ')
    )
  ),
  # Code - End ----

  h3("valueBox"),
  fluidRow(
    valueBox(width = 3, icon = icon("envelope-o"), text = "Message", value = "500"),
    valueBox(width = 3, bg_color ="red", icon = icon("envelope-o"), text = "Message", value = "500"),
    valueBox(width = 3, bg_color ="green", icon = icon("envelope-o"), text = "Message", value = "500"),
    valueBox(width = 3, bg_color ="yellow",icon = icon("envelope-o"), text = "Message", value = "500")
  ),

  # Code - Start ----
  fluidRow(
    column(width = 12,
           HTML('
<pre><code class="R">
  fluidRow(
    valueBox(width = 3, icon = icon("envelope-o"), text = "Message", value = "500"),
    valueBox(width = 3, bg_color ="red", icon = icon("envelope-o"), text = "Message", value = "500"),
    valueBox(width = 3, bg_color ="green", icon = icon("envelope-o"), text = "Message", value = "500"),
    valueBox(width = 3, bg_color ="yellow",icon = icon("envelope-o"), text = "Message", value = "500")
  )
</code></pre>
    ')
    )
  )
  # Code - End ----
)
