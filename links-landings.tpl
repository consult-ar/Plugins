{if is_array($links) && count($links)}
   
    <div class="row">
        {foreach from=$links item=link}
            <div class="col-md-3">    
                <div class="item-destacado r1">
                    <a href="{$link.url}">

                        <div class="thumbnail" style="background-image: url({$link.foto});">
                            <div class="color"></div>
                        </div>

                        <div class="top">
                            <div class="titulo">{$link.nombre}</div>

                        
                            <div class="precio">{$link.texto}</div>
                            

                        </div>

                        

                    </a>

                </div>
            </div>
        {/foreach}
   </div>
{/if}