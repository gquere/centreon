<div class="first-content">
    <div class="col-sm-12 col-md-6">
      <div class="btn-group">
        <a href="{url_for url=$objectAddUrl}" class="btn btn-default">{t}Add{/t}</a>
        <div class="btn-group">
          <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
            {t}Actions{/t}
            <span class="caret"></span>
          </button>
          <ul class="dropdown-menu">
            <li><a href="#">{t}Delete{/t}</a></li>
            <li><a href="#">{t}Massive change{/t}</a></li>
          </ul>
        </div>
      </div>
      <div class="btn-group" id="selected_option">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
          {t}Add to{/t}
          <span class="caret"></span>
        </button>
        <ul class="dropdown-menu">
          <li><a href="#">{t}Hostgroup{/t}</a></li>
          <li><a href="#">{t}Category{/t}</a></li>
        </ul>
      </div>
    </div>
</div>
<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" width="100%" id="datatable{$object}" >
    <thead>
        <tr>
        {foreach $datatableParameters.column.firstLevel as $column}
            <th {$column.att}>{$column.lab}</th>
        {/foreach}
        </tr>
        
        {if isset($datatableParameters.column.secondLevel)}
            <tr>
            {foreach $datatableParameters.column.secondLevel as $column}
                <th>{$column.lab}</th>
            {/foreach}
            </tr>
        {/if}
    </thead>

    <tbody>
    </tbody>
    
    <tfoot>
        <tr>
        {foreach $datatableParameters.column.firstLevel as $column}
            <th {$column.att}>{$column.lab}</th>
        {/foreach}
        </tr>
        
        {if isset($datatableParameters.column.secondLevel)}
            <tr>
            {foreach $datatableParameters.column.secondLevel as $column}
                <th>{$column.lab}</th>
            {/foreach}
            </tr>
        {/if}
    </tfoot>

</table>
