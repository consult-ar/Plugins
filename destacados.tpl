{if is_array($productos) && count($productos)}
   
        <div class="paqDestacados">
            {foreach from=$productos item=producto}
                <div class="col-sm-6 col-md-3">
                    <div class="item-destacado r1">
                        <a href="{$producto->getUrl()}">

                            <div class="thumbnail" style="background-image: url('{$producto->getFoto()}');"></div>    
                            
                            <div class="top">
                                <div class="titulo"><h3>{$producto->getNombre()}</h3></div>
                                
                            </div>

                            <div class="bottom">

                                {if $producto->getTarifa()}
                                    <div class="precio">{$producto->getTarifa()}</div>
                                {/if}

                                <ul class="list-inline">
                                    {if $producto->getDias() > 0 || $producto->getNoches() > 0}
                                        <li class="hide">
                                            <b>{$producto->getDias()}</b>&nbsp;
                                            D&iacute;as&nbsp;
                                            <i class="fa fa-sun-o"></i>
                                        </li>
                                        
                                        <li class="hide">
                                            <b>{$producto->getNoches()}</b>&nbsp;
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
                                </ul>

                                <div class="btn_verMas transition hide">Ver m&#225;s &nbsp;<i class="fa fa-arrow-right" aria-hidden="true"></i></div>
                            </div>

                        </a>
                    </div>
                </div>    
            {/foreach}  
            <div class="clearfix"></div>
        </div>
         
{/if}



