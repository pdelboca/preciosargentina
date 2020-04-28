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

#' Sucursales.
#'
#' Listado de 2250 sucursales geolicalizadas de Supermercados, Hipermercados y
#' Autoservicios de la República Argentina.
#'
#' @format Un data frame con 12 variables:
#' \describe {
#'   \item{id_sucursal}{id de la sucursal}
#'   \item{id_comercio}{id del comercio}
#'   \item{id_bandera}{id de la bandera}
#'   \item{bandera}{nombre de la cadena de supermercado. Ej: Changomas}
#'   \item{comercio_razon_social}{varias cadenas pueden tener la misma razon social. Ej: INC S.A. tiene a Carrefour, Expres y Market}
#'   \item{provincia}{ISO 3166-2 de la provincia. Ej: AR-C es Ciudad de Buenos Aires}
#'   \item{localidad}{localidad de la sucursal}
#'   \item{direccion}{dirección de la localidad}
#'   \item{latitud}{latitud de la sucursal}
#'   \item{longitud}{longitud de la sucursal}
#'   \item{nombre_sucursal}{nombre de la sucursal}
#'   \item{tipo_sucursal}{tipo de la sucursal. Eg: Hipermercado, Supermercado, Autoservicio.}
#'   }
#' @source \url{https://www.kaggle.com/tinnqn/precios-claros-precios-de-argentina}
"sucursales"

#' Productos
#'
#' Listado de 67961 de Productos a la venta en Argentina.
#'
#' @format Un data frame con 4 variables:
#' \describe {
#'   \item{id_producto}{codigo EAN del producto}
#'   \item{marca}{marca del producto}
#'   \item{nombre}{nombre del producto}
#'   \item{presentacion}{presentacion del producto. Ej: 1.0 un, 1 kg, etc}
#'   }
#' @source \url{https://www.kaggle.com/tinnqn/precios-claros-precios-de-argentina}
"productos"

#' Precios
#'
#' Listado de precios de Productos a la venta en Argentina por sucursal de
#' venta obtenidos de la plataforma Precios Claros.
#'
#' @format Un data frame con 4 variables:
#' \describe {
#'   \item{fecha_relevamiento}{Fecha en la cual se relevo el precio}
#'   \item{id_producto}{codigo EAN del producto}
#'   \item{precio}{precio de venta del producto en la sucursal}
#'   \item{id_sucursal}{id de la sucursal}
#'   }
#' @source \url{https://www.kaggle.com/tinnqn/precios-claros-precios-de-argentina}
"precios"

#' Provincias
#'
#' Listado de precios de provincias argentinas con su código ISO 3166-2:AR
#'
#' @format Un data frame con 2 variables:
#' \describe {
#'   \item{ido_provincia}{Código ISO 3166-2:AR de la Provincia}
#'   \item{provincia}{Nombre de la Provincia}
#'   }
#' @source \url{https://es.wikipedia.org/wiki/ISO_3166-2:AR}
"provincias"
