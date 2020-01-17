#' @title Carousel
#' @name carousel
#' @encoding UTF-8
#'
#' @description Função principal do carousel, onde poderá ser adicionado \code{carouselItem}.
#'
#' @param ... Itens que serão adicionados no carousel
#'
#'
#' @export

carousel <- function(...) {
  id_carousel = "carousel-example-generic"

  itens <- list(...)

  generateItens <- function(itens) {
    lapply(1:length(itens), FUN = function(i) {

      shiny::tags$li(
        `data-target` = paste0("#",id_carousel),
        `data-slide-to` = i - 1,
        class = if (i == 1) "active" else NULL
      )
    })
  }


  generateSlide <- function(itens) {
    lapply(1:length(itens), FUN = function(i) {

      shiny::tags$div(
        class = if (i == 1) "item active" else "item",
        itens[[i]]
      )
    })
  }

  shiny::tags$div(
    id=id_carousel,
    class="carousel slide",
    `data-ride`="carousel",

    shiny::tags$ol(
      class="carousel-indicators",
      generateItens(itens)
    ),

    shiny::tags$div(
      class="carousel-inner",
      generateSlide(itens)
    ),

    shiny::tags$a(
      class="left carousel-control",
      href=paste0("#",id_carousel),
      `data-slide`="prev",
      shiny::tags$span(
        class="fa fa-angle-left"
      )
    ),
    shiny::tags$a(
      class="right carousel-control",
      href=paste0("#",id_carousel),
      `data-slide`="next",
      shiny::tags$span(
        class="fa fa-angle-right"
      )
    )

  )
}


#' @title Carousel Item
#' @name carouselItem
#' @encoding UTF-8
#'
#' @description Item do carousel, podendo passar uma imagem e um título.
#'
#' @param title Título que será adicionado em cada slide.
#' @param src Caminho da imagem.
#'
#'
#' @export

carouselItem <- function(title = NULL, src = NULL) {
  shiny::tagList(
    shiny::tags$img(
      src=src
    ),
    shiny::tags$div(
      class="carousel-caption",
      title
    )
  )
}


#' @title Alert
#' @name alert
#' @encoding UTF-8
#'
#' @description Uma mensagem de alerta.
#'
#' @param width Largura do alerta.
#' @param status O status do alerta, podendo utilizar os valores: danger, info, warning, success.
#' @param icon Ícone que será utilizado no título do alerta.
#' @param title Título do alerta.
#' @param message Mensagem do alerta.
#' @param close Um botão para fechar o alerta.
#'
#'
#' @export
alert <- function(width = 12, status = "success",
                  icon = NULL, title = NULL,
                  message = NULL, close = FALSE) {

  width = paste0("col-sm-", width)
  status = paste0("alert-", status)
  class_alert = paste("alert", status, "alert-dismissible")

  if (isTRUE(close)) {
    close = shiny::tags$button(
      type="button",
      class="close",
      `data-dismiss`="alert",
      `aria-hidden`="true",
      "x"
    )
  } else {
    close = NULL
  }

  if (!is.null(icon) | !is.null(title)) {
    title = shiny::tags$h4(
      icon,
      title
    )
  }

  shiny::div(
    class=width,
    shiny::div(
      class=class_alert,
      close,
      title,
      message
    )
  )
}




#' @title Callout
#' @name callout
#' @encoding UTF-8
#'
#' @description Um caixa com alguma mensagem.
#'
#' @param width Largura da mensagem.
#' @param status O status da mensagem, podendo utilizar os valores: danger, info, warning, success.
#' @param title Título da mensagem.
#' @param message Mensagem que será exibida, na caixa de mensagem.
#'
#'
#' @export
callout <- function(width = 12, status = "success", title = NULL, message = NULL) {
  width = paste0("col-sm-", width)
  status = paste0("callout-", status)
  class_callout = paste("callout", status)

  if (!is.null(title)) {
    title = shiny::tags$h4(title)
  }

  if (!is.null(message)) {
    message = shiny::tags$p(message)
  }

  shiny::div(
    class=width,
    shiny::div(
      class=class_callout,
      title,
      message
    )
  )
}



#' @title Progress Bar
#' @name progressBar
#' @encoding UTF-8
#'
#'
#' @description Uma barra de progresso.
#'
#' @param width Largura da mensagem.
#' @param value O valor da barra de progresso, esse valor deverá ser entre 0 e 100.
#' @param status O status da barra de progresso, podendo ser utilizado os valores: primary, success, warning, danger.
#' @param animated Caso seja passado o valor TRUE, a barra de progresso ficará animada.
#'
#'
#' @export
progressBar <- function(width = 12, value = 100, status = "success", animated = FALSE) {
  width = paste0("col-sm-", width)
  status = paste0("progress-bar-", status)
  striped = if (isTRUE(animated)) "progress-bar-striped"

  if (is.null(animated) | isFALSE(animated)) {
    progress_bar = "progress"
  } else {
    progress_bar = "progress active"
  }


  shiny::tags$div(
    class=width,
    shiny::tags$div(
      class=progress_bar,

      shiny::tags$div(
        class=paste("progress-bar", status, striped),
        role="progressbar",
        `aria-valuenow`=value,
        `aria-valuemin`=0,
        `aria-valuemax`=100,
        style=paste0("width:", value, "%")
      )
    )
  )

}



