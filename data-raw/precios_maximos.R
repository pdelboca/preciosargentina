library(dplyr)
library(purrr)
library(readr)

base_url <- 'https://raw.githubusercontent.com/mgaitan/precios_maximos/master/datasets/'
files <- c(
  'buenos-aires.csv',
  'caba.csv',
  'catamarca.csv',
  'chaco.csv',
  'chubut.csv',
  'cordoba.csv',
  'corrientes.csv',
  'entre-rios.csv',
  'formosa.csv',
  'jujuy.csv',
  'la-pampa.csv',
  'la-rioja.csv',
  'mendoza.csv',
  'misiones.csv',
  'neuquen.csv',
  'rio-negro.csv',
  'salta.csv',
  'san-juan.csv',
  'san-luis.csv',
  'santa-cruz.csv',
  'santa-fe.csv',
  'santiago-del-estero.csv',
  'tierra-del-fuego.csv',
  'tucuman.csv'
)


if (!file.exists('data-raw/precios-maximos.csv')) {
  paste0(base_url, files) %>%
    map_dfr(read_csv,
            col_types = cols(
              .default = col_character(),
              `Precio sugerido` = col_double()
            )) %>%
    write_csv('data-raw/precios-maximos.csv')
}

precios_maximos <- read_csv('data-raw/precios-maximos.csv') %>%
  rename_all(tolower) %>%
  rename(precio_sugerido = `precio sugerido`) %>%
  select(id_producto, producto, precio_sugerido, marca, categoria, subcategoria, provincia, region, producto_s_tilde)

usethis::use_data(precios_maximos, compress = "xz", overwrite = T)
