{block name="TEMPLATE_CSS"}
    <link rel="stylesheet" type="text/css" href="{$URL}/css/novedad.css"/>
    {literal}
        <style>
            #container.container { padding-top: 10px;}

            .ficha-novedad {}
            .ficha-novedad #share { position: fixed;right: 0;top: 20%;width: 40px;z-index: 999;background: rgba(179, 179, 179, 0.19);padding: 5px 5px 0 5px;}

            .ficha-novedad .list-inline.categoria_titulo{text-align: center!important;border-bottom: 1px solid #ddd;padding-bottom: 20px;}

            .ficha-novedad .page-header {border: 0;}
            .ficha-novedad .categoria_titulo {margin-bottom: 20px;}

            .ficha-novedad .bajada {font-size: 20px;line-height: 1.4;padding: 0 0 10px;font-weight: 100;color: #9e9e9e;}

            .ficha-novedad .descripcion > p {font-size: 17px;}
            .ficha-novedad .descripcion a[rel="galeria"] {    display: inline-block;float: left;margin-right: 20px;max-width: 310px;}

            #form_comentar {position: relative;background: url('../images/novedades-formulario.jpg') no-repeat center; background-size: cover; color: #FFF; margin: 30px 0 20px;color: #FFF; padding: 30px 0 25px;}
            #form_comentar:before {display: block; content: ""; position: absolute; left: 0; top: 0; right: 0; bottom: 0;background-color: rgba(64, 92, 123, 0.62); }

            #form_comentar h4 {      margin: 0 0 25px;color: #FFF;font-size: 24px;z-index: 2;position: relative;}
            #form_comentar .re-captcha {width: 305px; margin: auto;}

            #form_comentar .form-control {text-align: left;border-radius: 3px;border: 0; box-shadow: none; background: #ffffffd9;}
            #form_comentar #comentario {padding: 11px 10px;}
            #form_comentar .btn.btn-lg {background: #168dd6;border-radius: 0;padding: 15px 7px;font-size: 13px;}
            #form_comentar .btn.btn-lg > .fa {    display: block; font-size: 25px;margin-bottom: 10px;}
            #form_comentar .row {margin-left: -10px;margin-right: -10px;}
            #form_comentar .row > div {padding-left: 10px;padding-right: 10px;}
            div.ficha-novedad {
                margin: 30px 0;
                position: relative;
                padding: 2px;
            }
            
            .ficha-novedad .page-header {
                padding-bottom: 9px;
                margin: 0 0 20px!important;
            }
            .page-header h2{
                line-height: 20px;
                color: #000;
                border: none;
                text-align: center;
                font-size: 34px;
                font-weight: 800;
                text-transform: none;
            }
            .titulo-seccion h1:after, .page-header h2:after {
                content: "";
                width: 140px;
                height: 2px;
                position: relative;
                margin: 20px auto 0;
                background: #{literal}{#COLOR#}{/literal};
                display: block;
            }
    </style>
    {/literal}
    
{/block}

{block name="TEMPLATE_JS"}
    <script type="text/javascript" src="https://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4f59070c3a3b6e5d"></script>
    {literal}
        <script type="text/javascript">
            $(document).ready(function () {
                $('.ficha-novedad a[rel="galeria"]').fancybox({
                    openEffect: 'elastic',
                    closeEffect: 'fade',
                    helpers: {
                        title: {
                            type: 'inside'
                        }
                    }
                });
            });
        </script>
    {/literal}
{/block}

{block name="CONTAINER"}
    <div class="ficha-novedad">


        <div id="share" class="hidden-print addthis_toolbox addthis_default_style addthis_32x32_style">
            <a class="addthis_button_preferred_1"></a>
            <a class="addthis_button_preferred_2"></a>
            <a class="addthis_button_preferred_3"></a>
            <a class="addthis_button_preferred_4"></a>
            <a class="addthis_button_compact"></a>
        </div>

        <div class="container">
            {*<ul class="list-inline categoria_titulo">

                {if $Novedad->getCategorias()}
                    {foreach from=$Novedad->getCategoriasObj() item=cat}
                        <li>
                            <a href="{Controller::path('blog', $cat.permalink)}" class="btn btn-xs btn-info">{$cat.nombre}</a>
                        </li>
                    {/foreach}
                {/if}

                <li>/</li>
                <li><b>Publicado:</b> {$Novedad->getFechaAlta('D d M Y')}</li>
                <li>/</li>
                <li><b>Visitas:</b> {$Novedad->getVisitas()}</li>
            </ul>*}

            <div class="page-header">
                <h2>{$Novedad->getNombre()}</h2> 
            </div>

            <div class="descripcion">
                {if is_array($Novedad->getFotos()) && count($Novedad->getFotos())}

                    {foreach from=$Novedad->getFotos() key=fotoKey item=foto}
                        <a href="{$foto}" rel="galeria" class="thumbnail">
                            <img src="{$foto}"/>
                        </a>
                    {/foreach}


                    {if $Novedad->getBajada()}
                        <div class="bajada" id="bajada">
                            {$Novedad->getBajada()}
                        </div>
                    {/if} 

                    {if $Novedad->getCuerpo()}

                        {$Novedad->getCuerpo()}
                    {/if}

                </div>
            {/if} 

        </div>

        {*<form action="{Controller::path('blog/comentar')}" method="POST" id="form_comentar">
            <div class="container">
                <h4><strong>Estamos para asesorarte! Escribinos.</strong></h4>
                <input type="hidden" name="id" value="{$Novedad->getId()}">

                <div class="row row-20">

                    <div class="col-xs-12 col-sm-3">
                        <div class="form-group">
                            <input type="text" class="form-control" id="nombre" name="nombre" required placeholder="Nombre" autocomplete="off">
                        </div>

                        <div class="form-group">
                            <input type="email" class="form-control" id="email" name="email" required placeholder="Email" autocomplete="off">
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-4">
                        <div class="form-group">
                            <textarea class="form-control" rows="3" id="comentario" name="comentario" required placeholder="Comentario" autocomplete="off"></textarea>
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-5">
                        <div class="row">

                            <div class="form-group col-xs-12 col-sm-8">
                                <div class="re-captcha">{ReCaptcha::htmlWidget(FALSE)}</div>
                            </div>

                            <div class="col-xs-12 col-sm-4">
                                <button type="submit" class="btn btn-default btn-theme btn-block  btn-lg">
                                    <i class="fa fa-paper-plane"></i>
                                    Enviar
                                </button>
                            </div>

                        </div>
                    </div>

                </div>
            </div>  
        </form>

        <div class="container">
            {if $Novedad->isComentarios()}


                <h4><strong>Lista de comentarios</strong></h4>
                {foreach from= $Novedad->getComentarios() item=comentario}
                    <div class="media">
                        <div class="media-body">
                            <h4 class="media-heading">{$comentario.nombre}</h4>
                            <div class="small text-muted">{$comentario.fecha_alta}</div>
                            <div>{$comentario.comentario|nl2br}</div>
                            {if $comentario.respuesta}
                                <div class="media">
                                    <div class="media-body">
                                        <div>{$comentario.respuesta|nl2br}</div>
                                    </div>
                                </div>
                            {/if}
                        </div>
                    </div>
                {/foreach}
            {/if}
            
            {if $Novedad->isRelacionados()}
                <hr>
                <div class="relacionados">
                    <h3 class="titulo_relacionados"><strong>Novedades Relacionadas</strong></h3>
                    <div class="row">
                        {foreach from=$Novedad->getRelacionados() item=nov}
                            <div class="col-xs-12 col-sm-3">
                                <a href="{$nov.url}" class="thumbnail" style="background: url({$nov.img}) no-repeat; background-size: cover;">

                                    <div class="overlay"></div>

                                    <div class="caption">
                                        <h4 class="blog-nombre">{$nov.nombre}</h4>
                                    </div>
                                </a>
                            </div>
                        {/foreach}
                    </div>
                </div>    
            {/if}
            *}

        </div>
    </div>
{/block}