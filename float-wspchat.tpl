{literal}

    <style>
        #flotante {
            position: fixed;
            z-index: 10000;
            top: 110px;
            right: -190px;
            box-shadow: 0px 1px 4px;
            border-radius: 40px 0 0 40px;
            overflow: hidden;
            border: 2px solid #fff;
            transition: all ease .6s;
        }

        #flotante:hover {
            right: -3px;
        }
        .mostrar{
            right: -3px!important;
            border-radius: 25px 0 0 10px!important;
        }
        
        #flotante .panel-body a {display: block;margin-bottom: 10px; color:#5b5a5d;}
        #flotante .panel-body .fa{
            font-size:28px;
            margin-right:10px
        }

        #flotante .panel-title a .fa {
            font-size: 26px;
        }

        #flotante .panel-heading{
            background: #000f9f!important;
            text-align:center
        }

        #flotante .panel-heading:hover {
            background-color: #5b5a5d;
        }

        #flotante .panel-heading a{
            color:#fff;

        }

        #flotante .panel.panel-default {
            border: none;
            margin: 0;
           /*border-bottom: 1px solid #fff;*/
        }
        #flotante .last{
            border: none!important;
            border-bottom:none!important
        }
        #flotante .panel-group {
            margin-bottom: 0px;
        }
        #flotante .foto {
            width: 60px;
            border: 2px solid #000f9f;
            border-radius: 50%;
            margin-right: 10px;
        }

        #flotante a.wsp-personal {
            display: flex!important;
            min-width: 200px;
            flex-wrap: wrap;
            /* justify-content: center; */
            flex-direction: row;
            align-items: center;
            text-align: center;
            text-decoration:none;
        }
        #flotante a.wsp-personal:hover{
            color:#000f9f!important;
        }

        #flotante .datos h5 {
            margin: 0px;
        }

        #flotante .datos p {
            margin: 0;
        }
        #flotante .panel-body {
            padding: 5px 15px;
        }
    </style>
    
{/literal}
{literal}
    
    <script>
        $(document).ready(function() {
            
            $(".floatwsp").click(function() {
                if (!$("#flotante").hasClass("mostrar")) {
                $("#flotante").addClass("mostrar");
                }else{
                $("#flotante").removeClass("mostrar");
                }
            });
        });
    </script>
{/literal}
<section id="flotante" class="animated fadeInUp">
    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
        <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingOne">
                <h4 class="panel-title">
                    <a class="floatwsp" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        <i class="fa fa-comments-o"></i>&nbsp;&nbsp;<span>Chatea con Nosotros</span>
                    </a>
                </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                <div class="panel-body">
                    <div class="horarios">
                        <h4 style="margin: 0 0 10px!important;color:#000f9f;font-size: 14px;">
                            Horario de Atenci&oacute;n de 9 a 18 hs
                        </h4>
                    </div>
                    {assign var="links" value=Web::links(24, false, 10)}

                    {if is_array($links) && count($links)}
                        {foreach $links as $link}
                        <a href="{$link.url}" class="wsp-personal" target="blank">
                            <div class="foto" style="height: 60px; background-image:url({$link.archivo}); background-size:cover"></div>
                            <div class="datos">
                                <h5>{$link.nombre}</h5>
                                <p>{$link.texto}</p>
                            </div>
                        </a>
                        {/foreach}

                    {/if}
                   <div class="footer">
                       <a href="{$URL}/texto/solicita_tu_reunion_virtual" class="text-center" target="blank" style="background-color:#000f9f;padding:5px;margin:0!important; color:#fff">
                           <small>Solicit&aacute; tu reuni&oacute;n Virtual</small>
                       </a>
                   </div>
                </div>
            </div>
        </div>
        {*<div class="panel panel-default last">
            <div class="panel-heading" role="tab" id="headingTwo">
                <h4 class="panel-title">
                    <a class="collapsed" role="button" tittle="CHATEA CON NOSOTROS" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                         <i class="fa fa-comments"></i>
                    </a>
                </h4>
            </div>
        </div>*}
    </div>
</section>