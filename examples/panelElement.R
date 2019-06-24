panelElement <-
  tabItem(tabName = "panelElement",
          fluidRow(
            column(
              width = 4,
              panel(title = "Título")
            ),
            column(
              width = 4,
              panel(title = "Título",
                    body = "conteúdo",
                    status = "primary",
                    footer = "Rodapé")
            ),
            column(
              width = 4,
              panel(body = "conteúdo",
                    status = "success")
            )
            
          ),
          fluidRow(
            column(
              width = 4,
              panel(title = "Título",
                    body = "conteúdo",
                    status = "info")
            ),
            column(
              width = 4,
              panel(title = "Título",
                    body = "conteúdo",
                    status = "warning")
            ),
            column(
              width = 4,
              panel(title = "Título",
                    body = "conteúdo",
                    status = "danger")
            )
            
          ),
          fluidRow(
            column(
              width = 12,
HTML('
<pre class="R">
fluidRow(
  column(
    width = 4,
    panel(
      title = "Título"
    )
  ),
  column(
    width = 4,
    panel(
      title = "Título",
      body = "conteúdo",
      status = "primary",
      footer = "Rodapé"
    )
  ),
  column(
    width = 4,
    panel(
      body = "conteúdo",
      status = "success"
    )
  )

),
fluidRow(
    column(
    width = 4,
    panel(
      title = "Título",
      body = "conteúdo",
      status = "info"
    )
  ),
  column(
    width = 4,
    panel(
      title = "Título",
      body = "conteúdo",
      status = "warning"
    )
  ),
  column(
    width = 4,
    panel(
      title = "Título",
      body = "conteúdo",
      status = "danger"
    )
  )
)
</pre>
')
              )
            ),

fluidRow(
HTML('
<div class="ibox-content">
    <div class="panel-body">
     <div class="panel-group" id="accordion">
     <div class="panel panel-default">
     <div class="panel-heading">
     <h5 class="panel-title">
     <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Collapsible Group Item #1</a>
     </h5>
     </div>
     <div id="collapseOne" class="panel-collapse collapse in">
     <div class="panel-body">
     Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
     </div>
     </div>
     </div>
     <div class="panel panel-default">
     <div class="panel-heading">
     <h4 class="panel-title">
     <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Collapsible Group Item #2</a>
     </h4>
     </div>
     <div id="collapseTwo" class="panel-collapse collapse">
     <div class="panel-body">
     Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
     </div>
     </div>
     </div>
     <div class="panel panel-default">
     <div class="panel-heading">
     <h4 class="panel-title">
     <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Collapsible Group Item #3</a>
     </h4>
     </div>
     <div id="collapseThree" class="panel-collapse collapse">
     <div class="panel-body">
     Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
     </div>
     </div>
     </div>
     </div>
     </div>
     </div>
     
')
  )
)