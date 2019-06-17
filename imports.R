#########################
# Carregando os pacotes #
#########################
library(shiny)
library(shinyWidgets)
library(htmltools)
library(htmlwidgets)
library(dplyr)





####################################
# Caminho das funções de interface #
####################################
source("./R/pageDash.R")
source("./R/headerDash.R")
source("./R/navbarDash.R")
source("./R/bodyDash.R")
source("./R/tabItem.R")
source("./R/box.R")
source("./R/infoBox.R")
source("./R/elements.R")
source("./R/tabBox.R")
source("./R/panel.R")
source("./R/footerDash.R")
source("./R/footerScriptsDash.R")




####################################
###     Caminho dos exemplos     ###
####################################
source("./examples/boxExample.R", encoding = 'UTF-8')
source("./examples/valueBoxExample.R", encoding = 'UTF-8')
source("./examples/elementsExample.R", encoding = 'UTF-8')
source("./examples/panelExample.R", encoding = 'UTF-8')