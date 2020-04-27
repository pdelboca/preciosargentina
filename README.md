
<!-- README.md is generated from README.Rmd. Please edit that file -->

# preciosargentina

<!-- badges: start -->

<!-- badges: end -->

**preciosargentina** es un paquete de R que contiene datasets con
información sobre precios de productos en Argentina relevados por [Open
Data Córdoba](https://twitter.com/opendatacba) de la plataforma
<https://www.preciosclaros.gob.ar/>.

Contiene varios datasets:

  - **precios\_maximos:** dataset con los precios máximos fijados por el
    Gobierno Nacional durante la emergencia sanitaria por el
    coronavirus. [Más
    info…](https://www.argentina.gob.ar/preciosmaximos)
  - **sucursales:** listado de sucursales geolocalizadas en la República
    Argentina. (puntos de venta)
  - **productos:** listado de productos a la venta en la República
    Argentina con su correspondiente EAN.
  - **precios:** listado de precios relevados en diferentes sucursales a
    través de la plataforma Precios Claros. Debido a limitaciones en la
    consulta a la plataforma estos precios son relevados semanalmente
    para sucursales testigos en cada provincia. Dicha sucursal puede
    variar de semana en semana.

## Instalación

Se puede instalar este paquete directamente desde github:

``` r
devtools::install_github("pdelboca/preciosargentina")
```

## Ejemplo de los Datasets

### Precios Máximos

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

### Productos

``` r
productos %>% 
  head()
#> # A tibble: 6 x 4
#>   id_producto   marca      nombre                            presentacion
#>   <chr>         <chr>      <chr>                             <chr>       
#> 1 0000000001663 LA ANÓNIMA Radicheta Atada La Anonima 1 Un   1.0 un      
#> 2 0000000002288 LA ANÓNIMA Perejil Atado La Anonima 1 Un     1.0 un      
#> 3 0000000205870 SIN MARCA  Ojo de Bife 1 Kg                  1.0 kg      
#> 4 0000000205894 SIN MARCA  Milanesa de Peceto Novillito 1 Kg 1.0 kg      
#> 5 0000000205955 SIN MARCA  Chiquizuela Novillito 1 Kg        1.0 kg      
#> 6 0000000205979 SIN MARCA  Espinazo de Novillito 1 Kg        1.0 kg
```

### Sucursales

``` r
sucursales %>% 
  select(id_sucursal, bandera, direccion, localidad) %>% 
  head()
#> # A tibble: 6 x 4
#>   id_sucursal bandera                direccion                localidad         
#>   <chr>       <chr>                  <chr>                    <chr>             
#> 1 10-1-1      Hipermercado Carrefour Bernardo De Irigoyen 26… San Isidro        
#> 2 10-1-10     Hipermercado Carrefour Av. Vergara 1910         Hurlingham        
#> 3 10-1-11     Hipermercado Carrefour Av. Arturo Illia 3770    Malvinas Argentin…
#> 4 10-1-112    Hipermercado Carrefour 20 De Febrero 37         Salta             
#> 5 10-1-12     Hipermercado Carrefour Av. Don Bosco 2680       San Justo         
#> 6 10-1-123    Hipermercado Carrefour Gral. Acha 32            San Juan
```

### Precios

``` r
precios %>% 
  head()
#> # A tibble: 6 x 4
#>   fecha_relevamiento id_producto   precio id_sucursal
#>   <date>             <chr>          <dbl> <chr>      
#> 1 2020-04-13         0000000001663   29.9 2-1-014    
#> 2 2020-04-13         0000000002288   29.9 2-1-032    
#> 3 2020-04-13         0000000002288   39.9 2-1-096    
#> 4 2020-04-13         0000000205870  500.  9-1-686    
#> 5 2020-04-13         0000000205870  520.  9-2-248    
#> 6 2020-04-13         0000000205870  540.  9-2-42
```
