{include file='navbar.tpl'}

<div class="container">
  <div class="panel panel-default">
    <div class="panel-body">
	  <h2 style="margin-top:5px;display:inline;">{$VIEWING_RELEASE}</h2>
	  <span class="pull-right">
		<a href="{$BACK_LINK}" class="btn btn-danger">{$BACK}</a>
	  </span>
	  
	  <br /><br />
	  
	  <div class="forum-post">
	    {$DESCRIPTION}
	  </div>
	  
	  <hr />
	  
	  <span data-toggle="tooltip" data-trigger="hover" data-original-title="{$DATE_FULL}">{$DATE}</span>
	  
	  <span class="pull-right">
	    <a href="{$DOWNLOAD_URL}" class="btn btn-primary">{$DOWNLOAD}</a>
      </span>
	  
    </div>
  </div>
</div>

{include file='footer.tpl'}