label <- function(label = "label", status = "success", float = "right", ...) {
  labelType = paste0("label-", status)
  labelFloat = paste0("float-", float)
  classValue = paste("label", labelType, labelFloat)
  
  tags$span(class=classValue, label, ...)
}

collapseLink <- function() {
  tags$a(class="collapse-link float-right",
         tags$i(class="fa fa-chevron-up"))
}

closeLink <- function() {
  tags$a(class="close-link float-right",
         tags$i(class="fa fa-times"))
}


infoLink <- function(icon = NULL, message = NULL, ...) {
  icon = if (is.null(icon)) icon("info")
     tags$a(class="wm-tooltip float-right",
            `data-tooltip`="Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.",
            icon
      )
}


boxTools <- function(...) {
  tags$div(class="ibox-tools",
           ...
           )
}


boxTitle <- function(..., title = "iboxTitle", color = NULL) {
  colorTitle = if(!is.null(color)) paste0("color: white; background-color:", color)
  tags$div(class = "ibox-title", style=colorTitle,
           tags$h5(title),
           ...
           )
}


boxContent <- function(...) {
  tags$div(class = "ibox-content",
           ...
           )
}


box <- function(...) {
  tags$div(class = "ibox",
           ...
           )
}