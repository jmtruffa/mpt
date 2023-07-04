#' Establece algunas características estéticas de los gráficos
#' de Mercados para Todos
#'
#' @details
#' Define el theme con menos rayas horizontales y verticales.
#' Posición de la leyenda.
#' Pone el título en bold.
#'
#' #'
#' @returns No devuelve valores
#'
#' @examples ggplot() + theme_mpt() -> Establece los parámetros al theme
#'
theme_mpt <- function(){
  tidyquant::theme_tq() %+replace%
    theme(
      panel.grid.major.x = element_blank(),
      panel.grid.minor.y = element_blank(),
      legend.position = c(0.125, .945),
      legend.background = element_blank(),
      title = element_text(size=12, face='bold')
    )
}
