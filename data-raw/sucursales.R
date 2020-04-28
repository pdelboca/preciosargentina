library(dplyr)
library(readr)

sucursales_url <- 'http://www.url-for-sucursales-file.com'

# Implementar logica para descarga cuando tengamos links publicos
# if (!file.exists('data-raw/sucursales.csv')) {
# }

sucursales <- read_csv('data-raw/sucursales.csv') %>%
  rename(
    id_sucursal = id,
    id_comercio = comercioId,
    id_bandera = banderaId,
    bandera = banderaDescripcion,
    comercio_razon_social = comercioRazonSocial,
    id_provincia = provincia,
    nombre_sucursal = sucursalNombre,
    tipo_sucursal = sucursalTipo,
    latitud = lat,
    longitud = lng,
    nombre_sucursal = sucursalNombre,
    tipo_sucursal = sucursalTipo
  )

usethis::use_data(sucursales, compress = "xz", overwrite = T)
