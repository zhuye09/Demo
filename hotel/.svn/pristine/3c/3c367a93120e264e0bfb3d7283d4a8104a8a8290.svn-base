<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en"><head>
    <meta charset="utf-8">
    <title>Bootstrap Admin</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">
    <script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>
        <link rel="stylesheet" href="lib/fancy-zoom/css/fancyzoom.css" type="text/css">
    <script type="text/javascript" src="lib/fancy-zoom/src/fancyzoom.js"></script>
    <script type="text/javascript">
        $(function() {
            $('.thumb-md img').fancyZoom({closeOnClick: true, directory:'lib/fancy-zoom/img/'});
        });
    </script>
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/premium.css">
</head>
<body class=" theme-blue">
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
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
    <div class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="" href="index.jsp"><span class="navbar-brand">累了么住房管理</span></a></div>
        <div class="navbar-collapse collapse" style="height: 1px;">
			<ul id="main-menu" class="nav navbar-nav navbar-right">
				<li class="dropdown hidden-xs">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
				在线人数：${applicationScope.onlieNums }&nbsp;&nbsp;&nbsp;
				<c:if test="${user.headerimage == 'userdefault.gif'}">
                <img class="user"src="${pageContext.request.contextPath }/headerimages/${user.headerimage }">
                </c:if>
                <c:if test="${user.headerimage !='userdefault.gif'}">
                <img class="user"  src="${pageContext.request.contextPath }/headerimages/${user.headerimage }_48.jpg">
                </c:if>
				${sessionScope.user.userName}<i class="fa fa-caret-down"></i>
				</a>
				
					<ul class="dropdown-menu">
						<li class="divider"></li>
						<li><a href="${pageContext.request.contextPath }indexuser.jsp">个人信息</a></li>
						<li><a tabindex="-1" href="${pageContext.request.contextPath }/reuserpass.jsp">修改密码</a></li>
						<li><a tabindex="-1" href="${pageContext.request.contextPath }/uplaodheaderimage/setheaderimage1.jsp"">更换头像</a></li>
						<li class="divider"></li>
						<li><a tabindex="-1" href="${pageContext.request.contextPath}/LogoutServlet">注销</a></li>
					</ul></li>
				</ul>
			</div>
      </div>
    </div>
    

   <div class="sidebar-nav">
    <ul>
			<li><a href="#" data-target=".dashboard-menu" class="nav-header"
				data-toggle="collapse"><i class="fa fa-fw fa-dashboard"></i>信息管理<i class="fa fa-collapse"></i></a></li>
			<li><ul class="dashboard-menu nav nav-list collapse in">
					<li><a href="${pageContext.request.contextPath}/FindAllRoomsInfoServlet">
					<span class="fa fa-caret-right"></span>客房状态</a></li>
					<li><a href="roomState.jsp"><span
							class="fa fa-caret-right"></span>选择套餐</a></li>
					<li><a href="addOrder.jsp"><span
							class="fa fa-caret-right"></span>添加订单</a></li>
					<li><a href="${pageContext.request.contextPath}/ShowOrderServlet"><span
							class="fa fa-caret-right"></span>查看订单</a></li>
					<li><a href="users.jsp"><span class="fa fa-caret-right"></span>用户列表</a></li>
					<li><a href="indexuser.jsp"><span class="fa fa-caret-right"></span>用户资料</a></li>
				</ul></li>

			<li data-popover="true" rel="popover" data-placement="right">
				<a href="#" data-target=".premium-menu" class="nav-header collapsed"
				data-toggle="collapse"><i class="fa fa-fw fa-fighter-jet"></i>高级管理<i
					class="fa fa-collapse"></i></a></li>
			<li><ul class="premium-menu nav nav-list collapse">
					<li><a href="indextimeline.jsp"><span
							class="fa fa-caret-right"></span>活动时间表</a></li>


				</ul></li>

			<li><a href="#" data-target=".legal-menu"
				class="nav-header collapsed" data-toggle="collapse"><i
					class="fa fa-fw fa-legal"></i>法律<i class="fa fa-collapse"></i></a></li>
			<li><ul class="legal-menu nav nav-list collapse">
					<li><a href="indexprivacy-policy.jsp"><span
							class="fa fa-caret-right"></span>隐私政策</a></li>
					<li><a href="indexterms-and-conditions.jsp"><span
							class="fa fa-caret-right"></span>条款和条件</a></li>
				</ul></li>
			<li><a href="indexfaq.jsp" class="nav-header"><i
					class="fa fa-fw fa-comment"></i>常问问题</a></li>
			<li><a href="https://www.ele.me" class="nav-header"
				target="blank"><i class="fa fa-fw fa-heart"></i>饿了么</a></li>
		</ul>
    </div>
    

    <div class="content">
        <div class="main-content">
            
