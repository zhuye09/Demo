<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en"><head>
    <meta charset="utf-8">
    <title>Bootstrap Admin</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>

    

    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/premium.css">
<%
//获取信息
	String message = (String) request.getAttribute("message");
	String info = "";
	if (message != null) {
		info = message;
	}


%>
</head>
<body class=" theme-blue">

    <!-- Demo page code -->

    <script type="text/javascript">
        $(function() {
            var match = document.cookie.match(new RegExp('color=([^;]+)'));
            if(match) var color = match[1];
            if(color) {
                $('body').removeClass(function (index, css) {
                    return (css.match (/\btheme-\S+/g) || []).join(' ')
                })
                $('body').addClass('theme-' + color);
            }

            $('[data-popover="true"]').popover({html: true});
            
        });
    </script>
    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .navbar-default .navbar-brand, .navbar-default .navbar-brand:hover { 
            color: #fff;
        }
    </style>

    <script type="text/javascript">
        $(function() {
            var uls = $('.sidebar-nav > ul > *').clone();
            uls.addClass('visible-xs');
            $('#main-menu').append(uls.clone());
        });
    </script>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
  

  <!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
  <!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
  <!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
  <!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
  <!--[if (gt IE 9)|!(IE)]><!--> 
   
  <!--<![endif]-->

    <div class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="" href="index.jsp"><span class="navbar-brand">累了么住房管理</span></a></div>

        <div class="navbar-collapse collapse" style="height: 1px;">
          <ul id="main-menu" class="nav navbar-nav navbar-right">
            <li class="dropdown hidden-xs">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-user padding-right-small" style="position:relative;top: 3px;"></span> Jack Smith
                    <i class="fa fa-caret-down"></i>
                </a>

              <ul class="dropdown-menu">
                <li><a href="./">我的账户</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">管理面板</li>
                <li><a href="./">个人信息</a></li>
                <li><a href="./">安全中心</a></li>
                <li><a tabindex="-1" href="./">修改密码</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="sign-in.jsp">注销</a></li>
              </ul>
            </li>
          </ul>

        </div>
      </div>
    </div>
    
<div class="sidebar-nav">
    <ul>
    <li><a href="#" data-target=".dashboard-menu" class="nav-header" data-toggle="collapse"><i class="fa fa-fw fa-dashboard"></i>数据管理<i class="fa fa-collapse"></i></a></li>
    <li><ul class="dashboard-menu nav nav-list collapse in">
            <li><a href="adminIndex.jsp"><span class="fa fa-caret-right"></span>基本信息</a></li>
            <li ><a href="adminUsers.jsp"><span class="fa fa-caret-right"></span> 用户列表</a></li>
			<li ><a href="premium-users.jsp"><span class="fa fa-caret-right"></span>高级用户列表</a></li>
            <li ><a href="adminAddRole.jsp"><span class="fa fa-caret-right"></span>
            添加职务</a></li>
            <li ><a href="addRole.jsp"><span class="fa fa-caret-right"></span>
            查询职务</a></li>
			<li ><a href="addRoomType.jsp"><span class="fa fa-caret-right"></span>
            添加客房信息</a></li>
            <li ><a href="addRoomType.jsp"><span class="fa fa-caret-right"></span>
            查询客房信息</a></li>
    </ul></li>
	
    <li data-popover="true" data-content="Items in this group require a <strong><a href='http://portnine.com/bootstrap-themes/aircraft' target='blank'>premium license</a><strong>." rel="popover" data-placement="right"><a href="#" data-target=".premium-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-fighter-jet"></i>内部活动<i class="fa fa-collapse"></i></a></li>


            <li><ul class="premium-menu nav nav-list collapse">
            <li class="visible-xs visible-sm"><a href="#">- Premium features require a license-</a></span>
            <li ><a href="premium-blog.jsp"><span class="fa fa-caret-right"></span>留言板</a></li>
            <li ><a href="premium-blog-item.jsp"><span class="fa fa-caret-right"></span>发表留言</a></li>            
            <li ><a href="premium-timeline.jsp"><span class="fa fa-caret-right"></span>活动时间表</a></li>
            
            <li ><a href="premium-media.jsp"><span class="fa fa-caret-right"></span>房源图片展示</a></li>
            
            <li ><a href="premium-colors.jsp"><span class="fa fa-caret-right"></span>其他颜色主题</a></li>
    </ul></li>

        <li><a href="#" data-target=".legal-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-legal"></i>法律<i class="fa fa-collapse"></i></a></li>
        <li><ul class="legal-menu nav nav-list collapse">
            <li ><a href="privacy-policy1.jsp"><span class="fa fa-caret-right"></span>隐私政策</a></li>
            <li ><a href="terms-and-conditions.jsp"><span class="fa fa-caret-right"></span>条款和条件</a></li>
    </ul></li>
        <li><a href="help.jsp" class="nav-header"><i class="fa fa-fw fa-question-circle"></i>帮助</a></li>
            <li><a href="faq.jsp" class="nav-header"><i class="fa fa-fw fa-comment"></i>常见问题</a></li>
                <li><a href="https://www.ele.me" class="nav-header" target="blank"><i class="fa fa-fw fa-heart"></i>饿了么</a></li>
            </ul>
    </div>
    <div class="content">
        <div class="header">
            
            <h1 class="page-title">添加房间信息</h1>
                    <ul class="breadcrumb">
            <li><a href="index.jsp">首页</a> </li>
            <li><a href="users.jsp">添加房间信息</a> </li>
        </ul>

        </div>
        <div class="main-content">
	<p align=center style="color:red;"><%=info %></p>
