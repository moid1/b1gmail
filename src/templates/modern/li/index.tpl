<!DOCTYPE html>
<html lang="{lng p="langCode"}">

<style>
	
	#mainContent {
   margin-left: 11%; margin-right: 4%; background: #fff;
   margin-top: 5px;
  }

html {
  --scrollbarBG: #CFD8DC;
  --thumbBG: #90A4AE;
}
#mainContent::-webkit-scrollbar {
  width: 11px;

}
#mainContent {
  scrollbar-width: thin;
  scrollbar-color: var(--thumbBG) var(--scrollbarBG);

}
#mainContent::-webkit-scrollbar-track {
  background: var(--scrollbarBG);
  border-radius: 12px;
}
#mainContent::-webkit-scrollbar-thumb {
  background-color: var(--thumbBG) ;
  border-radius: 6px;
  border: 3px solid var(--scrollbarBG);
}


.bigForm::-webkit-scrollbar {
  width: 11px;

}
.bigForm {
  scrollbar-width: thin;
  scrollbar-color: var(--thumbBG) var(--scrollbarBG);

}
.bigForm::-webkit-scrollbar-track {
  background: var(--scrollbarBG);
  border-radius: 12px;
}
.bigForm::-webkit-scrollbar-thumb {
  background-color: var(--thumbBG) ;
  border-radius: 6px;
  border: 3px solid var(--scrollbarBG);
}

.scrollContainer::-webkit-scrollbar {
  width: 11px;

}
.scrollContainer {
  scrollbar-width: thin;
  scrollbar-color: var(--thumbBG) var(--scrollbarBG);

}
.scrollContainer::-webkit-scrollbar-track {
  background: var(--scrollbarBG);
  border-radius: 12px;
}
.scrollContainer::-webkit-scrollbar-thumb {
  background-color: var(--thumbBG) ;
  border-radius: 6px;

  border: 3px solid var(--scrollbarBG);
}

#mainMenu::-webkit-scrollbar {
  width: 11px;

}
#mainMenu {
  scrollbar-width: thin;
  scrollbar-color: var(--thumbBG) var(--scrollbarBG);

}
#mainMenu::-webkit-scrollbar-track {
  background: var(--scrollbarBG);
  border-radius: 12px;
}
#mainMenu::-webkit-scrollbar-thumb {
  background-color: var(--thumbBG) ;
  border-radius: 6px;
  border: 3px solid var(--scrollbarBG);
}

.innerWidget {

}

input::placeholder {
  color: rgba(255,255,255, 0.6) !important;
}

.inner {
	
	border-radius: 0 !important;
	box-shadow: none !important;

}

	
		

