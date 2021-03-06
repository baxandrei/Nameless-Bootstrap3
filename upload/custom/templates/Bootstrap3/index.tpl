<div class="jumbotron home-header">
  <div class="container">
	{include file='navbar.tpl'}
	<center>
	  <br /><br /><br />
	  <h1>{$SITE_NAME}</h1>

	  {if isset($MINECRAFT)}
		<hr />
		{if isset($SERVER_QUERY)}
		  {if isset($SERVER_QUERY.status_value) && $SERVER_QUERY.status_value == 1}
			{if isset($SERVER_QUERY.status_full)}
				<p class="lg">{$SERVER_QUERY.status_full}</p>
			{else}
			    <p class="lg">{$SERVER_QUERY.x_players_online}</p>
			{/if}
		  {else}
		    <p class="lg">{$SERVER_OFFLINE}</p>
		  {/if}
		{/if}
		<p class="lg">{$CONNECT_WITH}</p>
	  {/if}
	</center>

  </div>
</div>

<div class="container">
<div class="panel panel-default">
  <div class="panel-body">
	{if isset($HOME_SESSION_FLASH)}
        <div class="alert alert-info">
            {$HOME_SESSION_FLASH}
        </div>
	{/if}
	{if isset($HOME_SESSION_ERROR_FLASH)}
        <div class="alert alert-danger">
            {$HOME_SESSION_ERROR_FLASH}
        </div>
	{/if}
	<div class="row">

	  {if isset($NEWS)}
	  <div class="col-md-9">
	    <center><h2>{$LATEST_ANNOUNCEMENTS} <i class="fa fa-bullhorn"></i></h2></center>
		<hr />
		{foreach from=$NEWS item=item}
		<div class="panel panel-default">
		  <div class="panel-heading">
			<a href="{$item.url}">{$item.title}</a>
			<span class="pull-right" data-toggle="tooltip" title="{$item.date}">{$item.time_ago}</span>
		  </div>
		  <div class="panel-body">
			<div class="forum_post">
			  {$item.content}
			</div>
			<hr />
			<a href="{$item.author_url}"><img class="img-rounded" style="height:30px;width=30px;" src="{$item.author_avatar}" /></a> <a href="{$item.author_url}" style="{$item.author_style}">{$item.author_name}</a>
		    <span class="pull-right"><a href="{$item.url}" class="btn btn-primary btn-sm">{$READ_FULL_POST} &raquo;</a></span>
		  </div>
		</div>
		<br />
		{/foreach}
	  </div>
	  <div class="col-md-3">

	  {else}
	  <div class="col-md-3 col-md-offset-6">
	  {/if}

	    <center><h2>{$SOCIAL} <i class="fa fa-users" aria-hidden="true"></i></h2></center>
	    <hr />
		{if count($WIDGETS)}
		  {foreach from=$WIDGETS item=widget}
			{$widget}
		  {/foreach}
		{/if}

	  </div>
	</div>
  </div>
</div>
</div>

{include file='footer.tpl'}
