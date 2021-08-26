{if is_array($links) && count($links)}
    <script type="text/javascript">
       {literal}
            $(document).ready(function () {

                $("#owl-comentarios").owlCarousel({
                    loop: true,
                    margin: 10,
                    nav: false,
                    dots: true,
                    autoplay: true,
                    autoplayTimeout: 3000,
                    responsive: {
                        0: {
                            items: 1
                        },
                        768: {
                            items: 3
                        },
                        1280: {
                            items: 4
                            }
                        }
                    });
                });
        {/literal}
    </script>


    <div id="owl-comentarios" class="owl-carousel owl-theme paqDestacados">
         {foreach from=$links item=link}
    
            <div class="each-paq r1">
                    
                            
                            <div class="icon-red" style="background-image: url('{$URL}/images/fb-coments.png');" ></div>
                            <div class="coment-box">
                                
                                <p>
                                   <i class="fa fa-quote-left"></i> <span class="comentario">{$link.texto} </span> <i class="fa fa-quote-right"></i>
                                </p>

                                <h5 class="usuario">
                                    {$link.nombre}
                                </h5>

                            </div>
                    
                </div>
        {/foreach}
    </div>
{/if}
