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

								<li><a class="submenu" href="GO.jsp"><i class="icon-file-alt"></i><span class="hidden-tablet">G-O模型</span></a></li>
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
				<li><a href="#">人工智能</a></li>
				<li><a href="#">> SVM</a></li>
			</ul>

		
		
		<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>SVM模型 </h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
						
					</div>
					
						
					<div class="box-content">
						<form class="form-horizontal">
							<fieldset>
							<img style="display:block;" src="img/SVM.png" width="350" height="500" style="boder:0" align="right">
							
							<br>
							<br>
							<p>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;Vapnik等人在多年研究统计学习理论基础上对线性分类器提出了另一种设计最佳准则。其原理也从线性可分说起，然后扩</p>
							<p>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;展到线性不可分的情况。甚至扩展到使用非线性函数中去，这种分类器被称为支持向量机(Support Vector Machine，简称</p>
							<p>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;SVM)。支持向量机的提出有很深的理论背景。</p>
							<br><br>
							<p>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;支持向量机(SVM)是建立在统计学习理论的VC维理论和结构风险最小原理基础上的，根据有限的样本信息在模型的复杂性</p>
							<p>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;(即对特定训练样本的学习精度)和学习能力(即无错误地识别任意样本的能力)之间寻求最佳折衷，以期获得最好的推广能力</p>
							<p>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;(或称泛化能力)。</p>
							<br>
							<br>
							<br>
							<br>

                                <div class="control-group">
                                    <label class="control-label" for="date1">预测步长</label>
                                    <div class="controls">
                                        <input type="text"  id="date1" value="" placeholder="设置范围:0-100">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="date2">输入维数</label>
                                    <div class="controls">
                                        <input type="text"  id="date2" value="" placeholder="设置范围:3-10">
                                    </div>
                                </div>

							<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2"> </label>
							  
							</div>
							  <div class="form-actions">
								<button type="button" id="SVMbutton" onclick="runSVM()" class="btn btn-primary">预测</button>
								
							  </div>
							</fieldset>
						  </form>
					
					</div>
				</div><!--/span-->

            <div id="com" class="span7" style="display: none">
                <div class="box">
                    <div id="container"></div>

                    <div id="container" style="min-width:800px;height:100px"></div>
                </div>
            </div>
			</div><!--/row-->


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
            function runSVM() {
                var resultNum = $('#date1').val();
                var inputNum = $('#date2').val();
                var b = document.getElementById("SVMbutton");
                b.innerHTML = "......";
                post('model/SVM', {'resultNum':resultNum, 'inputNum':inputNum}, function (data) {
                    //b.innerHTML = "预测下次失效间隔时间为 " + data[0];
                    post('model/getRealData', {'preNUM':resultNum}, function (timedata) {
                        document.getElementById('com').style.display = "inline";
                        var y = new Array();
                        var predata = new Array();
                        for (var i=1;i<=timedata.length;i++)
                            y.push(i)
                        for (var i=0;i<timedata.length-resultNum;i++)
                            predata.push(timedata[i])
                        for (var i=0;i<resultNum;i++)
                            predata.push(data[i])
                        Highcharts.chart('container', {
                            title: {
                                text: '预测结果'
                            },
                            legend:{
                                itemDistance:20,
                                sysbolWidth:12,
                                symbolHeight:12
                            },
                            xAxis: {
                                categories: y,
                                tickWidth: 1,//刻度的宽度
                                crosshair: true
                            },
                            yAxis : [{

                                title  : '',
                                labels:{
                                    format: '{value}',
                                },
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
                                    data: predata,
                                    name: '预测失效数据',
                                    color:"#f15c80"
                                },
                                {
                                    data: timedata,
                                    name: '实际失效数据',
                                    color:"#e4d354"
                                }
                            ]

                        });
                        b.innerHTML = "预测";
                    })
                });
            }
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