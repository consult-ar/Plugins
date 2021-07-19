
{literal}
        <style>
            .links {
                position: relative;
                padding: 40px 0;
                margin-top: -60px;
            }
            @media(min-width: 768px){
                div#links-slide {
                    margin-top: -177px;
                }
                .links {
                    height: 140px;
                    margin-bottom: 25px;
                    margin-top: unset!important;
                }
            }
            section#buscador-links {
                position: relative;
            }
            #links-slide .item {
                height: 250px;
                overflow: hidden;
                position: relative;
            }
            #links-slide .item a {
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                color: #fff;
                text-shadow: 1px 1px 1px #1c1c1c;
                text-decoration: none;
            }

            #links-slide .item h4 {
                margin: 0!important;
                font-weight: 500;
                z-index: 100;
            }

            #links-slide .item h2 {
                margin-top: 0;
                font-size: 36px;
                font-weight: 700;
                letter-spacing: 1px;
                z-index: 100;
                text-align: center;
                color: #fff;
            }
            #links-slide .item .color {
                position: absolute;
                height: 100%;
                width: 100%;
                background-color: rgba(28, 28, 28, .3);
                transition: all .5s ease-in;
                top:0;
            }
            #links-slide .item a:hover .color{
                top:100%;
            }
            #buscador-links .buscador{
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
            }
            .buscador h2{
                color:#fff!important;
                text-shadow: 1px 1px 2px #1c1c1c!important;
            }
        </style>
{/literal}

<section id="buscador-links">
    <div class="buscador" style="background-image: url('{$URL}/images/bg-home.jpg');background-size:cover;background-repeat:no-repeat; height:400px">
       
            <h2 class="text-center">&iexcl;&iexcl;&iexcl;Empez&aacute; a Viajar por Argentina!!!</h2>
        
    </div>
    <div class="links">
        {assign var="links" value=Web::links(13, TRUE , 3)}
        {if is_array($links) && count($links)}
            <div id="links-slide" class="container">

                <script type="text/javascript">
                    {literal}
                    $(document).ready(function() {
                        var slidelink = $('#slide-links');
                        $(slidelink).owlCarousel({
                            loop: true,
                            margin: 30,
                            nav: false,
                            dots: false,
                            autoplay: true,
                            autoplayTimeout: 5000,
                            responsive: {
                                0: {items: 1},
                                768: {items: 3},   
                                1280: {
                                    items: 3
                                }
                            }
                        });
                    });
                    {/literal}
                </script>

                <div id="slide-links" class="owl-carousel owl-theme">
                    {foreach $links as $link}
                    <div class="item">
                        <a href="{$link.url}" {if $link.target=="_blank" }target="{$link.target}" {/if} class="btn-block" style="background-image:url('{$link.foto}'); height:250px; background-size:cover; background-repeat:no-repeat">
                            <h4>Reserva Ahora</h4>
                            <h2>{$link.nombre}</h2>
                            <br>
                            <br>
                            <h4>Ver M&aacute;s</h4>
                            <div class="color"></div>

                        </a>
                    </div>
                    {/foreach}
                </div>

            </div>
        {/if}
        hola
        </div>
</section>