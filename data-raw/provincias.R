# Fuente: https://es.wikipedia.org/wiki/ISO_3166-2:AR
library(tibble)
provincias <- tribble(
  ~id_provincia, ~provincia,
  #--|--
  'AR-A',	'Salta',
  'AR-B',	'Provincia de Buenos Aires',
  'AR-C',	'Ciudad Autónoma de Buenos Aires',
  'AR-D',	'San Luis',
  'AR-E',	'Entre Ríos',
  'AR-F',	'La Rioja',
  'AR-G',	'Santiago del Estero',
  'AR-H',	'Chaco',
  'AR-J',	'San Juan',
  'AR-K',	'Catamarca',
  'AR-L',	'La Pampa',
  'AR-M',	'Mendoza',
  'AR-N',	'Misiones',
  'AR-P',	'Formosa',
  'AR-Q',	'Neuquén',
  'AR-R',	'Río Negro',
  'AR-S',	'Santa Fe',
  'AR-T',	'Tucumán',
  'AR-U',	'Chubut',
  'AR-V',	'Tierra del Fuego',
  'AR-W',	'Corrientes',
  'AR-X',	'Córdoba',
  'AR-Y',	'Jujuy',
  'AR-Z',	'Santa Cruz',
)

usethis::use_data(provincias, compress = "xz", overwrite = T)
