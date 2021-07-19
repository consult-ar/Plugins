{block name="TEMPLATE_CSS"}
  <style>
    .sectit {
      font-family: Montserrat, sans-serif;
      font-style: normal;
      font-weight: bold;
      font-size: 32px;
      line-height: 39px;
      text-align: center;
      letter-spacing: 0.05em;
      margin-bottom: 35px;
    }
    .panel-heading .accordion-toggle:after {
    /* symbol for "opening" panels */
      font-family: 'Glyphicons Halflings'; /* essential for enabling glyphicon */
      content: "\e114"; /* adjust as needed, taken from bootstrap.css */
      float: right; /* adjust as needed */
      color: grey; /* adjust as needed */
    }
    .panel-heading .accordion-toggle.collapsed:after {
    /* symbol for "collapsed" panels */
      content: "\e080"; /* adjust as needed, taken from bootstrap.css */
    }
    section#preguntas {
      padding: 50px 0 30px;
    }

    .pregunta-content.panel.panel-default {}

    #preguntas .panel-heading {
      text-transform:uppercase;
      letter-spacing:1px;
    }
    

    .respuesta-body {
      padding: 20px 10px;
    }
    </style>
  </style>
{/block}

{block name="TEMPLATE_JS"}

{/block}

{block name="CONTAINER"}
  <section id="buscador-landings">
     <div class="buscador"
       style="background-image:url('{$URL}/images/headding/bg-head.jpg');background-size:cover;background-repeat:no-repeat;min-height:400px;display:flex;justify-content: center;flex-direction: column;align-items: center;text-align: center;color:#fff;font-weight: 600;text-shadow: 1px 1px 3px #3e3e3e;background-position: center;">
       <div class="container">
         <h2 class="sectit">Preguntas Frecuentes</h2>
       </div>
     </div>
  </section>
  {assign var="textos" value=Web::textos($categoriaID = FALSE)}

  {if is_array($textos) && count($textos)}
  <!-- Motor de Busqueda -->
  <section id="preguntas">
    <div class="panel-group" id="accordion">
      {foreach $textos as $texto}
    
        <div class="pregunta-content panel panel-default"  >
          <div class="panel-heading">
            <h3 class="panel-title">
              <a class="accordion-toggle pregunta" data-toggle="collapse" data-parent="#accordion" href="#pregunta-{$texto.id}">
                <span>{$texto.nombre} 
              </a>
            </h3>
          </div>
          <div class="panel-collapse collapse" id="pregunta-{$texto.id}">
            <div class="respuesta-body">
              {$texto.cuerpo}
            </div>
          </div>
        </div>
    

      {/foreach}
    </div>
    </section>
  {/if}
  <!-- Colocar Cajas de modulo de links --->
  

{/block}