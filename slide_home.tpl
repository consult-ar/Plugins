<!-- Slider -->
<div id="wrapperBuscadorSlide">
    {assign var="slides" value=Web::slideShow($ID)}

            {if is_array($slides) && count($slides)}
                <div id="sldHome" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        {foreach from=$slides key=key item=slide}
                            <li data-target="#sldHome" data-slide-to="{$key}" {if $key == 0}class="active"{/if}>
                            </li>
                        {/foreach}
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        {foreach from=$slides key=key item=slide}
                            <a href="{$slide.url}" class="item{if ($key == 0)} active{/if}">
                                {* <img src="{$slide.foto}" alt="{$slide.nombre}" width="100%"/> *}
                                <div style="background-image: url('{$slide.foto}'); background-position: center; background-size: cover; height: 580px;"></div>
                                <div class="carousel-caption">
                                    <h2 class="titulo">{$slide.bajada}</h2>
                                    {* <p></p> *}
                                </div>
                            </a>
                        {/foreach}
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#sldHome" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#sldHome" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>

                </div> 
            {/if}
</div>
<!-- End Slider -->