{include file='user/main.tpl'}

<!-- Content Wrapper. Contains page content -->
<div class="page-content-wrapper">

    <!-- Main content -->
    <div class="page-content">
    		<!-- BEGIN PAGE BAR-->
    		<div class="page-bar">
    		   <ul class="page-breadcrumb">
    		       <li>
    		           <h4><span class="caption-subject font-green bold uppercase"> 节点列表</span></h4>
    		       </li>
    		       <li>
    		           <span class="caption-subject font-green bold uppercase"><small>Node List</small></span>
    		       </li>
    		   </ul>
    		</div>
    		<!-- END PAGE BAR-->    	
        <div class="row">
            <div class="alert alert-info alert-dismissable">
                	<button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
                  <strong class="font-red">注意!</strong>&nbsp;请勿在任何地方公开节点地址！谢谢配合！
                  <p>流量比例为1即使用<code>1000MB</code>按照<code>1000MB</code>流量记录结算.</p>
            </div>
        </div>
<!--<div class="col-md-12">-->
    <!-- BEGIN EXAMPLE TABLE PORTLET-->
    <div class="portlet bordered light">
        <div class="portlet-title">
            <div class="caption font-dark">
                <i class="fa fa-globe"></i><strong> 服务器列表 </strong></div>
            <div class="tools"> </div>
        </div>
        <div class="portlet-body">
            <table class="table table-striped table-bordered table-hover dt-responsive" id="responsiveone">
                <thead>
                    <tr>
                        <th class="all"><strong>节点名称</strong></th>
                        <th class="none"><strong>节点地址</strong></th>                        
                        <th class="none"><strong>连接端口</strong></th>
                        <th class="none"><strong>加密方式</strong></th>
                        <th class="none"><strong>Uptime</strong></th>
                        <th class="min-tablet"><strong>在线人数</strong></th>                                               
                        <th class="min-tablet"><strong> 产生流量 </strong></th>                       
                        <th class="min-tablet"><strong> 负载 </strong></th>
                        <th class="nodestatus"><strong>节点状态</strong></th>
                        <th class="none"></th>
                    </tr>
                </thead>                
                <tbody>
                	{foreach $nodes as $node}    
                    <tr>
                        <td class="success">{$node->name}<!--<span class="label label-sm label-success label-mini"> Hot </span>--></td>
                        <td><a href="./node/{$node->id}"><span class="badge bg-blue-steel">{$node->server}</span></a></td>                       
                        <td><span class="badge bg-green">{$user->port}</span></td>
                        <td><span class="badge bg-green">{$user->method}</span></td>
                        <td><span class="badge bg-green">{$node->getNodeUptime()}</span></td>
                        <td><span class="badge bg-green-jungle">{$node->getOnlineUserCount()}</span></td>                                                
                        <td><span class="badge bg-green-jungle">{$node->getTrafficFromLogs()}</span></td>
                        <td><span class="badge bg-green-jungle">{$node->getNodeLoad()}</span></td>
                        <td> <span
                                                    	{if $node->status==1} 
                                                    	   class="badge bg-green-jungle"> 可用 </span></a>   
                                                    	{else} 
                                                    	   class="badge bg-red" > 不可用 </span></a>   
                                                    	{/if}
                        <td><a href="./node/{$node->id}" class="btn btn-outline btn-circle btn-sm purple"> 详细信息 </a></td>                            	
                    </tr>
                  {/foreach}
                </tbody>               
            </table>
        </div>
    </div>
    <!-- END EXAMPLE TABLE PORTLET-->
<!--</div>-->

    </div>
    <!-- /.content -->
</div><!-- /.content-wrapper -->


{include file='user/footer.tpl'}
