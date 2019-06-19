valueBoxExample <- 
  tabItem(tabName = "valueBox",
          fluidRow(
            column(
              width = 3,
              valueBox(status = "default")),
            column(
              width = 3,
              valueBox(status = "primary")),
            column(
              width = 3,
              valueBox(status = "info")),
            column(
              width = 3,
              valueBox(status = "warning"))
          ),
          
          fluidRow(
            column(
              width = 3,
              valueBox(status = "danger")
            ),
            column(
              width = 3,
              infoMetric(title = "Income", 
                         value = "999,99", 
                         subTitle = "Total income", 
                         percent = "77%", 
                         icon = icon("bolt"))
            ),
            column(
              width = 3,
              infoProgress(title = "Título",
                           value = "56",
                           subTitle = "Sub título")
            )
          )
  )