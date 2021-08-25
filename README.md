# Plugins
todos se llaman de esta forma {include file="[THEME]plugins/nombre_del_pluggin.tpl"}

# slide links home
llamar slide links home :  
{include file="[THEME]plugins/slide_links_home.tpl"}

# destacados Carousel(utiliza owl carousel).  
8 es la cantidad de paquetes 266 la categoría *remplazar*.  
{include file="[THEME]plugins/destacados_carousel.tpl" ID=266 productos=Web::paquetes(8, FALSE, 266)}

# links URL
llamar pluggin remplazar 272 x categoría.  
{include file="[THEME]plugins/links-urls.tpl" links=Web::links(272) ID=272}