</style>
<head>
    <title>{if isset($pageTitle)}{text value=$pageTitle} - {/if}{$service_title}</title>

	<!-- meta -->
	<meta http-equiv="content-type" content="text/html; charset={$charset}" />

	<!-- links -->
	<link rel="shortcut icon" type="image/png" href="res/favicon.png" />
	<link href="{$tpldir}style/loggedin.css?{fileDateSig file="style/loggedin.css"}" rel="stylesheet" type="text/css" />
	<link href="{$tpldir}style/dtree.css?{fileDateSig file="style/dtree.css"}" rel="stylesheet" type="text/css" />
	<link href="clientlib/fontawesome/css/font-awesome.min.css?{fileDateSig file="../../clientlib/fontawesome/css/font-awesome.min.css"}" rel="stylesheet" type="text/css" />
	<link href="clientlib/fontawesome/css/font-awesome-animation.min.css?{fileDateSig file="../../clientlib/fontawesome/css/font-awesome-animation.min.css"}" rel="stylesheet" type="text/css" />
{foreach from=$_cssFiles.li item=_file}	<link rel="stylesheet" type="text/css" href="{$_file}" />
{/foreach}


	<link href="{$tpldir}assets/libs/quill/quill.core.css?{fileDateSig file="assets/libs/quill/quill.core.css"}" rel="stylesheet" type="text/css"  />

	<link href="{$tpldir}assets/libs/quill/quill.snow.css?{fileDateSig file="assets/libs/quill/quill.snow.css"}" rel="stylesheet" type="text/css"  />
	
    <link href="{$tpldir}assets/css/bootstrap.min.css?{fileDateSig file="assets/css/bootstrap.min.css"}" rel="stylesheet" type="text/css" id="app-style" />

    <link href="{$tpldir}assets/css/app.min.css?{fileDateSig file="assets/css/app.min.css"}" rel="stylesheet" type="text/css" />

    <link href="{$tpldir}assets/css/icons.min.css?{fileDateSig file="assets/css/assets/css/icons.min.css"}" rel="stylesheet" type="text/css" />

    
	<script src="{$tpldir}assets/js/head.js?{fileDateSig file="assets/js/head.js"}" type="text/javascript"></script>

   

     

	  

	<!-- client scripts -->
	<script type="text/javascript">
	<!--
		var currentSID = '{$sid}', tplDir = '{$tpldir}', serverTZ = {$serverTZ}, ftsBGIndexing = {if $ftsBGIndexing}true{else}false{/if}{if $bmNotifyInterval},
			notifyInterval = {$bmNotifyInterval}, notifySound = {if $bmNotifySound}true{else}false{/if}{/if};
	//-->
	</script>
	<script src="clientlang.php?sid={$sid}" type="text/javascript"></script>
	<script src="{$tpldir}js/common.js?{fileDateSig file="js/common.js"}" type="text/javascript"></script>
	<script src="{$tpldir}js/loggedin.js?{fileDateSig file="js/loggedin.js"}" type="text/javascript"></script>
	<script src="clientlib/dtree.js?{fileDateSig file="../../clientlib/dtree.js"}" type="text/javascript"></script>
	<script src="clientlib/overlay.js?{fileDateSig file="../../clientlib/overlay.js"}" type="text/javascript"></script>
	<script src="clientlib/autocomplete.js?{fileDateSig file="../../clientlib/autocomplete.js"}" type="text/javascript"></script>
	<script src="clientlib/favico.min.js?{fileDateSig file="../../clientlib/favico.min.js"}" type="text/javascript"></script>
	<script type="text/javascript">
	{literal}
	var favicon=new Favico({
			animation:'fade'
		});
	{/literal}
	{if $bmUnreadNotifications!=0}favicon.badge({number value=$bmUnreadNotifications min=0 max=99});{/if}
	</script>


	<!--[if lt IE 9]>
	<script defer type="text/javascript" src="clientlib/IE9.js"></script>
	<![endif]-->
	<!--[if IE]>
	<meta http-equiv="Page-Enter" content="blendTrans(duration=0)" />
	<meta http-equiv="Page-Exit" content="blendTrans(duration=0)" />
	<![endif]-->
{foreach from=$_jsFiles.li item=_file}	<script type="text/javascript" src="{$_file}"></script>
{/foreach}
	{hook id="li:index.tpl:head"}
</head>

