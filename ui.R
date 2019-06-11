source("./interface.R")

ui <- htmlTemplate(filename = "index.html",
                   headDash = headerDash(),
                   menuDash = menuTopDash(title_site = "Dashboard"))