<h1 class="page">活动时间表</h1>
<h3 class="page-tagline">一个美丽的方式来显示您的用户活动。</h3>

<div class="row">
<div class="col-md-8 col-md-offset-2">


<div class="panel panel-default">
            <div class="panel-heading">
                近期活动
            </div>
            <ul class="list-group">
                <li class="list-group-item">
                    <div class="media">
                        <a class="pull-left" href="#">
                            <img src="images/faces/3b.png" class="media-object thumb-sm">
                        </a>
                        <div class="media-body">
                            <p class="text-sm pull-right">5小时前</p>
                            <p class="media-heading"><a href="#">Breanna</a>发布的新照片画廊<a href="#">周末拍摄图片</a>.</p> 
                            <p>今天下午4时58分</p>

                            <a href="#"><div class="thumb-md" style="display:inline-block;"><img src="images/media/1.jpg"></div></a>
                            <a href="#"><div class="thumb-md" style="display:inline-block;"><img src="images/media/3.jpg"></div></a>
                            <a href="#"><div class="thumb-md" style="display:inline-block;"><img src="images/media/5.jpg"></div></a>
                            <a href="#"><div class="thumb-md" style="display:inline-block;"><img src="images/media/6.jpg"></div></a>
                        </div>
                    </div>
                </li>
                <li class="list-group-item">
                    <div class="media">
                        <a class="pull-left" href="#">
                            <img src="images/faces/1a.png" class="media-object thumb-sm">
                        </a>
                        <div class="media-body">
                            <p class="text-sm pull-right">7小时前</p>
                            <p class="media-heading"><a href="#">斯科特</a>开始关注<a href="#">Breanna</a>.</p> 
                            <p>今天下午12时02分</p>
                        </div>
                    </div>
                </li>
                <li class="list-group-item">
                    <div class="media">
                        <a class="pull-left" href="#">
                            <img src="images/faces/3a.png" class="media-object thumb-sm">
                        </a>
                        <div class="media-body">
                            <p class="text-sm pull-right">昨天</p>
                            <p class="media-heading"><a href="#">Jacob</a>共享视频<a href="#">Breanna</a>.</p> 
                            <p>晚上11点8月11日</p>
                            <iframe width="280" height="158" src="//www.youtube.com/embed/9HoFIamOLig" frameborder="0" allowfullscreen=""></iframe>
                        </div>
                    </div>
                </li>
                <li class="list-group-item">
                    <div class="media">
                        <a class="pull-left" href="#">
                            <img src="images/faces/1b.png" class="media-object thumb-sm">
                        </a>
                        <div class="media-body">
                            <p class="text-sm pull-right">昨天</p>
                            <p class="media-heading"><a href="#">Ashley</a>开始关注<a href="#">Breanna</a>.</p> 
                            <p>8月11日下午10时02分</p>
                        </div>
                    </div>
                </li>
                <li class="list-group-item">
                    <div class="media">
                        <a class="pull-left" href="#">
                            <img src="images/faces/3b.png" class="media-object thumb-sm">
                        </a>
                        <div class="media-body">
                            <p class="text-sm pull-right">两天前</p>
                            <p class="media-heading"><a href="#">Breanna</a>分享了一个链接<a href="#">bootstrap.com</a></p> 
                            <p>8月12日  下午3:05</p>
                            <div class="bs-callout bs-callout-info">
    <p>专为大家，无处不在</p>
    
    <p>引导使得前端Web开发更快，更容易。它是由各种规模的各种技能水平的人，所有形状的设备和项目</p>
    <div class="row">
    <div class="col-md-4">
        <h5><i class="fa fa-html5 "></i>预处理器</h5>
        <p>除了香草CSS，引导包括两个最流行的CSS预处理器，少萨斯支持。</p>
    </div>
    <div class="col-md-4">
        <h5><i class="fa fa-css3 "></i>预处理器</h5>
        <p>引导方便，高效地扩展您的项目有一个代码库，从手机到平板电脑到桌面。</p>
    </div>
    <div class="col-md-4">
        <h5><i class="fa fa-linux "></i>预处理器</h5>
        <p>自举，你得到数百个活生生的实例和代码广泛和美丽的文档。</p>
    </div>
    </div>

                        </div>
                    </div>
                </div></li>
                <li class="list-group-item">
                    <div class="media">
                        <a class="pull-left" href="#">
                            <img src="images/faces/2a.png" class="media-object thumb-sm">
                        </a>
                        <div class="media-body">
                            <p class="text-sm pull-right">上个星期</p>
                            <p class="media-heading"><a href="#">Josh</a>请求关注<a href="#">Breanna</a>.</p> 
                            <p> 8月2日 下午1:15</p>
                            <button class="btn btn-primary"><i class="fa fa-thumbs-up "></i> åè®¸</button>
                            <button class="btn btn-default"><i class="fa fa-cancel "></i> æç»</button>
                        </div>
                    </div>
                </li>
                <li class="list-group-item">
                    <div class="media">
                        <a class="pull-left" href="#">
                            <img src="images/faces/2b.png" class="media-object thumb-sm">
                        </a>
                        <div class="media-body">
                            <p class="text-sm pull-right">上个星期</p>
                            <p class="media-heading"><a href="#">Ashley</a>开始关注<a href="#">Breanna</a>.</p> 
                            <p>8月1日  上午8:15</p>
                        </div>
                    </div>
                </li>
                <li class="list-group-item">
                    <div class="media">
                        <a class="pull-left" href="#">
                            <img src="images/faces/3b.png" class="media-object thumb-sm">
                        </a>
                        <div class="media-body">
                            <p class="text-sm pull-right">2个星期前</p>
                            <p class="media-heading"><a href="#">Breanna</a>回复<a href="#">Jacob</a>.</p> 
                            <p>7月23日  下午4:15</p>

                            <div class="bs-callout bs-callout-right bs-callout-warning">
    <p>听起来不错！不能等着看你！</p>
    </div>
                        </div>
                    </div>
                </li>
                <li class="list-group-item">
                    <div class="media">
                        <a class="pull-left" href="#">
                            <img src="images/faces/3a.png" class="media-object thumb-sm">
                        </a>
                        <div class="media-body">
                            <p class="text-sm pull-right">3个星期前</p>
                            <p class="media-heading"><a href="#">Jacob</a>传话<a href="#">Breanna</a>.</p> 
                            <p> 7月18日  下午1:15</p>

                            <div class="bs-callout bs-callout-warning">
    <p>Hi <a href="#">@breanna</a>感谢上周的帮助。我会回来的城里下周所以我会再给你打电话吧。</p>
    </div>
                        </div>
                    </div>
                </li>
                <li class="list-group-item">
                    <div class="media">
                        <a class="pull-left" href="#">
                            <img src="images/faces/3b.png" class="media-object thumb-sm">
                        </a>
                        <div class="media-body">
                            <p class="media-heading"><a href="#">Breanna</a>创建了一个帐户。</p> 
                            <p>两年前</p>
                        </div>
                    </div>
                </li>

            </ul>
        </div>
            </div>
            </div>
            </div>
            <footer>
	          <hr>
	          <!-- Purchase a site license to remove this link from the footer: http://www.portnine.com/bootstrap-themes -->
	          <p class="pull-right">累了么酒店住房管理</p>
	          <p>© leileme </p>
	      </footer>
        </div>
    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
<div id="zoom-box" style="display:none;">
   <div class="zoom-content">
   </div>
   <a href="javascript:void(0)" class="zoom-close">
     <img src="lib/fancy-zoom/img//closebox.png" alt="Ã">
   </a>
 </div></body></html>