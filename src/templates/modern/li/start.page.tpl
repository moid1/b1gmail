
<div id="" class="row mt-1 pt-2" style="width: 100%; border-radius: 5px; ">
	<div class="col-6 px-2" style="">
		<h4 class="fs-3 px-2"><i class="fa fa-home" style="z-index: 9;" aria-hidden="true"></i> {lng p="welcome"}!<h4>
	</div>
	
	<div class="col-6 text-end" >
		{if $templatePrefs.showUserEmail}
		<em>{$_userEmail}</em>
		{/if}
		<button class="btn fs-5  py-1 btn-secondary " onclick="document.location.href='start.php?action=customize&sid={$sid}';" type="button">
			<i class="fa fa-puzzle-piece" aria-hidden="true"></i>
			{lng p="customize"}
		</button>
	</div>
	
</div>



<style>
	
	.innerWidget a {
	color: var(--ct-body-color);
    font-size: 15px;
	}

	.innerWidget a:hover {
	color: #000 !important;
    font-size: 15px;
	}
	.dragTable {
	
	 display: flex;
		 flex-wrap: wrap; 
		 width: 100%;
	}
	.dragItem {
	margin: 20px 10px 20px 5px;
	width: 400px;
	height: auto;
	border-radius: 5px;

	}

	.dragTableColumn {
		display: flex;
		width: 100%;
	}

	#mainContent {
	border-radius: 5px;


	.dragItem {
		background: none !important;
	}

	.dragBar {
		background: none !important;
	}

	

</style>


<div class="" style="margin-top: -4px;  width: 98.8%; overflow-x: hidden;"><div class="pad row" >
	{hook id="start.page.tpl:head"}
	
	<div id="startBoxes" class="px-2" style="">
	</div>

	<div id="startBoxes_elems" class="" style="display:none">
	{foreach from=$widgets item=widget key=key}
		<div title="{text value=$widget.title}" class="" rel="{if $widget.hasPrefs}1{else}0{/if},{$widget.prefsW},{$widget.prefsH},{if $widget.icon}{$widget.icon}{else}0{/if}" id="{$key}">{include file=$widget.template}</div>
	{/foreach}
	</div>
	
	{hook id="start.page.tpl:foot"}