<body onload="documentLoader()">
	{hook id="li:index.tpl:beforeContent"}

 <!-- Begin page -->
        <div id="wrapper">
        <!-- ========== Menu ========== -->
            <div class="app-menu " style="
            border-radius: 0.25rem; border: 0 solid #dee2e6; height: 70vh !important; position: sticky !important; z-index: 1001 !important; width: 240px; min-width: 240px;">  

                <!-- Brand Logo -->
                <div class="logo-box">
                    <!-- Brand Logo Light -->
                    <a href="index.html" class="logo-light">
                        <img src="assets/images/logo-light.png" alt="logo" class="logo-lg">
                        <img src="assets/images/logo-sm.png" alt="small logo" class="logo-sm">
                    </a>

                    <!-- Brand Logo Dark -->
                    <a href="index.html" class="logo-dark">
                        <img src="assets/images/logo-dark.png" alt="dark logo" class="logo-lg">
                        <img src="assets/images/logo-sm.png" alt="small logo" class="logo-sm">
                    </a>
                </div>

                <!-- menu-left -->
                <div class="scrollbar h-100" style="position: relative;">

                    <!-- User box -->
                    <div class="user-box text-center">
                        <img src="assets/images/users/user-1.jpg" alt="user-img" title="Mat Helme" class="rounded-circle avatar-md">
                        <div class="dropdown">
                            <a href="javascript: void(0);" class="dropdown-toggle h5 mb-1 d-block" data-bs-toggle="dropdown">Geneva Kennedy</a>
                            <div class="dropdown-menu user-pro-dropdown">

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="fe-user me-1"></i>
                                    <span>My Account</span>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="fe-settings me-1"></i>
                                    <span>Settings</span>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="fe-lock me-1"></i>
                                    <span>Lock Screen</span>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="fe-log-out me-1"></i>
                                    <span>Logout</span>
                                </a>

                            </div>
                        </div>
                        <p class="text-muted mb-0">Admin Head</p>
                    </div>

                    <!--- Menu -->
                    <ul class="menu">

                        <li class="menu-title">Navigation</li>

                        <li class="menu-item">
                            <a href="#menuDashboards" data-bs-toggle="collapse" class="menu-link">
                                <span class="menu-icon"><i data-feather="airplay"></i></span>
                                <span class="menu-text"> Dashboards </span>
                               
                            </a>
                            
                        </li>

                        

                        <li class="menu-item">
                            <a href="apps-calendar.html" class="menu-link">
                                <span class="menu-icon"><i data-feather="calendar"></i></span>
                                <span class="menu-text"> Organizer </span>
                            </a>
                        </li>

                        <li class="menu-item">
                            <a href="apps-chat.html" class="menu-link">
                                <span class="menu-icon"><i data-feather="message-square"></i></span>
                                <span class="menu-text"> SMS </span>
                            </a>
                        </li>


                        <li class="menu-title">Email</li>

                        <li class="menu-item">
                            <a href="#menuDashboards" data-bs-toggle="collapse" class="menu-link">
                                <span class="menu-icon"><i data-feather="airplay"></i></span>
                                <span class="menu-text"> Inbox </span>
                               
                            </a>
                            
                        </li>

                        

                        <li class="menu-item">
                            <a href="apps-calendar.html" class="menu-link">
                                <span class="menu-icon"><i data-feather="calendar"></i></span>
                                <span class="menu-text"> Compose Email </span>
                            </a>
                        </li>


                        <li class="menu-title">MISC</li>

                        <li class="menu-item">
                            <a href="#menuDashboards" data-bs-toggle="collapse" class="menu-link">
                                <span class="menu-icon"><i data-feather="airplay"></i></span>
                                <span class="menu-text"> File Manager </span>
                               
                            </a>
                            
                        </li>

                        
                        </ul>
                    
                        </li>
                    </ul>
                    <!--- End Menu -->
                    <div class="clearfix"></div>
                </div>
            </div>
            <!-- ========== Left menu End ========== -->
	

                          
            <div class="content-page" style="flex: 1 1 auto;width: 100%;position: relative;display: flex !important; -webkit-box-orient: vertical;-webkit-box-direction: normal;-ms-flex-direction: column; flex-direction: column; -webkit-box-flex: 1;">

		<div class="navbar-custom" style="background: #38414a; top: 0; position: sticky;  border: 0 solid #dee2e6">
            <div class="topbar">
                        <div class="topbar-menu d-flex align-items-center gap-1">
			  <!-- Topbar Brand Logo -->
                            <div class="logo-box">
                    			<a class="logo" style="color: #fff;" href="/b1gMail/src/start.php?sid={$sid}"{if $templatePrefs.navPos=='top'} onclick="toggleDropdownNavMenu()"{/if}>
                    				{if $activeTab=='_search'}<i class="fa fa-search"></i>{else}{foreach from=$pageTabs key=tabID item=tab}{if $activeTab==$tabID}
                    				
                    				{/if}{/foreach}{/if}
                    				
                    				{if $templatePrefs.navPos=='top'}<span style=""><i class="fas fa-home mx-2" style="color: rgba(255,255,255, 0.6)"></i></span>{/if}


                    			</a>



                            </div>

			
                                
                            

            <div class="toolbar dropdown d-none d-xl-block">
            <a href="#" class=" nav-link dropdown-toggle waves-effect waves-light"  onclick="showNewMenu(this)" title="{lng p="new"}"> Create {lng p="new"}
                            <i class="fa fa-angle-down mx-1" style="color: rgba(255,255,255, 0.6)"></i></a>
			
                        </div>
			

		
			<ul class="topbar-menu d-flex align-items-center" style="margin-left: 85%; margin-right: 0 !important;">
                            <!-- Topbar Search Form -->
                            <li class="app-search dropdown me-3 d-none d-lg-block ">
                                <form>
                                    <input type="search" class="form-control rounded-pill" placeholder="Search..." id="top-search" style="background: #464f5b; color: rgba(255,255,255, 0.6);">
                                    <span class="fe-search search-icon font-16" style="color: rgba(255,255,255, 0.6);"></span>
                                </form>
                                <div class="dropdown-menu dropdown-menu-animated dropdown-lg" id="search-dropdown">
                                    <!-- item-->
                                    <div class="dropdown-header noti-title">
                                        <h5 class="text-overflow mb-2">Found 22 results</h5>
                                    </div>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <i class="fe-home me-1"></i>
                                        <span>Analytics Report</span>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <i class="fe-aperture me-1"></i>
                                        <span>How can I help you?</span>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <i class="fe-settings me-1"></i>
                                        <span>User profile settings</span>
                                    </a>

                                    <!-- item-->
                                    <div class="dropdown-header noti-title">
                                        <h6 class="text-overflow mb-2 text-uppercase">Users</h6>
                                    </div>

                                    <div class="notification-list">
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <div class="d-flex align-items-start">
                                                <img class="d-flex me-2 rounded-circle" src="assets/images/users/user-2.jpg" alt="Generic placeholder image" height="32">
                                                <div class="w-100">
                                                    <h5 class="m-0 font-14">Erwin E. Brown</h5>
                                                    <span class="font-12 mb-0">UI Designer</span>
                                                </div>
                                            </div>
                                        </a>

                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <div class="d-flex align-items-start">
                                                <img class="d-flex me-2 rounded-circle" src="assets/images/users/user-5.jpg" alt="Generic placeholder image" height="32">
                                                <div class="w-100">
                                                    <h5 class="m-0 font-14">Jacob Deo</h5>
                                                    <span class="font-12 mb-0">Developer</span>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </li>

                            <!-- Fullscreen Button -->
                            <li class="d-none d-md-inline-block">
                                <a class="nav-link waves-effect waves-light" style="color: rgba(255,255,255, 0.6);" href="" data-toggle="fullscreen">
                                    <i class="fe-maximize font-22"></i>
                                </a>
                            </li>

                            <!-- Search Dropdown (for Mobile/Tablet) -->
                            <li class="dropdown d-lg-none">
                                <a class="nav-link dropdown-toggle waves-effect waves-light arrow-none" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                    <i class="ri-search-line font-22"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-animated dropdown-lg p-0">
                                    <form class="p-3">
                                        <input type="search" class="form-control" placeholder="Search ..." aria-label="Recipient's username">
                                    </form>
                                </div>
                            </li>

                            <!-- App Dropdown -->
                            <li class="dropdown d-none d-md-inline-block">
                                <a class="nav-link dropdown-toggle waves-effect waves-light arrow-none" data-bs-toggle="dropdown" style="color: rgba(255,255,255, 0.6);" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                    <i class="fe-grid font-22"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated dropdown-lg p-0">

                                    <div class="p-2">
                                        <div class="row g-0">
                                            <div class="col">
                                                <a class="dropdown-icon-item" href="#">
                                                    <img src="assets/images/brands/slack.png" alt="slack">
                                                    <span>Slack</span>
                                                </a>
                                            </div>
                                            <div class="col">
                                                <a class="dropdown-icon-item" href="#">
                                                    <img src="assets/images/brands/github.png" alt="Github">
                                                    <span>GitHub</span>
                                                </a>
                                            </div>
                                            <div class="col">
                                                <a class="dropdown-icon-item" href="#">
                                                    <img src="assets/images/brands/dribbble.png" alt="dribbble">
                                                    <span>Dribbble</span>
                                                </a>
                                            </div>
                                        </div>

                                        <div class="row g-0">
                                            <div class="col">
                                                <a class="dropdown-icon-item" href="#">
                                                    <img src="assets/images/brands/bitbucket.png" alt="bitbucket">
                                                    <span>Bitbucket</span>
                                                </a>
                                            </div>
                                            <div class="col">
                                                <a class="dropdown-icon-item" href="#">
                                                    <img src="assets/images/brands/dropbox.png" alt="dropbox">
                                                    <span>Dropbox</span>
                                                </a>
                                            </div>
                                            <div class="col">
                                                <a class="dropdown-icon-item" href="#">
                                                    <img src="assets/images/brands/g-suite.png" alt="G Suite">
                                                    <span>G Suite</span>
                                                </a>
                                            </div>
                                        </div> <!-- end row-->
                                    </div>
                                </div>
                            </li>

                            <!-- Language flag dropdown  -->
                            <li class="dropdown d-none d-md-inline-block">
                                <a class="nav-link dropdown-toggle waves-effect waves-light arrow-none" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                    <img src="https://cdn-icons-png.flaticon.com/512/555/555526.png" alt="user-image" class="me-0 me-sm-1" height="26">
                                </a>
                                <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated">

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">
                                        <img src="assets/images/flags/germany.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">German</span>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">
                                        <img src="assets/images/flags/italy.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">Italian</span>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">
                                        <img src="assets/images/flags/spain.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">Spanish</span>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">
                                        <img src="assets/images/flags/russia.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">Russian</span>
                                    </a>

                                </div>
                            </li>

                            <!-- Notofication dropdown -->
                            <li class="dropdown notification-list">
                                {if $bmNotifyInterval>0}<a href="#" class="px-1" style="color: rgba(255,255,255, 0.6); font-size: 23px;" onclick="showNotifications(this)" title="{lng p="notifications"}" style="position:relative;"><i id="notifyIcon" class="far fa-bell "></i><div class="noBadge" id="notifyCount"{if $bmUnreadNotifications==0} style="display:none;"{/if}>{number value=$bmUnreadNotifications min=0 max=99}</div></a>{/if}
                                <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated dropdown-lg py-0">
                                    <div class="p-2 border-top-0 border-start-0 border-end-0 border-dashed border">
                                        <div class="row align-items-center">
                                            <div class="col">
                                                <h6 class="m-0 font-16 fw-semibold"> Notification</h6>
                                            </div>
                                            <div class="col-auto">
                                                <a href="javascript: void(0);" class="text-dark text-decoration-underline">
                                                    <small>Clear All</small>
                                                </a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="px-1" style="max-height: 300px;" data-simplebar>

                                        <h5 class="text-muted font-13 fw-normal mt-2">Today</h5>
                                        <!-- item-->

                                        <a href="javascript:void(0);" class="dropdown-item p-0 notify-item card unread-noti shadow-none mb-1">
                                            <div class="card-body">
                                                <span class="float-end noti-close-btn text-muted"><i class="mdi mdi-close"></i></span>
                                                <div class="d-flex align-items-center">
                                                    <div class="flex-shrink-0">
                                                        <div class="notify-icon bg-primary">
                                                            <i class="mdi mdi-comment-account-outline"></i>
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1 text-truncate ms-2">
                                                        <h5 class="noti-item-title fw-semibold font-14">Datacorp <small class="fw-normal text-muted ms-1">1 min ago</small></h5>
                                                        <small class="noti-item-subtitle text-muted">Caleb Flakelar commented on Admin</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>

                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item p-0 notify-item card read-noti shadow-none mb-1">
                                            <div class="card-body">
                                                <span class="float-end noti-close-btn text-muted"><i class="mdi mdi-close"></i></span>
                                                <div class="d-flex align-items-center">
                                                    <div class="flex-shrink-0">
                                                        <div class="notify-icon bg-info">
                                                            <i class="mdi mdi-account-plus"></i>
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1 text-truncate ms-2">
                                                        <h5 class="noti-item-title fw-semibold font-14">Admin <small class="fw-normal text-muted ms-1">1 hours ago</small></h5>
                                                        <small class="noti-item-subtitle text-muted">New user registered</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>

                                        <h5 class="text-muted font-13 fw-normal mt-0">Yesterday</h5>

                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item p-0 notify-item card read-noti shadow-none mb-1">
                                            <div class="card-body">
                                                <span class="float-end noti-close-btn text-muted"><i class="mdi mdi-close"></i></span>
                                                <div class="d-flex align-items-center">
                                                    <div class="flex-shrink-0">
                                                        <div class="notify-icon">
                                                            <img src="assets/images/users/avatar-2.jpg" class="img-fluid rounded-circle" alt="" />
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1 text-truncate ms-2">
                                                        <h5 class="noti-item-title fw-semibold font-14">Cristina Pride <small class="fw-normal text-muted ms-1">1 day ago</small></h5>
                                                        <small class="noti-item-subtitle text-muted">Hi, How are you? What about our next meeting</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>

                                        <h5 class="text-muted font-13 fw-normal mt-0">30 Dec 2021</h5>

                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item p-0 notify-item card read-noti shadow-none mb-1">
                                            <div class="card-body">
                                                <span class="float-end noti-close-btn text-muted"><i class="mdi mdi-close"></i></span>
                                                <div class="d-flex align-items-center">
                                                    <div class="flex-shrink-0">
                                                        <div class="notify-icon bg-primary">
                                                            <i class="mdi mdi-comment-account-outline"></i>
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1 text-truncate ms-2">
                                                        <h5 class="noti-item-title fw-semibold font-14">Datacorp</h5>
                                                        <small class="noti-item-subtitle text-muted">Caleb Flakelar commented on Admin</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>

                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item p-0 notify-item card read-noti shadow-none mb-1">
                                            <div class="card-body">
                                                <span class="float-end noti-close-btn text-muted"><i class="mdi mdi-close"></i></span>
                                                <div class="d-flex align-items-center">
                                                    <div class="flex-shrink-0">
                                                        <div class="notify-icon">
                                                            <img src="assets/images/users/avatar-4.jpg" class="img-fluid rounded-circle" alt="" />
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1 text-truncate ms-2">
                                                        <h5 class="noti-item-title fw-semibold font-14">Karen Robinson</h5>
                                                        <small class="noti-item-subtitle text-muted">Wow ! this admin looks good and awesome design</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>

                                        <div class="text-center">
                                            <i class="mdi mdi-dots-circle mdi-spin text-muted h3 mt-0"></i>
                                        </div>
                                    </div>

                                    <!-- All-->
                                    <a href="javascript:void(0);" class="dropdown-item text-center text-primary notify-item border-top border-light py-2">
                                        View All
                                    </a>

                                </div>
                            </li>

                            <!-- Light/Dark Mode Toggle Button -->
                            <li class="d-none d-sm-inline-block mx-1">
                                <div class="nav-link waves-effect waves-light px-1" id="light-dark-mode">
                                    <i class="ri-moon-line" style="color: rgba(255,255,255, 0.6); font-size: 22px;"></i>
                                </div>
                            </li>

                            

                            <!-- Right Bar offcanvas button (Theme Customization Panel) -->
                            <li>
                                <a class="nav-link waves-effect waves-light" style="color: rgba(255,255,255, 0.6);" href="prefs.php?sid={$sid}">
                                    <i class="fe-settings font-22"></i>
                                </a>
                            </li>
                        </ul>

                    </div>

                </div>


			<div class="toolbar">
				{if isset($pageToolbarFile)}
				{comment text="including $pageToolbarFile"}
				{include file="$pageToolbarFile"}
				{elseif isset($pageToolbar)}
				{$pageToolbar}
				{else}
				&nbsp;
				{/if}
			</div>

			<div class="menu fade" id="dropdownNavMenu" style="display:none;">
				<div class="arrow"></div>
				{foreach from=$pageTabs key=tabID item=tab}
				{comment text="tab $tabID"}
				<a href="{$tab.link}{$sid}" style="color: #rgba(255,255,255,.6);" title="{$tab.text}"{if $activeTab==$tabID} class="active"{/if}>
					<i class="fa {$tab.faIcon}"></i>
					{$tab.text}
				</a>
				{/foreach}
			</div>
		</div>

		<style>
			

			
			.toolbar {
				 color: rgba(255,255,255,.6) !important;
			}
			.toolbar a {
				 color: rgba(255,255,255,.6) !important;
			}

			.toolbar:hover {
				 color: #bccee4 !important;
			}
			.toolbar a:hover {
				 color: #bccee4 !important;
			}

			.sidebarHeading {
				display: none;
			}
			.contentMenuIcons a:first-child {
				margin-top: 20px;
				background: #f1556c;
				color: #fff;
				padding: 0.45rem 0.9rem;
    			text-align: center;
    			font-size: 0.875rem;
    			font-weight: 400;
    			line-height: 1.5;
				align-items: center;
				border-radius: 5px;
			}

			.contentMenuIcons a {
				color: var(--ct-body-color);
                padding: 0px 0px 0px 0px;
                display: block;
                font-size: 15px;
            }

			.contentMenuIcons .dtree .dTreeNode {
				display: flex;
				margin: 20px 0px;
				font-size: 16px;
			}
			.contentMenuIcons .dtree .dTreeNode i {
				font-size: 16px;
				margin-top: auto;
				margin-bottom: auto;
			}

            .content {
                overflow:scroll; overflow-x: hidden;
            }
            ::-webkit-scrollbar {
              width: 3px;
             

            }
            ::-webkit-scrollbar-track {
              background: #d3d3d3;

            }

            /* Handle */
            ::-webkit-scrollbar-thumb {
              background: #888;
            }

            /* Handle on hover */
            ::-webkit-scrollbar-thumb:hover {
              background: #555;
            }
		</style>


                <div class="content">

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
                                                    <p class="text-muted mb-1 " style="white-space:nowrap">Dates in the next 30 days</p>
                                                  
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

                   
<style>
    .miniCalendarTable {
        display: none;
    }

    [title^='Welcome'], [title*=' Welcome']{
    display: none;
}

