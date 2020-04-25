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

usethis::use_data(productos, compress = "xz", overwrite = T)
