codeNavbarDashExample <-
tabItem(tabName = "navbarDash",
    tags$h3(class="font-bold", "pageDash()"),
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


    tags$h2(class="text-center font-bold", "Exemplo"),
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
    menuItem(text = "Logout", 
            icon = tags$i(class="fas fa-sign-out-alt"), 
            tabName = "logout")
  )
)
</pre>
')
)