#dc_startBoxesdragItem_BMPlugin_Widget_Calendar {
    display: none;
}
td:nth-child(2) {
    width: 20%;
    text-align: center;
}
td:nth-child(3) {
    width: 20%;
    text-align: center;
}
td:nth-child(5) {
    width: 20%;
    text-align: start;
}
td:nth-child(4) i{
    display: none;
}

td:nth-child(1) {
    display: none;

}

</style>
        


		<div id="mainMenu" class="border border-1 mt-1 bg-light" style="display: none; width: 270px; margin-left: 5%; border-radius: 5px;">
			<div id="mainMenuContainer"{if $templatePrefs.navPos=='left'} style="bottom:{math equation="x*29" x=$pageTabsCount}px;"{/if}>
	            {if $pageMenuFile}
	            {comment text="including $pageMenuFile"}
	            {include file="$pageMenuFile"}
	            {else}
	            {foreach from=$pageMenu key=menuID item=menu}
	            {comment text="menuitem $menuID"}
	           	<a href="{$menu.link}">
		            <img src="{$tpldir}images/li/menu_ico_{$menu.icon}.png" width="16" height="16" border="0" alt="" align="absmiddle" />
		            {$menu.text}
	            </a>
	            {if $menu.addText}
	            <span class="menuAddText">{$menu.addText}</span>
	            {/if}
	            <br />
	        	{/foreach}
	            {/if}
            </div>

			{if $templatePrefs.navPos=='left'}
			<ul id="menuTabItems">
	            {foreach from=$pageTabs key=tabID item=tab}
	            {comment text="tab $tabID"}
	            <li{if $activeTab==$tabID} class="active"{/if}>
	            	<a href="{$tab.link}{$sid}">
	            		<i class="fa {$tab.faIcon}"></i>
	                    {if $tab.text}&nbsp;{$tab.text}{/if}
	                </a>
	            </li>
	            {/foreach}
			</ul>
			{/if}
		</div>

		<div id="mainBanner" style="display:none;">
			{banner}
		</div>

		<div id="mainContent" class="bg-light border border-1" class="up" style="display:none;">
			{include file="$pageContent"}
		</div>

		<!-- <div id="mainStatusBar">
			powered by <a target="_blank" href="deref.php?https://www.b1gmail.eu/" rel="noreferrer">b1gMail.eu</a>
		</div> -->

	    {comment text="search popup"}
	    <div class="headerBox" id="searchPopup" style="display:none">
			<div class="arrow"></div>
			<div class="inner">
				<table width="100%" cellspacing="0" cellpadding="0" class="up" onmouseover="disableHide=true;" onmouseout="disableHide=false;">
					<tr>
						<td>
							{if $templatePrefs.navPos=='top'}<div class="arrow"></div>{/if}
							<table cellspacing="0" cellpadding="0" width="100%">
								<tr>
									<td width="22" height="26" align="right"><i id="searchSpinner" style="display:none;" class="fa fa-spinner fa-pulse fa-fw"></i></td>
									<td align="right" width="70">{lng p="search"}: &nbsp;</td>
									<td align="center">
										<input type="search" id="searchField" name="searchField" style="width:90%" onkeypress="searchFieldKeyPress(event,{if $searchDetailsDefault}true{else}false{/if})" />
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tbody id="searchResultBody" style="display:none">
					<tr>
						<td id="searchResults"></td>
					</tr>
					</tbody>
				</table>
			</div>
		</div>

	    {comment text="new menu"}
		<div class="headerBox bg-light p-0 mt-1" id="newMenu" style="display:none; border-radius: 0px 0px 6px 6px;">
			<div class="arrow"></div>
			<div class="dropdown">
			{foreach from=$newMenu item=item}
				{if array_key_exists('sep', $item)}
				<div class="dropdown-menu "></div>
				{else}
				<a class="dropdown-item m-1" href="{$item.link}{$sid}"><i class="fa {$item.faIcon}" aria-hidden="true"></i> {$item.text}...</a>
				{/if}
			{/foreach}
			</div>
		</div>

		{comment text="notifications"}
		<div class="headerBox bg-light p-0 mt-1" id="notifyBox" style="display:none; border-radius: 0px 0px 6px 6px;">
			<div class="dropdown">

			<div class="dropdown-menu"></div>
			<div class="dropdown-item m-1" id="notifyInner"></div>

			</div>
		</div>

             
      

                <!-- Footer Start
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6">
                                <div><script>document.write(new Date().getFullYear())</script> © Ubold - <a href="https://coderthemes.com/" target="_blank">Coderthemes.com</a></div>
                            </div>
                            <div class="col-md-6">
                                <div class="d-none d-md-flex gap-4 align-item-center justify-content-md-end footer-links">
                                    <a href="javascript: void(0);">About</a>
                                    <a href="javascript: void(0);">Support</a>
                                    <a href="javascript: void(0);">Contact Us</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
                end Footer -->

                  </div> <!-- container -->

                </div> <!-- content -->

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->




        </div>
        <!-- END wrapper -->

	


	<script src="{$tpldir}assets/js/vendor.min.js?{fileDateSig file="assets/js/vendor.min.js"}" type="text/javascript"></script>
	<script src="{$tpldir}assets/js/app.min.js?{fileDateSig file="assets/js/app.min.js"}" type="text/javascript"></script>
	<!-- <script src="{$tpldir}assets/libs/quill/quill.min.js?{fileDateSig file="assets/libs/quill/quill.min.js"}" type="text/javascript"></script> -->


	<script src="{$tpldir}assets/libs/chart.js/Chart.bundle.min.js?{fileDateSig file="assets/libs/chart.js/Chart.bundle.min.js"}" type="text/javascript"></script>
	

	<script src="{$tpldir}assets/libs/moment/min/moment.min.js?{fileDateSig file="assets/libs/moment/min/moment.min.js"}" type="text/javascript"></script>

	<script src="{$tpldir}assets/libs/jquery.scrollto/jquery.scrollTo.min.js?{fileDateSig file="assets/libs/jquery.scrollto/jquery.scrollTo.min.js"}" type="text/javascript"></script>

	<script src="{$tpldir}assets/js/pages/jquery.chat.js?{fileDateSig file="assets/js/pages/jquery.chat.js"}" type="text/javascript"></script>

	<script src="{$tpldir}assets/js/pages/jquery.todo.js?{fileDateSig file="assets/js/pages/jquery.todo.js"}" type="text/javascript"></script>

    <script src="{$tpldir}assets/js/pages/dashboard-3.init.js?{fileDateSig file="assets/js/pages/dashboard-3.init.js"}" type="text/javascript"></script>


    {hook id="li:index.tpl:afterContent"}
</body>

</html>
