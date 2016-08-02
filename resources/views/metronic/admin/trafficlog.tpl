{include file='admin/main.tpl'}

<!-- Content Wrapper. Contains page content -->
<div class="page-content-wrapper">   
    <!-- Main content -->
    <div class="page-content">
    		<!-- BEGIN PAGE BAR-->
    		<div class="page-bar">
    		   <ul class="page-breadcrumb">
    		       <li>
    		           <h4><span class="caption-subject font-green bold uppercase">流量使用记录</span></h4>
    		       </li>
    		       <li>
    		           <span class="caption-subject font-green bold uppercase"><small>Traffic Log</small></span>
    		       </li>
    		   </ul>
    		</div>
    		<!-- END PAGE BAR-->  	
        <div class="row">
            <div class="alert alert-info alert-dismissable">
            
                <div class="callout callout-warning">
                	<button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
                  <strong>注意!</strong>&nbsp;部分节点不支持流量记录.
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                    <div class="table-scrollable">
                        {$logs->render()}
                        <table class="table table-striped table-hover">
                        	<thead>
                            <tr>
                                <th scope="col" style="width:70px !important">ID</th>
                                <th scope="col">用户ID</th>
                                <th scope="col">用户昵称</th>
                                <th scope="col">使用节点</th>
                                <th scope="col">倍率</th>
                                <th scope="col">实际使用流量</th>
                                <th scope="col">结算流量</th>
                                <th scope="col">记录时间</th>
                            </tr>
                            </thead>                            
                            {foreach $logs as $log}
                            <tbody>
                                <tr>
                                    <td>#{$log->id}</td>
                                    <td>{$log->user_id}</td>
                                    <td>{$log->user()->user_name}</td>
                                    <td>{$log->node()->name}</td>
                                    <td>{$log->rate}</td>
                                    <td>{$log->totalUsed()}</td>
                                    <td>{$log->traffic}</td>
                                    <td>{$log->logTime()}</td>
                                </tr>
                            </tbody>                                
                            {/foreach}
                        </table>
                        {$logs->render()}
                    </div>
            </div>
        </div>

    </div><!-- /.content -->
</div><!-- /.content-wrapper -->

{include file='admin/footer.tpl'}