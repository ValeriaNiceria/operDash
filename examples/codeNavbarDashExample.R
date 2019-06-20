codeNavbarDashExample <-
tabItem(tabName = "codeNavbarDash",
    tags$h3(class="font-bold", "navbarDash()"),
HTML('
<pre class="R">
navbarDash(
  brand = "operDash",
  styleBrand = "color: white; background-color: #000;",
  linkBrand = "http...",
  ...
)
</pre>
'),

    tags$h3(class="font-bold", "menuItem()"),
HTML('
<pre class="R">
menuItem(
  text = "Home",
  icon = icon("home"),
  tabName = "home",
  href = "http..."
)
</pre>
'),


    tags$h3(class="font-bold", "menuDropdown()"),
HTML('
<pre class="R">
menuDropdown(
  text = "Lista",
  icon = icon("list"),
  ...
)
</pre>
'),

    tags$h3(class="font-bold", "notification()"),
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
'),

    tags$h3(class="font-bold", "notificationItem()"),
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
'),

    tags$h2(class="font-bold", "Exemplo:"),
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