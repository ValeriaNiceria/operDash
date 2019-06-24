progressBarElement <-
tabItem(tabName = "progressBarElement",
        fluidRow(
          column(
            width = 12,
            box(
              boxContent(
                progressBar(
                  status = "success",
                  animated = FALSE,
                  value = 75
                ),
                progressBar(
                  status = "info",
                  animated = TRUE,
                  value = 45
                ),
                progressBar(
                  status = "warning",
                  animated = FALSE,
                  value = 63
                ),
                progressBar(
                  status = "danger",
                  animated = TRUE,
                  value = 88
                )
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
           boxContent(
             progressBar(
               status = "success",
               animated = FALSE,
               value = 75
             ),
             progressBar(
               status = "info",
               animated = TRUE,
               value = 45
             ),
             progressBar(
               status = "warning",
               animated = FALSE,
               value = 63
             ),
             progressBar(
               status = "danger",
               animated = TRUE,
               value = 88
             )
          )
        )
      )
    )
</pre>
')
          )
        )
)