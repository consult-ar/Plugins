{literal}
    <style>
        .owl-carousel .item-destacado {
            background-color: #fff;
            /*border: 1px solid #5b5a5d;*/
            box-shadow: 0px 2px 3px rgba(91, 90, 93, .5);
            padding-bottom: 10px;
            position: relative;
            min-height: 315px;
            margin-bottom: 15px;
            transition: all ease .5s;
        }
        .owl-carousel .item-destacado:hover{
            box-shadow: 0px 2px 8px rgba(91, 90, 93, .95);
        }

        .owl-carousel .thumbnail {
            border-radius: 0;
            height: 200px;
            background-size: cover;
            background-repeat: no-repeat;
        }

        .owl-carousel .owl-stage-outer {
            padding: 10px 0;
        }

        .owl-carousel .item-destacado a {
            text-align: center;
            color: #5b5a5d;
            text-decoration: none;
        }

        .owl-carousel .thumbnail .color {
            background: rgba(91, 90, 93, .3);
            width: 100%;
            height: 200px;
            position: absolute;
            top: 0;
            left: 0;
            opacity: 0;
            transition: all ease .5s;
        }

        .owl-carousel .item-destacado:hover .color {
            opacity: 1;
        }

        .owl-carousel .precio {
            margin-top: 15px;
        }
        .top h3.titulo {
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            margin: 0 0 5px 0;
        }

        .top {
            padding: 0 10px;
            position: relative;
        }
</style>
{/literal}
{if is_array($links) && count($links)}
<script type="text/javascript">
    {literal}
        $(document).ready(function() {

            $("#owl-links-{/literal}{$ID}{literal}").owlCarousel({
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


<div id="owl-links-{$ID}" class="owl-carousel owl-theme">
    {foreach from=$links item=link}

    <div class="item-destacado r1">
        <a href="{$link.url}">

            <div class="thumbnail" style="background-image: url('{$link.foto}');">
                <div class="color"></div>
            </div>

            <div class="top">
                <h3 class="titulo">{$link.nombre}</h3>
                <p>{$link.texto|nl2br}</p>
            </div>
        </a>
    </div>
    {/foreach}
</div>
{/if}