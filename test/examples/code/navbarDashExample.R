codeNavbarDashExample <-
tabItem(tabName = "codeNavbarDash",
        fluidRow(
          column(
            width = 12,
            box(
              boxTitle(title = "navbarDash()", boxTools(collapseLink())),
              boxContent(
HTML('
<pre class="R">
navbarDash(
  brand = "operDash",
  styleBrand = "color: white; background-color: #000;",
  linkBrand = "http...",
  ...
)
</pre>
')
              )
            )
          )
        ),
fluidRow(
  column(
    width = 6,
    box(
      boxTitle(title = "menuItem()", boxTools(collapseLink())),
      boxContent(
HTML('
<pre class="R">
menuItem(
  text = "Home",
  icon = icon("home"),
  tabName = "home",
  href = "http..."
)
</pre>
')
      )
    )
  ),
  column(
    width = 6,
    box(
      boxTitle(title = "menuDropdown()", boxTools(collapseLink())),
      boxContent(
HTML('
<pre class="R">
menuDropdown(
  text = "Lista",
  icon = icon("list"),
  ...
)
</pre>
')
      )
    )
  )
),
fluidRow(
  column(
    width = 6,
    box(
      boxTitle(title = "notification()", boxTools(collapseLink())),
      boxContent(
        tags$small(strong("status =>"), span(class="bg-muted", "default"), span(class="bg-primary", "primary"), span(class="bg-success", "success"), span(class="bg-info", "info"), span(class="bg-warning", "warning"), span(class="bg-danger", "danger")),
HTML('
<pre class="R">
notification(
  icon = icon("envelope"),
  label = "10",
  status = "warning",
  ...
)
</pre>
')
      )
    )
  ),
  column(
    width = 6,
    box(
      boxTitle(title = "notificationItem()", boxTools(collapseLink())),
      boxContent(
HTML('
<pre class="R">
notificationItem(
  icon = icon("user", class="fa-3x"),
  title = "Usuário logado",
  message = "Novo usuário",
  time = "12:50"
  ...
)
</pre>
')
      )
    )
  )
),
  fluidRow(
    column(
      width = 12,
      box(
        boxTitle(title = "Exemplo:", boxTools(collapseLink())),
        boxContent(
          HTML('
<pre class="R">
navbar = navbarDash(brand = "operDash",
  menuLeft(
    menuItem(text = "Home", 
      icon = icon("home"), 
      tabName = "home"),
    
    menuDropdown(text = "Lista", icon = icon("list"),
      menuItem(
        text = "Compras",
        tabName = "compras")
      )
    )
  ),
  menuRight(
    notification(icon = icon("envelope"), label = "1",
      notificationItem(
        icon = icon("user", class="fa-3x"),
        title = "novo usuário",
        message = "Foi um criado novo usuário", 
        time = "14:41"),
      notificationItem(
        icon = icon("user", class="fa-3x"),
        title = "novo usuário",
        message = "Foi um criado novo usuário", 
        time = "14:41")
    ),
    menuItem(text = "Logout", 
      icon = tags$i(class="fas fa-sign-out-alt"), 
      tabName = "logout")
  )
)
</pre>
')
        )
      )
    )
  )

)