library(dplyr)
library(readr)

productos_url <- 'http://www.url-for-productos-file.com'

# Implementar logica para descarga cuando tengamos links publicos
# if (!file.exists('data-raw/productos.csv')) {
# }

productos <- read_csv('data-raw/productos.csv') %>%
  rename(
    id_producto = id
  )

# Hay 22 filas de productos duplicados. Ejemplo:
# 7792104000033 SUSYSAL Sal Gruesa Susysal x 1 Kg 1.0 kg
# 7792104000033 SUSYSAL Sal Gruesa Susysal 1 Kg   1.0 kg
# Las eliminamos
productos <- productos[!duplicated(productos$id_producto), ]

usethis::use_data(productos, compress = "xz", overwrite = T)
