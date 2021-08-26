# Plugins
todos se llaman de esta forma {include file="[THEME]plugins/nombre_del_pluggin.tpl"}

# floatwsp.  
Permite cargar varios números de wsp desde el modulo de links creandole una categoría, si no hay categoría creada muestra un else que puede modificarse en duro desde el puggin.

# Slide home.  
carga de slide tradicional en el include agregar la variable ID=NUMERO_DE_CATEGORÍA

# slide links home
llamar slide links home :  
{include file="[THEME]plugins/slide_links_home.tpl"}

# Productos Destacados
{include file="[THEME]plugins/destacados.tpl" productos=Web::paquetes(CANTIDAD, FALSE, CATEGORÍA)}
e
# destacados Carousel(utiliza owl carousel).  
8 es la cantidad de paquetes 266 la categoría *remplazar*.  
{include file="[THEME]plugins/destacados_carousel.tpl" ID=266 productos=Web::paquetes(8, FALSE, 266)}

# links URL
llamar pluggin remplazar 272 x categoría.  
{include file="[THEME]plugins/links-urls.tpl" links=Web::links(272) ID=272}

# links landing.   
Plugin para mostrar productos desde links en las landings, se llama así:
{include file="[THEME]plugins/links-landing.tpl" links=Web::links(272)}

# PREGUNTAS
ES UN TEMPLATE DIRECTO DE UNA PÁGINA DE PREGUNTAS FRECUENTES CREADA A PARTIR DEL <b>ACORDION</b> DE BS
modificar ($categoriaID = FALSE) por número de categoría sin <b>$</b> ni <b>= FALSe</b>
