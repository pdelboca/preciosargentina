library(dplyr)
library(purrr)
library(readr)
library(stringr)
library(lubridate)

data_urls <- c(
  'http://www.url-for-file1.com',
  'http://www.url-for-file2.com',
)

# Implementar logica para descarga cuando tengamos links publicos
# if (!file.exists('data-raw/precios/')) {
# }

# La fecha de relevamiento está en el archivo, así que a medida que leemos
# la agregamos como columna al dataset.
leer_archivo_precios <- function(path){
  file_name <- str_split(basename(path), "\\.")[[1]][1]
  fecha_relevamiento <- str_split(file_name, "\\_")[[1]][3]

  precios <- read_csv(path) %>%
    mutate(fecha_relevamiento = ymd(fecha_relevamiento))
  precios
}

precios <- list.files('data-raw/precios/', full.names = T) %>%
  map(leer_archivo_precios) %>%
  bind_rows() %>%
  rename(
    id_producto = producto_id,
    id_sucursal = sucursal_id
  ) %>%
  select(fecha_relevamiento, id_producto, precio, id_sucursal)

usethis::use_data(precios, compress = "xz", overwrite = T)
