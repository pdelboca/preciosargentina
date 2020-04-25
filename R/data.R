#' Precios Maximos.
#'
#' Es una de las medidas tomadas por el Gobierno Nacional para garantizar el
#' abastecimiento y controlar el abuso de precios durante la emergencia
#' sanitaria por el coronavirus. Mediante la resolución 100/2020 estos
#' productos mantendrán el valor que cada comercializadora informó al Sistema
#' Electrónico de Publicidad de Precios Argentinos (SEPA) el 6 de marzo del
#' 2020.
#'
#' @format Un data frame con 9 variables:
#' \describe {
#'   \item{id_producto}{codigo EAN del producto}
#'   \item{producto}{nombre del producto}
#'   \item{precio_sugerido}{precio sugerido del producto}
#'   \item{marca}{marca del producto}
#'   \item{categoria}{categoria del producto}
#'   \item{subcategoria}{subcategoria del producto. Ej: Aceite de Girasol}
#'   \item{provincia}{nombre de la provincia}
#'   \item{region}{region de la provincia}
#'   \item{producto_s_tilde}{nombre del producto sin tilde}
#'   }
#' @source \url{https://github.com/mgaitan/precios_maximos}
"preciosmaximos"
