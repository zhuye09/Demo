<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
          <a class="" href="adminIndex.jsp"><span class="navbar-brand">累了么住房管理</span></a></div>
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
						<li><a href="${pageContext.request.contextPath }/indexuser.jsp">个人信息</a></li>
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
							class="fa fa-caret-right"></span>查看价格</a></li>
					<li><a href="${pageContext.request.contextPath}/FindAllRoomsInfoServlet"><span
							class="fa fa-caret-right"></span>添加订单</a></li>
					<li><a href="${pageContext.request.contextPath}/ShowOrderServlet"><span
							class="fa fa-caret-right"></span>查看订单</a></li>
					<li><a href="indexuser.jsp"><span class="fa fa-caret-right"></span>用户资料</a></li>
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
        <div class="header">
            
            <h1 class="page-title">条款和条件</h1>
                    <ul class="breadcrumb">
            <li><a href="index.jsp">首页</a></li>
            <li class="active">条款和条件</li>
        </ul>

        </div>
        <div class="main-content">
            
<h3>使用条款</h3>
这些条款和条件构成您之间的协议("协议") （“您”，“您”，“用户”，“客户”）和累了么。

<h3>资格和身份</h3>
为了有资格使用我们的服务，你必须至少13岁，否则须有监护人陪同，以保证您的安全与使用便利。

<h3>终止</h3>
您可以通过停止所有使用服务，并通过通知我们在任何时候终止本协议。本公司可以终止本协议，在任何时候，不通知你，如果它认为，在其独立的判断，您已经违反或可能违反本协议的任何条款或条件。

<h3>服务及账户的用途</h3>
您声明并保证你拥有合法权利，并订立本协议的能力。您同意不使用的材料，内容，服务，和您的账户用于任何非法或辱骂的目的或在与我们提供服务给我们的客户，或者是损害我们的财产干扰能力的任何方式。

<h3>修改服务</h3>
本公司可能会改变，暂停或随时终止本服务的全部或任何部分，有或没有道理的。您承认，本服务的运作可能会不时遇到技术或其他问题，不一定继续中断或没有技术或其他错误，本公司概不负责对您或其他任何这样的中断，错误或问题，或者服务的彻底终止。
<h3>知识产权的所有权</h3>
所有材料，服务，帐户，和内容，包括但不限于，包含在策略信息，文字，软件，音乐，声音，图片，视频，图形，文本和图像，商业化生产的信息的结构中，和其它材料本网站或通过服务（“内容”），由本公司提供的，除非另有说明。

<h3>隐私</h3>
请参阅我们的 <a href="privacy-policy.jsp">所阐述的网站上。

<h3>关于这些条款</h3>
<p>这些条款和条件只是一个样本，并没有法律约束力。服务的实质不（通常）包含餐饮...</p>
            <footer>
	          <hr>
	          <!-- Purchase a site license to remove this link from the footer: http://www.portnine.com/bootstrap-themes -->
	          <p class="pull-right">累了么酒店住房管理</p>
	          <p>© leileme </p>
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

