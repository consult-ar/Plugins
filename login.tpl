{if Usuario::isLogin()}
  {assign var=usuarioLogueado value=Usuario::getUsuarioLogueado()}

  <ul class="nav navbar-nav navbar-right" style="margin: 0;">

    {include file="[AGENCIA]plugins/botonera.tpl" SM=USR}

    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        <i class="fa fa-user"></i>
        {Idioma::trans('Administrar')}
        <span class="caret"></span>
      </a>
      <ul class="dropdown-menu">
        <li><a href="{Controller::path('agencia', 'usuario', 'datos')}"><i class="fa fa-user"></i>
            {Idioma::trans('Mi Perfil')}</a></li>

        {if $usuarioLogueado->getPerfil()->isManage()}
          <!-- Usuario Administrador -->
          <li role="separator" class="divider"></li>
          <li><a href="{Controller::path('agencia', 'agencia', 'agencias')}"><i class="fa fa-building"></i>
              {Idioma::trans('Agencias')}</a></li>
          <li><a href="{Controller::path('agencia', 'agencia', 'editar', $usuarioLogueado->getEmpresa()->getIdHash())}"><i
                class="fa fa-pencil"></i> {Idioma::trans('Mi Agencia')}</a></li>
          <li><a href="{Controller::path('agencia', 'usuario', 'usuarios')}"><i class="fa fa-users"></i>
              {Idioma::trans('Usuarios')}</a></li>

        {/if}

      </ul>
    </li>

    <li class="navbar-text">
      <i class="fa fa-user" title="Usuario"></i>
      {$usuarioLogueado->getNombre()}
      {$usuarioLogueado->getApellido()}
    </li>

    {if $usuarioLogueado->getEmpresa() instanceof Agencia}
      <li class="navbar-text">
        <i class="fa fa-users" title="Agencia"></i>
        {$usuarioLogueado->getEmpresa()->getNombre()}
      </li>
    {/if}

    <li class="navbar-text"><small class="text-muted">{$usuarioLogueado->getPerfil()->getNombre()}</small></li>

    <li><a href="{Controller::path('agencia', 'privado')}" title="Mi Panel"><i class="fa fa-home"></i></a></li>
    <li><a href="{Controller::path('agencia','usuario', 'log_out')}" title="Salir"><i class="fa fa-sign-out"></i></a></li>

  </ul>

  {fetch file=$URL|cat:"/mkte_b2b/inc/botonera.php?usuario="|cat:$usuarioLogueado->getId()}
{/if}