{block name="TEMPLATE_CSS"}    
<style type="text/css">
        {literal}
					.buscador {
						background-color: rgb(0 0 0 / 20%);
						background-blend-mode: multiply;
						background-position: center;
						height: auto!important;
						min-height: 440px;
					}

					.buscador h2 {
						color: #fff;
						text-align: center;
						font-weight: 900;
						text-shadow: 0 1px 3px #1c1c1c;
						display: block;
						background-color: rgba(0, 0, 0, 0.3);
						margin-bottom: unset;
						border-bottom: 1px solid var(--verde);
						padding:10px 0;
						letter-spacing: 1px;
						font-size: 26px;
					}
        {/literal}
    </style>
{/block}

assign var="banners" value=Web::banners(FALSE, #CATEGORÍA#)}
{if is_array($banners) && count($banners)}

    {foreach $banners as $banner}
    <div class="buscador" style="position:relative; background-image: url('{$banner.archivo}');background-size:cover;background-repeat:no-repeat; height:440px">
        <!-- Categorias del Banner -->
    {/foreach}
{else}
    <div class="buscador" style="position:relative; background-image: url('{$URL}/images/home.jpg');background-size:cover;background-repeat:no-repeat; height:440px">
{/if}
            <div class="col-md-5 col-xs-12 buscadores">
                <h2>Paquetes Internacionales</h2>
                {nocache}
                        {include file="[YCIX]PAQ/buscador.tpl"}
                        {*O CUALQUIER OTRO CÓDIGO DE BUSCADOR*}                      
                {/nocache}
            </div>
    </div>
