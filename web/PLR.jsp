<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<!-- start: Meta -->
	<meta charset="utf-8">
	<title>软件可靠性评估分析系统</title>
	<meta name="description" content="Bootstrap Metro Dashboard">
	<meta name="author" content="Dennis Ji">
	<meta name="keyword" content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link id="bootstrap-style" href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="css/style-responsive.css" rel="stylesheet">
	<!-- end: CSS -->

    <script src="https://img.hcharts.cn/highcharts/highcharts.js"></script>

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="css/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="css/ie9.css" rel="stylesheet">
	<![endif]-->
		
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="img/favicon.ico">
	<!-- end: Favicon -->

	<script src="js/jquery/jquery-3.2.1.min.js"></script>
	<script src="js/common/ajaxfunc.js"></script>
		
</head>

<body>
		<!-- start: Header -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="form.jsp"><span>可靠性评估分析系统</span></a>
								
				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav">
					<ul class="nav pull-right">
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white warning-sign"></i>
							</a>
							<ul class="dropdown-menu notifications">
								<li class="dropdown-menu-title">
 									<span>You have 11 notifications</span>
									<a href="#refresh"><i class="icon-repeat"></i></a>
								</li>	
                            	<li>
                                    <a href="#">
										<span class="icon blue"><i class="icon-user"></i></span>
										<span class="message">New user registration</span>
										<span class="time">1 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="icon green"><i class="icon-comment-alt"></i></span>
										<span class="message">New comment</span>
										<span class="time">7 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="icon green"><i class="icon-comment-alt"></i></span>
										<span class="message">New comment</span>
										<span class="time">8 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="icon green"><i class="icon-comment-alt"></i></span>
										<span class="message">New comment</span>
										<span class="time">16 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="icon blue"><i class="icon-user"></i></span>
										<span class="message">New user registration</span>
										<span class="time">36 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="icon yellow"><i class="icon-shopping-cart"></i></span>
										<span class="message">2 items sold</span>
										<span class="time">1 hour</span> 
                                    </a>
                                </li>
								<li class="warning">
                                    <a href="#">
										<span class="icon red"><i class="icon-user"></i></span>
										<span class="message">User deleted account</span>
										<span class="time">2 hour</span> 
                                    </a>
                                </li>
								<li class="warning">
                                    <a href="#">
										<span class="icon red"><i class="icon-shopping-cart"></i></span>
										<span class="message">New comment</span>
										<span class="time">6 hour</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="icon green"><i class="icon-comment-alt"></i></span>
										<span class="message">New comment</span>
										<span class="time">yesterday</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="icon blue"><i class="icon-user"></i></span>
										<span class="message">New user registration</span>
										<span class="time">yesterday</span> 
                                    </a>
                                </li>
                                <li class="dropdown-menu-sub-footer">
                            		<a>View all notifications</a>
								</li>	
							</ul>
						</li>
						<!-- start: Notifications Dropdown -->
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white tasks"></i>
							</a>
							<ul class="dropdown-menu tasks">
								<li class="dropdown-menu-title">
 									<span>You have 17 tasks in progress</span>
									<a href="#refresh"><i class="icon-repeat"></i></a>
								</li>
								<li>
                                    <a href="#">
										<span class="header">
											<span class="title">iOS Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim red">80</div> 
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="header">
											<span class="title">Android Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim green">47</div> 
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="header">
											<span class="title">ARM Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim yellow">32</div> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="header">
											<span class="title">ARM Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim greenLight">63</div> 
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="header">
											<span class="title">ARM Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim orange">80</div> 
                                    </a>
                                </li>
								<li>
                            		<a class="dropdown-menu-sub-footer">View all tasks</a>
								</li>	
							</ul>
						</li>
						<!-- end: Notifications Dropdown -->
						<!-- start: Message Dropdown -->
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white envelope"></i>
							</a>
							<ul class="dropdown-menu messages">
								<li class="dropdown-menu-title">
 									<span>You have 9 messages</span>
									<a href="#refresh"><i class="icon-repeat"></i></a>
								</li>	
                            	<li>
                                    <a href="#">
										<span class="avatar"><img src="img/avatar.jpg" alt="Avatar"></span>
										<span class="header">
											<span class="from">
										    	Dennis Ji
										     </span>
											<span class="time">
										    	6 min
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="avatar"><img src="img/avatar.jpg" alt="Avatar"></span>
										<span class="header">
											<span class="from">
										    	Dennis Ji
										     </span>
											<span class="time">
										    	56 min
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="avatar"><img src="img/avatar.jpg" alt="Avatar"></span>
										<span class="header">
											<span class="from">
										    	Dennis Ji
										     </span>
											<span class="time">
										    	3 hours
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="avatar"><img src="img/avatar.jpg" alt="Avatar"></span>
										<span class="header">
											<span class="from">
										    	Dennis Ji
										     </span>
											<span class="time">
										    	yesterday
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="avatar"><img src="img/avatar.jpg" alt="Avatar"></span>
										<span class="header">
											<span class="from">
										    	Dennis Ji
										     </span>
											<span class="time">
										    	Jul 25, 2012
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
								<li>
                            		<a class="dropdown-menu-sub-footer">View all messages</a>
								</li>	
							</ul>
						</li>
						<!-- end: Message Dropdown -->
						<li>
							<a class="btn" href="#">
								<i class="halflings-icon white wrench"></i>
							</a>
						</li>
						<!-- start: User Dropdown -->
						<li class="dropdown">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white user"></i> Dennis Ji
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-title">
 									<span>Account Settings</span>
								</li>
								<li><a href="#"><i class="halflings-icon user"></i> Profile</a></li>
								<li><a href="login.jsp"><i class="halflings-icon off"></i> Logout</a></li>
							</ul>
						</li>
						<!-- end: User Dropdown -->
					</ul>
				</div>
				<!-- end: Header Menu -->
				
			</div>
		</div>
	</div>
	<!-- start: Header -->
	
		<div class="container-fluid-full">
		<div class="row-fluid">

			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span2">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li><a href="form.jsp"><i class="icon-bar-chart"></i><span class="hidden-tablet"> 首页</span></a></li>
						<li><a href="data.jsp"><i class="icon-bar-chart"></i><span class="hidden-tablet"> 数据管理</span></a></li>
						<li><a class="dropmenu" href="#"><i class="icon-folder-close-alt"></i><span class="hidden-tablet"> 经典模型</span><span class="label label-important"> 2 </span></a>
							<ul>
								<li><a class="submenu" href="JM.jsp"><i class="icon-file-alt"></i><span class="hidden-tablet">JM模型</span></a></li>

								<li><a class="submenu" href="GO.jsp"><i class="icon-file-alt"></i><span class="hidden-tablet">GO模型</span></a></li>
							</ul>
						<li><a class="dropmenu" href="#"><i class="icon-folder-close-alt"></i><span class="hidden-tablet"> 人工智能</span><span class="label label-important"> 2 </span></a>
							<ul>
								<li><a class="submenu" href="SVM.jsp"><i class="icon-file-alt"></i><span class="hidden-tablet"> SVM</span></a></li>

								<li><a class="submenu" href="BP.jsp"><i class="icon-file-alt"></i><span class="hidden-tablet"> BP</span></a></li>
							</ul>


						<li><a class="dropmenu" href="#"><i class="icon-folder-close-alt"></i><span class="hidden-tablet"> 模型评估</span><span class="label label-important"> 2 </span></a>
							<ul>
								<li><a class="submenu" href="UY.jsp"><i class="icon-file-alt"></i><span class="hidden-tablet"> U图--Y图</span></a></li>

								<li><a class="submenu" href="PLR.jsp"><i class="icon-file-alt"></i><span class="hidden-tablet"> PLR图</span></a></li>
							</ul>

						<li><a href="system.jsp"><i class="icon-font"></i><span class="hidden-tablet"> 系统管理</span></a></li>

						<li><a href="login.jsp"><i class="icon-lock"></i><span class="hidden-tablet">登录界面</span></a></li>
					</ul>
				</div>
			</div>
			<!-- end: Main Menu -->
			
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
			<!-- start: Content -->
			<div id="content" class="span10">
			
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="form.jsp">可靠性评估分析系统</a>
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">模型评估</a></li>
				<li><a href="#">> PLR图</a></li>
			</ul>
	<div class="row-fluid">
				
				<div class="span7">
					<h1>PLR</h1>
					<br>
										<div class="box-content">
						<form class="form-horizontal">
							<fieldset>
					 	<img style="display:block;" src="img/PLR1.png" width="300" height="200" style="boder:0" align="left">
						<br>
						<br>
						<img style="display:block;" src="img/plr.png" width="300" height="200" style="boder:0" align="left">
			
							<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2"> </label>
							  
							</div>
							  
							</fieldset>
						  </form>
					
					</div>

                    <div class="box">
                        <div id="container"></div>

                        <div id="container" style="min-width:800px;height:100px"></div>
                    </div>
                    <div class="box">
                        <div id="container1"></div>

                        <div id="container1" style="min-width:800px;height:100px"></div>
                    </div>
					<div class="priority high"><span>检验结果</span></div>
				
				
					<div class="task low">
						<div class="desc">
						<br>
							<div id="PLRresult" class="title"></div>
						</div>
                        <br>
					</div>
					
					<div class="clearfix"></div>		
					
				</div>

				<div class="span5 noMarginLeft">
					
					<div class="dark">
					
					<h1>PLR介绍及原理</h1>
					
					<div class="timeline">
						
					    <div class="timeslot">
					    	
							<div class="task">
					    		<span>
									<span class="details">简介</span>
									<span class="details">
										序列似然比是用来对两个模型预计质量的相对优劣进行评定的一个指标
									</span>
									
								</span>
								<div class="arrow"></div>
							</div>							
							<div class="icon">
								<i class="icon-map-marker"></i>
							</div>
						
								
					    </div>
					
						<div class="clearfix"></div>
						
						<div class="timeslot alt">
					    	
							<div class="task">
					    		<span>
									<span class="type"></span>
									<span class="details">
										通过计算此指标，比较不同模型对同一分布所作预计的相对准确程度
									</span>
									
								</span>
								<div class="arrow"></div>
							</div>
							<div class="icon">
								<i class="icon-phone"></i>
							</div>
							
								
					    </div>
					
						<div class="timeslot">
					    	
							<div class="task">
					    		<span>
									<span class="details">总体思路</span>
									<span class="details">
										软件失效发生在软件失效时间的分布函数密度大的地方可能性较大
									</span>
									
								</span>
								<div class="arrow"></div>
							</div>
							<div class="icon">
								<i class="icon-envelope"></i>
							</div>
							
					    </div>
				    
					</div>
				</div>
				
				</div>							
			</div>

	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
		
	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>Settings</h3>
		</div>
		<div class="modal-body">
			<p>Here settings can be configured...</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Close</a>
			<a href="#" class="btn btn-primary">Save changes</a>
		</div>
	</div>
	
	<div class="clearfix"></div>
	
	<footer>

		<p>
			<span style="text-align:left;float:left">&copy; 2013 <a href="http://jiji262.github.io/Bootstrap_Metro_Dashboard/" alt="Bootstrap_Metro_Dashboard">Bootstrap Metro Dashboard</a></span>
			
		</p>

	</footer>
	
	<!-- start: JavaScript-->
		<script>
            post('model/PLR', {}, function (PLRdata) {
                Highcharts.chart('container', {
                        title: {
                            text: '模型概率密度分布'
                        },
                        legend:{
                            itemDistance:20,
                            sysbolWidth:12,
                            symbolHeight:12
                        },
                        xAxis: {
                            categories: PLRdata[0],
                            tickWidth: 1,//刻度的宽度
                            crosshair: true
                        },
                        yAxis : [{

                            title  : '',
                            labels:{
                                format: '{value}',
                            },
                            max:0.01,
                            tickInterval:0.001,
                            tickWidth: 1,//刻度的宽度
                            gridLineWidth: 1,
                            min: 0
                        }
                        ],

                        plotOptions: {
                            series: {
                                cursor: 'pointer',
                                events: {
                                    click: function () {
                                        alert('您点击的数据列是：' + this.name);
                                    }
                                }
                            }
                        },
                        series: [
                            {
                                data: PLRdata[1],
                                name: 'JM-f()'
                            },
                            {
                                data: PLRdata[2],
                                name: 'GO-f()',
                                color:"#e4d354",
                            }
                        ]

                    });
                Highcharts.chart('container1', {
                    title: {
                        text: 'PLR'
                    },
                    legend:{
                        itemDistance:20,
                        sysbolWidth:12,
                        symbolHeight:12
                    },
                    xAxis: {
                        categories: PLRdata[0],
                        tickWidth: 1,//刻度的宽度
                        crosshair: true
                    },
                    yAxis : [{

                        title  : '',
                        labels:{
                            format: '{value}',
                        },
                        tickInterval:1,
                        tickWidth: 1,//刻度的宽度
                        gridLineWidth: 1,
                        min: 0
                    }
                    ],

                    plotOptions: {
                        series: {
                            cursor: 'pointer',
                            events: {
                                click: function () {
                                    alert('您点击的数据列是：' + this.name);
                                }
                            }
                        }
                    },
                    series: [
                        {
                            data: PLRdata[3],
                            name: 'PLR',
                            color:"#f15c80",
                        }
                    ]

                });
                if (PLRdata.length == 0){
                    alert("未加载数据");
					return;
				}
				else if (PLRdata.length == 1){
                    alert("模型参数估计出错");
                    return;
				}
                var plr = 1;
                for (i in PLRdata[3]){
                    plr = plr * PLRdata[3][i];
                }
                document.getElementById('PLRresult').innerHTML = "PLR = " + plr + ", ";
                if (plr>1)
                    document.getElementById('PLRresult').innerHTML += "当前JM模型优于GO模型";
                else if (plr<1)
                    document.getElementById('PLRresult').innerHTML += "当前GO模型优于JM模型";
                else
                    document.getElementById('PLRresult').innerHTML += "当前两种模型效果相近";
            })
		</script>
		<script src="js/jquery-1.9.1.min.js"></script>
	<script src="js/jquery-migrate-1.0.0.min.js"></script>
	
		<script src="js/jquery-ui-1.10.0.custom.min.js"></script>
	
		<script src="js/jquery.ui.touch-punch.js"></script>
	
		<script src="js/modernizr.js"></script>
	
		<script src="js/bootstrap.min.js"></script>
	
		<script src="js/jquery.cookie.js"></script>
	
		<script src='js/fullcalendar.min.js'></script>
	
		<script src='js/jquery.dataTables.min.js'></script>

		<script src="js/excanvas.js"></script>
	<script src="js/jquery.flot.js"></script>
	<script src="js/jquery.flot.pie.js"></script>
	<script src="js/jquery.flot.stack.js"></script>
	<script src="js/jquery.flot.resize.min.js"></script>
	
		<script src="js/jquery.chosen.min.js"></script>
	
		<script src="js/jquery.uniform.min.js"></script>
		
		<script src="js/jquery.cleditor.min.js"></script>
	
		<script src="js/jquery.noty.js"></script>
	
		<script src="js/jquery.elfinder.min.js"></script>
	
		<script src="js/jquery.raty.min.js"></script>
	
		<script src="js/jquery.iphone.toggle.js"></script>
	
		<script src="js/jquery.uploadify-3.1.min.js"></script>
	
		<script src="js/jquery.gritter.min.js"></script>
	
		<script src="js/jquery.imagesloaded.js"></script>
	
		<script src="js/jquery.masonry.min.js"></script>
	
		<script src="js/jquery.knob.modified.js"></script>
	
		<script src="js/jquery.sparkline.min.js"></script>
	
		<script src="js/counter.js"></script>
	
		<script src="js/retina.js"></script>

		<script src="js/custom.js"></script>
	<!-- end: JavaScript-->
	
</body>
</html>
