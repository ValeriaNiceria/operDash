timelineElement <- 
tabItem(tabName = "timelineElement",
        box(
          boxTitle(title = "Timeline",
                   background = "#1ab394",
                   colorText = "white"),
          boxContent(
            timelineBlock(
              timelineItem(icon = icon("briefcase"),
                           title = "Título",
                           content = tags$div(p("conteúdo teste timeline"), br(),
                                              appButton(label = "mais...", icon = icon("plus"), status = "info")),
                           time = "20/06/2019"),
              
              timelineItem(icon = icon("briefcase"),
                           title = "Título2 ",
                           content = tags$div(p("conteúdo teste timeline 2"), br(),
                                              appButton(label = "mais...", icon = icon("plus"), status = "info")),
                           time = tags$div("Today", 
                                           br(), 
                                           icon("clock"), 
                                           tags$small("11:40")))
            )
          )
        ),
        fluidRow(
          column(
            width = 12,
HTML('
<pre class="R">
box(
  boxTitle(
    title = "Timeline",
    background = "#1ab394",
    colorText = "white"
  ),
  boxContent(
    timelineBlock(
      timelineItem(
        icon = icon("briefcase"),
        title = "Título",
        content = tags$div(
                    p("conteúdo teste timeline"), br(),
                    appButton(label = "mais...", 
                              icon = icon("plus"), 
                              status = "info"
                    )
                  ),
        time = "20/06/2019"
      ),
      timelineItem(
        icon = icon("briefcase"),
        title = "Título2 ",
        content = tags$div(
                    p("conteúdo teste timeline 2"), br(),
                    appButton(label = "mais...", 
                              icon = icon("plus"), 
                              status = "info"
                    )
                  ),
        time = tags$div("Today", 
                  br(), 
                  icon("clock"), 
                  tags$small("11:40")
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