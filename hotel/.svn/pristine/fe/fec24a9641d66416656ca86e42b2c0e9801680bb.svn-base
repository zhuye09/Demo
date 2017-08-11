
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
						<li><a href="${pageContext.request.contextPath }/indexuser.jsp">个人信息</a></li>
						<li><a tabindex="-1" href="${pageContext.request.contextPath }/reuserpass.jsp">修改密码</a></li>
						<li><a tabindex="-1" href="${pageContext.request.contextPath }/uplaodheaderimage/setheaderimage1.jsp"">更换头像</a></li>
						<li class="divider"></li>
						<li><a tabindex="-1" href="${pageContext.request.contextPath}/LogoutServlet">注销</a></li>
					</ul></li>
			</ul>
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
            <h1 class="page-title">用户资料</h1>
        </ul>
        </div>
        <div class="main-content">
<ul class="nav nav-tabs">
  <li class="active"><a href="#home" data-toggle="tab">个人资料</a></li>
  ${Msg}
</ul>
<form id="tab" method="post" action="${pageContext.request.contextPath }/indexuserServlet">
<div class="row">
  <div class="col-md-4">
    <br>
    <div id="myTabContent" class="tab-content">
      <div class="tab-pane active in" id="home">
        <div class="form-group">
        <label>用户名</label>
        <input type="text" value="${sessionScope.user.userName}"  readonly="readonly" class="form-control">
        </div>
        <div class="form-group">
        <label>职务</label>
        <input type="text" value="${sessionScope.user.roleName}" readonly="readonly" class="form-control">
        </div>
        <div class="form-group">
        <label>入职时间</label>
        <input type="text" value="${sessionScope.user.enrollDate}" readonly="readonly" class="form-control">
        </div>
        <div class="form-group">
        <label>性别</label>
        <c:if test="${sessionScope.user.gender.equals('男')}">
         <input type="radio" name="gender" id="radio1" value="男" checked="checked">男
        </c:if>
       <c:if test="${sessionScope.user.gender.equals('女')}">
        <input type="radio" name="gender" id="radio2" value="女" checked="checked">女
        </c:if>
        </div>
        <div class="form-group">
        <label>真实姓名</label>
        <input type="text" name="trueName" readonly="readonly" value="${sessionScope.user.trueName}" class="form-control">
        </div>
        <div class="form-group">
        <label>电话</label>
        <input type="text" name="tel" readonly="readonly" value="${sessionScope.user.tel}" class="form-control">
        </div>
      </div>
    </div>
    <div class="btn-toolbar list-toolbar">
      <input type="submit" class="btn btn-primary" value="返回">
       </form>
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
    </div>
    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
</body></html>
    