{if is_array($productos) && count($productos)}
    <script type="text/javascript">
        {literal}
            $(document).ready(function () {

                $("#owl-paquetes").owlCarousel({
                    loop: true,
                    margin: 15,
                    nav: false,
                    dots: true,
                    responsive: {
                        0: {items: 1},
                        768: {items: 3},
                        1280: {
                            items: 4
                                            }
                                        }
                                    });
                                });
        {/literal}
    </script>


    <div id="owl-paquetes" class="owl-carousel owl-theme">
        {foreach from=$productos item=producto}

            <div class="item-destacado r1">
                <a href="{$producto->getUrl()}">

                    <div class="thumbnail" style="background-image: url({$producto->getFoto()});">
                         <div class="color"></div>
                    </div>    
                            
                            <div class="top">
                                <div class="titulo">{$producto->getNombre()}</div>
                                
                                {if $producto->getTarifa()}
                                    <div class="precio"><small>desde</small> {$producto->getTarifa()}</div>
                                {/if}
                                
                            </div>

                            <div class="bottom">
                                {*<ul class="list-inline">
                                    {if $producto->getDias() > 0 || $producto->getNoches() > 0}
                                        <li>
                                            {$producto->getDias()}&nbsp;
                                            D&iacute;as&nbsp;
                                            <i class="fa fa-sun-o"></i>
                                        </li>
                                        /
                                        <li>
                                            {$producto->getNoches()}&nbsp;
                                            Noches&nbsp;
                                            <i class="fa fa-moon-o"></i>
                                        </li>
                                    {/if}

                                    {if $producto->isExtra()}
                                        {foreach from=$producto->getExtra() item=extra}
                                            <li>
                                                <div title="{$extra->getNombre()}" data-toggle="popover" data-container="body" data-container="body" data-trigger="hover" data-placement="top" data-content="{$extra->getData()}">
                                                    <div class="{$extra->getIconset()->getPreClass()} {$extra->getIcono()}"></div>
                                                </div>
                                            </li>
                                        {/foreach}
                                    {/if}
                                </ul>*}

                                <div class="btn_verMas transition">VER M&Aacute;S</div>
                            </div>
                    

                </a>

            </div>
        {/foreach}
    </div>
{/if}