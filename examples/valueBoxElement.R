valueBoxElement <- 
  tabItem(tabName = "valueBoxElement",
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
                         subTitle = "Total income", 
                         value = "999,99", 
                         percent = "77%", 
                         icon = icon("bolt"))
            ),
            column(
              width = 3,
              infoProgress(title = "Título",
                           subTitle = "Sub título",
                           value = "56",
                           status = "primary")
            )
          )
  )