<div class="row">
  <div class="col-md-4">
    <br>
    <div id="myTabContent" class="tab-content" style="width:316%;">
      <div class="tab-pane active in" id="home" style="margin-left:20em;margin-right:20em;">
      <form class="form-horizontal" role="form" method="post" action="${pageContext.request.contextPath}/AdminAddRooms">
  <div class="form-group" style="margin-left:2em;">
    <label for="lastname"  class="col-sm-2 control-label" style="width:10em;">房间号:</label>
    <div class="col-sm-10" style="width:20em;">
      <input type="text" class="form-control" name="id" id="id" placeholder="请输入房间号">
    </div>
  </div>
   <div class="form-group" style="margin-left:2em;">
    <label for="lastname"  class="col-sm-2 control-label" style="width:10em;">房间类型:</label>
    <select   name="typeId" id="typeId" class="form-control">
              
                <c:forEach items="${roomsType}" var="item" varStatus="vs">
                 <option value="${item.id }">${item.typeName}</option>
                </c:forEach>
			 </select>
    <div class="col-sm-10" style="width:20em;">
    
    
    </div>
  </div>
   <div class="form-group" style="margin-left:2em;">
    <label for="lastname"  class="col-sm-2 control-label" style="width:10em;">房间位置:</label>
    <div class="col-sm-10" style="width:20em;">
      <input type="text" class="form-control" name="positions" id="positions" placeholder="请输入位置描述">
    </div>
  </div>
 
  </div>
  <div class="form-group" style="margin-left:2em;">
    <div class="col-sm-offset-2 col-sm-10" style="width:6em;margin-left:13em;">
      <button type="submit" class="btn btn-default">添加 </button>
    </div>
  </div>
</form>
      </div>
    </div>
  </div>
</div>
            <footer>
                <hr>

                <!-- Purchase a site license to remove this link from the footer: http://www.portnine.com/bootstrap-themes -->
                <p class="pull-right">A <a href="http://www.portnine.com/bootstrap-themes" target="_blank">Free Bootstrap Theme</a> by <a href="http://www.portnine.com" target="_blank">Portnine</a></p>
                <p>A© 2014 <a href="http://www.portnine.com" target="_blank">Portnine</a></p>
            </footer>
        </div>
    </div>


    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
    
  
</body></html>
