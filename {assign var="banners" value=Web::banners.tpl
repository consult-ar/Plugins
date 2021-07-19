{assign var="banners" value=Web::banners(FALSE, 29)}

    {if is_array($banners) && count($banners)}

      {foreach $banners as $banner}

        {$banner.archivo}
        <!-- Categorias del Banner -->
        
        

      {/foreach}
    {else}
        
      
    {/if}