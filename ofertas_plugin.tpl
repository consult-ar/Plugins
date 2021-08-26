<style>
    {literal}
    /*URL PREDECIBLES*/
    #urlLinks ,
    #urlLinks .row div {padding-left:7.5px; padding-right: 7.5px;}
    #urlLinks .modulo .thumbnail {padding:0px; border:none; border-radius:0px; margin-bottom:15px; position:relative; height:170px; overflow:hidden; color:#FFF}
    #urlLinks .modulo .thumbnail > div {padding: 0px;}

    #urlLinks .modulo.mod1 .row > div:first-child ul.tituloBajadaLink {
        bottom: 115px;
    }
    .boxOferta .thumbnail ul.tituloBajadaLink {
        font-size: 26px;
        position: absolute;
        bottom: 12px;
        left: 50%;
        z-index: 1;
        width: 80%;
        margin-left: -40%;
        text-align: center;
        font-weight: 800;
        text-transform: uppercase;
    }

    .boxOferta .thumbnail .etiqueta {
        position: absolute;
        top: 12px;
        left: 0;
        background: var(--verde);
        padding: 5px 15px 8px!important;
        z-index: 1;
        font-size: 17px;
        color: #1c1c1c;
    }


    @media (min-width:992px){        
        #urlLinks .modulo {max-height:355px; overflow:hidden;}  
        #urlLinks .modulo .img-fondo {height:170px; background:no-repeat 50% 50%;-webkit-background-size:cover; -moz-background-size:cover; -o-background-size:cover; background-size:cover;}  
        #urlLinks .modulo.mod3 ,  
        #urlLinks .modulo.mod4 {margin-top:15px;}  
        #urlLinks .modulo.mod1 .row > div:first-child .thumbnail,   
        #urlLinks .modulo.mod1 .row > div:first-child .img-fondo {height:355px}  
        #urlLinks .modulo.mod1 .row > div:first-child ul.tituloBajadaLink {bottom:115px;}    
        #urlLinks .modulo.mod1 .row > div:nth-child(3) {float:right;}     
        #urlLinks .modulo.mod2 .row > div:nth-child(3) {float:left; margin-top:-185px;}  
        #urlLinks .modulo.mod2 .row > div:nth-child(2) .thumbnail,     
        #urlLinks .modulo.mod2 .row > div:nth-child(2) .img-fondo {height:355px;}   
        #urlLinks .modulo.mod2 .row > div:nth-child(2) ul.tituloBajadaLink {bottom:115px;}    
        #urlLinks .modulo.mod3 .row > div:first-child {width:100%;}    
        #urlLinks .modulo.mod4 .row > div:first-child {width:50%;}     
        #urlLinks .modulo.mod4 .row > div:nth-child(3) {width:100%;}
    }

    .transitionEffect {
        -webkit-transition-duration: 0.4s;
        -moz-transition-duration: 0.4s;
        transition-duration: 0.4s;
        transition-timing-function: ease;
        -webkit-transition-timing-function: ease;
        -moz-transition-timing-function: ease;
    }
    {/literal}
</style>

{if is_array($links) && count($links)}
    <div class="row">
        {assign var=row value=array_chunk($links, ceil(count($links) / 3))}
        {foreach from=$row item=col}
            <div class="col-sm-12 col-md-6 boxOferta">
                {foreach from=$col item=link}
                    <a href="{$link.url}" class="thumbnail">
                        <div class="etiqueta">
                        </div>
                        <ul class="tituloBajadaLink list-unstyled">
                            <li>{$link.nombre}</li>
                            <li>{$link.texto}</li>
                        </ul>
                        
                        {* <div class="img-fondo hidden-xs hidden-sm transitionEffect" data-url="{$link.foto}"></div> *}
                        <div class="img-fondo  transitionEffect" style="background: url('{$link.foto}') no-repeat;background-size: cover; background-position: center; height: 100%;"></div>
                    </a>
                {/foreach}
            </div>
        {/foreach}
    </div>
{/if}

