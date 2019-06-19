#########################
# Carregando os pacotes #
#########################
library(shiny)
library(shinyWidgets)
library(htmltools)
library(htmlwidgets)
library(dplyr)
library(highcharter)




####################################
# Caminho das funções de interface #
####################################
source("./R/pageDash.R")
source("./R/headDash.R")
source("./R/navbarDash.R")
source("./R/sidebarDash.R")
source("./R/bodyDash.R")
source("./R/tabItem.R")
source("./R/box.R")
source("./R/infoBox.R")
source("./R/elements.R")
source("./R/tabBox.R")
source("./R/panel.R")
source("./R/notifications.R")
source("./R/carouselDash.R")
source("./R/footerDash.R")
source("./R/footerScriptsDash.R")




####################################
###     Caminho dos exemplos     ###
####################################
source("./examples/boxExample.R", encoding = 'UTF-8')
source("./examples/valueBoxExample.R", encoding = 'UTF-8')
source("./examples/elementsExample.R", encoding = 'UTF-8')
source("./examples/panelExample.R", encoding = 'UTF-8')
source("./examples/carouselExample.R", encoding = 'UTF-8')
source("./examples/codePageDashExample.R", encoding = 'UTF-8')
source("./examples/codeNavbarDashExample.R", encoding = 'UTF-8')
source("./examples/codeBodyDashExample.R", encoding = 'UTF-8')