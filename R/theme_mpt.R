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
  .pie <<- "Elaborado"
  .paleta <<- c("#9CD6F9", "#757679", "#14366D", "#235DBC" , "#4CAAE2", "#0C1F3E",
                  "#404042",  "#063970", "#4CAAE2" ,
                  "#235DBC", "#1C4993",
                  "#C6D6EE",
                  "#CAD1DC" , "#939599")
  tidyquant::theme_tq() %+replace%
    theme(
      panel.grid.major.x = element_blank(),
      panel.grid.minor.y = element_blank(),
      legend.position = c(0.125, .945),
      legend.background = element_blank(),
      title = element_text(size=12, face='bold')
    )
}