#' @title Collapsible
#' @name collapsible
#' @encoding UTF-8
#'
#' @description Função principal, responsável por agrupar o \code{collapsibleItem}.
#'
#' @param width Largura da mensagem.
#' @param ... Itens que serão adicionados ao collapsible.
#'
#'
#' @export
collapsible <- function(..., width = 12) {
  width = paste0("col-sm-", width)

  shiny::tags$div(
    class=width,
    shiny::tags$div(
      class="box-group",
      id="accordion",

      ...

    )
  )

}



#' @title Collapsible Item
#' @name collapsibleItem
#' @encoding UTF-8
#'
#' @description Box de informação, onde o seu conteúdo poderá ser colapsado.
#'
#' @param id Um identificador para o collapsibleItem, esse identificador deverá ser único e não poderá ter carácter especial.
#' @param title Um título para o collapsibleItem.
#' @param icon Ícone que será exibido no título.
#' @param color Cor da borda superior da box, podendo utilizar os valores: primary, success, warning, danger.
#' @param ... Conteúdo do collapsibleItem.
#'
#' @export
collapsibleItem <- function(..., id = NULL, title = NULL, icon = NULL, color = "default") {
  if (is.null(id)) {
    stop("E necessario informar um id para o collapsibleItem")
  }

  color = paste0("box-", color)
  class_box = paste("panel box", color)
  id_item <- iconv(id, from = 'UTF-8', to = 'ASCII//TRANSLIT')
  id_item <- stringr::str_replace_all(trimws(tolower(id_item)), " ", "_")

  if (!is.null(icon)) {
    icon = shiny::tags$span(
      class="collapse-icon",
      icon
    )
  }

  shiny::tags$div(
    class=class_box,
    shiny::tags$div(
      class="box-header with-border",
      # Titulo
      shiny::tags$h4(
        class="box-title",
        shiny::tags$a(
          `data-toggle`="collapse",
          `data-parent`="#accordion",
          href=paste0("#",id_item),
          `aria-expanded`="false",
          class="collapsed",
          icon,
          title
        )
      ),
      # Conteudo
      shiny::tags$div(
        id=id_item,
        class="panel-collapse collapse",
        `aria-expanded`="false",
        style="height: 0px;",
        shiny::tags$div(
          class="box-body",
          ...
        )
      )
    )
  )
}



#' @title Timeline
#' @name timeline
#' @encoding UTF-8
#'
#' @description Função principal da timeline, onde as outras funções \code{timelineLabel} e
#' \code{timelineItem} poderam ser adicionadas à timeline.
#'
#' @param ... Itens adicionais.
#' @param width Largura da timeline
#'
#'
#' @export
timeline <- function(..., width = 12) {
  width = paste0("col-sm-", width)

  shiny::tags$div(
    class=width,
    shiny::tags$ul(
      class="timeline",
      ...
    )
  )

}


#' @title Timeline Label
#' @name timelineLabel
#' @encoding UTF-8
#'
#' @description Um caixa de texto.
#'
#' @param color Cor da label, podendo utilizar os valores: red, green, blue, yellow.
#' @param text Texto que será exibido na label.
#'
#'
#' @export
timelineLabel <- function(color = "green", text = NULL) {
  color = paste0("bg-", color)

  shiny::tags$li(
    class="time-label",
    shiny::tags$span(
      class=color,
      text
    )
  )
}


#' @title Timeline Item
#' @name timelineItem
#' @encoding UTF-8
#'
#' @description Item que será adicionado à timeline.
#'
#' @param icon Ícone que será utilizado para marcar o tempo na timeline.
#' @param icon_color Cor do ícone, podendo utilizar os valores: blue, red, green, yellow.
#' @param time Tempo que será exibido na timeline Item.
#' @param title Título da timelineItem.
#' @param content Conteúdo da timelineItem.
#' @param footer Conteúdo que será adicionado na parte inferior do item da timeline.
#'
#'
#' @export
timelineItem <- function(icon = NULL, icon_color = NULL,
                         time = NULL, title = NULL,
                         content = NULL, footer = NULL) {

  icon_color = paste0("bg-", icon_color)

  shiny::tags$li(
    shiny::tags$span(
      class=paste("timeline-icon-color", icon_color),
      icon
    ),
    shiny::tags$div(
      class="timeline-item",
      shiny::tags$div(class="timeline-seta"),
      shiny::tags$span(
        class="time",
        icon("clock-o"),
        time
      ),

      shiny::tags$h3(
        class="timeline-header",
        title
      ),

      shiny::tags$div(
        class="timeline-body",
        content
      ),

      shiny::tags$div(
        class="timeline-footer",
        footer
      )
    )
  )
}