</div></div>


                    <!-- Start Content-->
                    <div class="container-fluid">
                        
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    
                                    <h4 class="page-title">Dashboard</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-md-6 col-xl-3">
                                <div class="widget-rounded-circle card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-6">
                                                <div class="avatar-lg rounded-circle bg-soft-primary border-primary border">
                                                    <i class="fe-mail font-22 avatar-title text-primary"></i>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="text-end">
                                                    <h3 class="text-dark mt-1"><span data-plugin="counterup"></span></h3>
                                                    <p class="text-muted mb-1 text-truncate">Unread Emails</p>
                                                </div>
                                            </div>
                                        </div> <!-- end row-->
                                    </div>
                                </div> <!-- end widget-rounded-circle-->
                            </div> <!-- end col-->

                            <div class="col-md-6 col-xl-3">
                                <div class="widget-rounded-circle card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-6">
                                                <div class="avatar-lg rounded-circle bg-soft-success border-success border">
                                                    <i class="fe-calendar font-22 avatar-title text-success"></i>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="text-end">
                                                    <h3 class="text-dark mt-1"><span data-plugin="counterup"></span></h3>
                                                    <p class="text-muted mb-1 text-truncate">Dates in the next 30 days</p>
                                                    <div class="clndrWdgtDates" style="font-size: 22px;">
                                                        <div style="text-align:center;font-size:10px;font-style:italic;">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> <!-- end row-->
                                    </div>
                                </div> <!-- end widget-rounded-circle-->
                            </div> <!-- end col-->

                            <div class="col-md-6 col-xl-3">
                                <div class="widget-rounded-circle card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-6">
                                                <div class="avatar-lg rounded-circle bg-soft-info border-info border">
                                                    <i class="fe-check-circle font-22 avatar-title text-info"></i>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="text-end">
                                                    <h3 class="text-dark mt-1"><span data-plugin="counterup">0.58</span>%</h3>
                                                    <p class="text-muted mb-1 text-truncate">Open Tasks</p>
                                                </div>
                                            </div>
                                        </div> <!-- end row-->
                                    </div>
                                </div> <!-- end widget-rounded-circle-->
                            </div> <!-- end col-->

                            <div class="col-md-6 col-xl-3">
                                <div class="widget-rounded-circle card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-6">
                                                <div class="avatar-lg rounded-circle bg-soft-warning border-warning border">
                                                    <i class="fe-eye font-22 avatar-title text-warning"></i>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="text-end">
                                                    <h3 class="text-dark mt-1"><span data-plugin="counterup">78.41</span>k</h3>
                                                    <p class="text-muted mb-1 text-truncate">Used WebDisk Space</p>
                                                </div>
                                            </div>
                                        </div> <!-- end row-->
                                    </div>
                                </div> <!-- end widget-rounded-circle-->
                            </div> <!-- end col-->
                        </div>
                        <!-- end row-->


                         <div class="row">
                           

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="dropdown float-end">
                                            <a href="#" class="dropdown-toggle arrow-none card-drop" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-end">
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Edit Report</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Export Report</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                            </div>
                                        </div>
    
                                        <h4 class="header-title mb-3" style="font-weight: bold;">E-Mails</h4>
    
                                        <div class="table-responsive">
                                            <table class="table table-borderless table-nowrap table-hover table-centered m-0">
    
                                                <thead class="table-light">
                                                    <tr>
                                                        <th>Directory</th>
                                                        <th>Email Count</th>
                                                        <th>Marked</th>
                                                        <th>Unread</th>
                                                       
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                   <!--  <tr>
                                                        <td>
                                                            <h5 class="m-0 fw-normal">Inobx</h5>
                                                        </td>
        
                                                        <td>
                                                            Oct 15, 2018
                                                        </td>
        
                                                        <td>
                                                            $5848.68
                                                        </td>
        
                                                        <td>
                                                            <span class="badge bg-soft-warning text-warning">Upcoming</span>
                                                        </td>
        
                                                    
                                                    </tr>
    
                                                    <tr>
                                                        <td>
                                                            <h5 class="m-0 fw-normal">Sent</h5>
                                                        </td>
        
                                                        <td>
                                                            Oct 12, 2018
                                                        </td>
        
                                                        <td>
                                                            $1247.25
                                                        </td>
        
                                                        <td>
                                                            <span class="badge bg-soft-success text-success">Paid</span>
                                                        </td>
        
                                                      
                                                    </tr>
    
                                                    <tr>
                                                        <td>
                                                            <h5 class="m-0 fw-normal">Drafts</h5>
                                                        </td>
        
                                                        <td>
                                                            Oct 10, 2018
                                                        </td>
        
                                                        <td>
                                                            $815.89
                                                        </td>
        
                                                        <td>
                                                            <span class="badge bg-soft-success text-success">Paid</span>
                                                        </td>
        
                                                      
                                                    </tr>
    
                                                    <tr>
                                                        <td>
                                                            <h5 class="m-0 fw-normal">Spam</h5>
                                                        </td>
        
                                                        <td>
                                                            Oct 03, 2018
                                                        </td>
        
                                                        <td>
                                                            $248.75
                                                        </td>
        
                                                        <td>
                                                            <span class="badge bg-soft-danger text-danger">Overdue</span>
                                                        </td>
        
                                                      
                                                    </tr> -->
        
                                             
                                                <div class=""><div class="">
                                                    {hook id="start.page.tpl:head"}
                                                    
                                                    <div id="">
                                                    </div>
                                                    <div id="" style="display:none">
                                                    {foreach from=$widgets item=widget key=key}
                                                        <div title="{text value=$widget.title}" rel="{if $widget.hasPrefs}1{else}0{/if},{$widget.prefsW},{$widget.prefsH},{if $widget.icon}{$widget.icon}{else}0{/if}" id="{$key}">{include file=$widget.template}</div>
                                                    {/foreach}
                                                    </div>
                                                    
                                                    {hook id="start.page.tpl:foot"}
                                                </div>
                                            </div>
    
                                                </tbody>
                                            </table>
                                        </div> <!-- end .table-responsive-->
                                    </div>
                                </div> <!-- end card-->
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->



<script src="./clientlib/dragcontainer.js?{fileDateSig file="../../clientlib/dragcontainer.js"}" type="text/javascript"></script>
<script>
<!--
	currentSID = '{$sid}';
	var dc = new dragContainer('startBoxes', 3, 'dc');
	dc.order = '{$widgetOrder}';
	dc.onOrderChanged = startBoardOrderChanged;
	dc.run();
	{if isset($autoSetPreviewPos)}autoSetPreviewPos();{/if}
//-->
</script>
