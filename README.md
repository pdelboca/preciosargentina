
<!-- README.md is generated from README.Rmd. Please edit that file -->

# preciosargentina

<!-- badges: start -->

<!-- badges: end -->

preciosargentina es un paquete de R que contiene datasets con
información sobre precios de productos en Argentina. Contiene dos
datasets:

  - **precios\_maximos:** dataset con los precios máximos fijados por el
    Gobierno Nacional durante la emergencia sanitaria por el
    coronavirus. [Más
    info…](https://www.argentina.gob.ar/preciosmaximos)

## Instalación

Se puede instalar este paquete directamente desde github:

``` r
devtools::install_github("pdelboca/preciosargentina")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(dplyr, warn.conflicts = F)
library(preciosargentina)
precios_maximos %>% 
  select(id_producto, producto, precio_sugerido) %>% 
  head()
#> # A tibble: 6 x 3
#>   id_producto   producto                          precio_sugerido
#>   <chr>         <chr>                                       <dbl>
#> 1 7792180001665 Aceite de Girasol Cañuelas 1.5 Lt             145
#> 2 7792180001641 Aceite de Girasol Cañuelas 900 Cc              95
#> 3 7790060023684 Aceite de Girasol Cocinero 1.5 Lt             139
#> 4 7790070012050 Aceite de Girasol Cocinero 900 Ml              95
#> 5 7790272001029 Aceite de Girasol Natura 1.5 Lt               157
#> 6 7790272001005 Aceite de Girasol Natura 900 Ml                99
```
