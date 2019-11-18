metricElement <- tabItem(
  tabName = "metricElement",
  title = "Metrics",

  fluidRow(
    metric(
      title = "Teste metric"
    ),
    metric(
      title = "2º Teste metric",
      status = "down",
      subtitle = "metric teste"
    ),

    # Code - Start
    column(
      width = 6,
      HTML('
<pre><code class="R">
  fluidRow(
    metric(
      title = "Teste metric"
    ),
    metric(
      title = "2º Teste metric",
      status = "down",
      subtitle = "metric teste"
    )
  )
</code></pre>
    ')
    )
    # Code - End
  ),


  fluidRow(
    metricProgress(
      title = "Teste",
      value = 60,
      subtitle = "testando"
    ),
    metricProgress(
      title = "Teste",
      value = 60,
      subtitle = "testando",
      status = "danger"
    ),

    # Code - Start
    column(
      width = 6,
      HTML('
<pre><code class="R">
   fluidRow(
    metricProgress(
      title = "Teste",
      value = 60,
      subtitle = "testando"
    ),
    metricProgress(
      title = "Teste",
      value = 60,
      subtitle = "testando",
      status = "danger"
    )
  )
</code></pre>
    ')
    )
    # Code - End
  ),

  fluidRow(
    metricBox(
      title = "Testando",
      value = "1.500",
      percent = "63",
      subtitle = "teste"
    ),
    metricBox(
      title = "Testando",
      value = "1.500",
      percent = "63",
      subtitle = "teste",
      status = "danger"
    ),

    # Code - Start
    column(
      width = 6,
      HTML('
<pre><code class="R">
   fluidRow(
    metricBox(
      title = "Testando",
      value = "1.500",
      percent = "63",
      subtitle = "teste"
    ),
    metricBox(
      title = "Testando",
      value = "1.500",
      percent = "63",
      subtitle = "teste",
      status = "danger"
    )
  )
</code></pre>
    ')
    )
    # Code - End
  )
)
