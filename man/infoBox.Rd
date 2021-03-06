% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/widgets.R
\name{infoBox}
\alias{infoBox}
\title{infoBox}
\usage{
infoBox(width = 12, bg_color = "aqua", icon = NULL, text = NULL,
  value = NULL, progress = NULL, progress_desc = NULL,
  bg_all = FALSE)
}
\arguments{
\item{width}{Largura da box, podendo ser utilizados os valores entre 1 e 12.}

\item{bg_color}{Cor de fundo do ícone, podendo ser utilizado os valores: aqua, green, yellow e red.}

\item{icon}{Ícone}

\item{text}{Texto}

\item{value}{Valor}

\item{progress}{Número da linha de progresso, podendo ser de 1 à 100.}

\item{progress_desc}{Descrição que será adicionado abaixo da linha de progresso.}

\item{bg_all}{Pode-se passar o valor TRUE, se deseja que a box inteira fique colorida.}
}
\description{
Uma caixa de informação.
}
