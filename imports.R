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
source("./R/pageDash.R", encoding = "UTF-8")
source("./R/headDash.R", encoding = "UTF-8")
source("./R/navbarDash.R", encoding = "UTF-8")
source("./R/sidebarDash.R", encoding = "UTF-8")
source("./R/bodyDash.R", encoding = "UTF-8")
source("./R/tabItem.R", encoding = "UTF-8")
source("./R/box.R", encoding = "UTF-8")
source("./R/infoBox.R", encoding = "UTF-8")
source("./R/elements.R", encoding = "UTF-8")
source("./R/carousel.R", encoding = "UTF-8")
source("./R/tabBox.R", encoding = "UTF-8")
source("./R/panel.R", encoding = "UTF-8")
source("./R/notifications.R", encoding = "UTF-8")
source("./R/timeline.R", encoding = "UTF-8")
source("./R/footerDash.R", encoding = "UTF-8")
source("./R/footerScriptsDash.R", encoding = "UTF-8")




####################################
###     Caminho dos exemplos     ###
####################################
source("./examples/boxExample.R", encoding = "UTF-8")
source("./examples/valueBoxExample.R", encoding = "UTF-8")
source("./examples/buttonsElements.R", encoding = "UTF-8")
source("./examples/jumbotronElement.R", encoding = "UTF-8")
source("./examples/alertElement.R", encoding = "UTF-8")
source("./examples/progressBarElement.R", encoding = "UTF-8")
source("./examples/carouselElement.R", encoding = "UTF-8")
source("./examples/panelElement.R", encoding = "UTF-8")
source("./examples/timelineElement.R", encoding = "UTF-8")
source("./examples/codePageDashExample.R", encoding = "UTF-8")
source("./examples/codeNavbarDashExample.R", encoding = "UTF-8")
source("./examples/codeBodyDashExample.R", encoding = "UTF-8")
source("./examples/codeBoxExample.R", encoding = "UTF-8")
source("./examples/codeValueBoxExample.R", encoding = "UTF-8")
source("./examples/codeElementsExample.R", encoding = "UTF-8")
source("./examples/codePanelExample.R", encoding = "UTF-8") 
source("./examples/codeTimelineExample.R", encoding = "UTF-8")