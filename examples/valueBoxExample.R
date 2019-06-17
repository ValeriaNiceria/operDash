valueBoxExample <- 
  tabItem(tabName = "valueBox",
          fluidRow(
            column(
              width = 3,
              valueBox(type = "default")),
            column(
              width = 3,
              valueBox(type = "primary")),
            column(
              width = 3,
              valueBox(type = "info")),
            column(
              width = 3,
              valueBox(type = "warning"))
          ),
          
          fluidRow(
            column(
              width = 3,
              valueBox(type = "danger")
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