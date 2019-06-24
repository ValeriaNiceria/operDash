buttonsElement <-
tabItem(tabName = "buttonsElement",
        
        # appButton()
        fluidRow(
          column(
            width = 6,
            box(class="text-center",
                appButton(), div(style="height: 23px"),
                appButton(status = "primary"), div(style="height: 23px"),
                appButton(status = "info"), div(style="height: 23px"),
                appButton(status = "success"), div(style="height: 23px"),
                appButton(idButton="danger",
                          label = "Danger",
                          status = "danger")
                
            )
        ),
        column(
          width = 6,
HTML('
<pre class="R">
appButton(),

appButton(status = "primary"),

appButton(status = "info"),

appButton(status = "success"),

appButton(idButton="danger",
          label = "Danger",
          status = "danger"
)
</pre>
')
        )
      ),


fluidRow(style="margin-top: 30px",
  column(
    width = 6,
    box(class="text-center", style="margin-top: 50px;",
        appCircleButton(icon = icon("check")),
        
        appCircleButton(icon = icon("check"), 
                        status = "primary",
                        lg = TRUE),
        
        appCircleButton(icon = icon("check"),
                        status = "info",
                        lg = TRUE),
        
        appCircleButton(icon = icon("check"),
                        status = "danger",
                        lg = FALSE)
        
    )
  ),
  column(
    width = 6,
HTML('
<pre class="R">
appCircleButton(icon = icon("check")),
                
appCircleButton(icon = icon("check"),
                status = "primary",
                lg = TRUE
),

appCircleButton(icon = icon("check"),
                status = "info",
                lg = TRUE
),

appCircleButton(icon = icon("check"),
                status = "danger",
                lg = FALSE
)
</pre>
')
    )
    )
            
)