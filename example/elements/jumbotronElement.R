jumbotronElement <-
tabItem(tabName = "jumbotronElement",
        fluidRow(
          column(
            width = 12,
            box(
              jumbotron(
                tags$h1("Jumbotron")
              )
            )
          )
        ),
        fluidRow(
          column(
            width = 12,
HTML('
<pre class="R">
fluidRow(
  column(
    width = 12,
    box(
      jumbotron(
        tags$h1("Jumbotron")
      )
    )
  )
)
</pre>
')
          )
        )


)