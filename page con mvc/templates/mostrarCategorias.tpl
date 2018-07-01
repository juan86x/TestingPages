{include file="headerHome.tpl"}
<h1>Lista de categorias</h1>
<ul>

  {foreach from=$categoria item=categoria}
    {if $categoria['finalizada'] == 1}
      <li class="tachado">
    {else}
      <li>
    {/if}

      <a href="detalle/{$tarea['id']}">{$tarea['titulo']}</a>: {$tarea['descripcion']} <a href="borrar/{$tarea['id']}">Borrar</a> <a href="finalizar/{$tarea['id']}">Finalizar</a>
    </li>
  {/foreach}


</ul>
<a href="crear">Crear Categoria</a>
{include file="footer.tpl"}
