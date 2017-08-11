<%@page import="cn.sendto.hotel.models.UserModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script type="text/javascript">
	function check_id(){
		var id=document.getElementById("id").value;
		var pro_id=document.getElementById("pro_id");
		pro_id.innerHTML="";
		if (id=="") {
			pro_id.innerHTML="房间号不能为空";
			return false;
		} else{
			return true;
		}
	}
	
</script>
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
						<li><a href="${pageContext.request.contextPath }/admuser.jsp">个人信息</a></li>
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
    <li><a href="#" data-target=".dashboard-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-dashboard"></i>数据管理<i class="fa fa-collapse"></i></a></li>
    <li><ul class="dashboard-menu nav nav-list collapse in">
            <li><a href="${pageContext.request.contextPath}/AdminSuperMen"><span class="fa fa-caret-right"></span>高级用户</a></li>
            <li ><a href="${pageContext.request.contextPath}/AdminFindUser"><span class="fa fa-caret-right"></span>用户列表</a></li>
			
            <li ><a href="${pageContext.request.contextPath}/adminAddRole.jsp"><span class="fa fa-caret-right"></span>
            添加职务</a></li>
            <li ><a href="${pageContext.request.contextPath}/FindRoleServlet"><span class="fa fa-caret-right"></span>
            查询职务</a></li>
			<li ><a href="${pageContext.request.contextPath}/adminAddRoomType.jsp"><span class="fa fa-caret-right"></span>
            添加客房类型</a></li>
            <li ><a href="${pageContext.request.contextPath}/ViewRoomsType"><span class="fa fa-caret-right"></span>
            添加客房信息</a></li>
             <li ><a href="${pageContext.request.contextPath}/AdminFindRoomType"><span class="fa fa-caret-right"></span>
            查询客房类型</a></li>
            <li ><a href="${pageContext.request.contextPath}/AdminFindRooms"><span class="fa fa-caret-right"></span>
            查询客房信息</a></li>
            
    </ul></li>
    <li data-popover="true" data-content="Items in this group require a <strong><a href='http://portnine.com/bootstrap-themes/aircraft' target='blank'>premium license</a><strong>." rel="popover" data-placement="right"><a href="#" data-target=".premium-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-fighter-jet"></i>内部活动<i class="fa fa-collapse"></i></a></li>
            <li><ul class="premium-menu nav nav-list collapse">
            <li class="visible-xs visible-sm"><a href="#">- Premium features require a license-</a></span>
            <li ><a href="${pageContext.request.contextPath}/premium-blog.jsp"><span class="fa fa-caret-right"></span>留言板</a></li>
            <li ><a href="${pageContext.request.contextPath}/premium-blog-item.jsp"><span class="fa fa-caret-right"></span>发表留言</a></li>            
            <li ><a href="${pageContext.request.contextPath}/premium-timeline.jsp"><span class="fa fa-caret-right"></span>活动时间表</a></li>
            <li ><a href="${pageContext.request.contextPath}/media.jsp"><span class="fa fa-caret-right"></span>房源图片展示</a></li>
            <li ><a href="${pageContext.request.contextPath}/premium-colors.jsp"><span class="fa fa-caret-right"></span>其他颜色主题</a></li>
    </ul></li>
        <li><a href="#" data-target=".legal-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-legal"></i>法律<i class="fa fa-collapse"></i></a></li>
        <li><ul class="legal-menu nav nav-list collapse">
            <li ><a href="privacy-policy.jsp"><span class="fa fa-caret-right"></span>隐私政策</a></li>
            <li ><a href="terms-and-conditions.jsp"><span class="fa fa-caret-right"></span>条款和条件</a></li>
    </ul></li>
       
            <li><a href="adminfaq.jsp" class="nav-header"><i class="fa fa-fw fa-comment"></i>常见问题</a></li>
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
        <div class="main-content" >
	<p align=center style="color:red;">${Msg}</p>
<div class="row">
  <div class="col-md-4">
    <br>
    <div id="myTabContent" class="tab-content" style="width:316%;">
      <div class="tab-pane active in" id="home" style="margin-left:20em;margin-right:20em;">
      <form class="form-horizontal" role="form" method="post" action="${pageContext.request.contextPath}/AdminAddRooms">
  <div class="form-group" style="margin-left:2em;">
    <label for="lastname"  class="col-sm-2 control-label" style="width:10em;">房间号:</label>
    <div class="col-sm-10" style="width:20em;">
      <input type="text" class="form-control" name="id" id="id" placeholder="请输入房间号" onblur="check_id()"/>
      <span id="pro_id" style="font-size: 14px;color: red;"></span>
    </div>
  </div>
   <div class="form-group" style="margin-left:2em;">
    <label for="lastname"  class="col-sm-2 control-label" style="width:10em;">房间类型:</label>
    
    <div class="col-sm-10" style="width:20em;">
    <select   name="typeId" id="typeId" class="form-control">
              
                <c:forEach items="${requestScope.roomType}" var="item" varStatus="vs">
                 <option value="${item.id }">${item.typeName}</option>
                </c:forEach>
			 </select>
    
    </div>
  </div>
   <div class="form-group" style="margin-left:2em;">
    <label for="lastname"  class="col-sm-2 control-label" style="width:10em;">房间位置:</label>
    <div class="col-sm-10" style="width:20em;">
    <select name="positions" id="positions" class="form-control" >
    	<option value="1F">1F</option>
    	<option value="2F">2F</option>
    	<option value="3F">3F</option>
    	<option value="4F">4F</option>
    	<option value="5F">5F</option>
    	<option value="6F">6F</option>
    </select>
      <span id="pro_positions" style="font-size: 14px;color: red;"></span>
    </div>
  </div>
  </div>
  <div class="form-group" style="margin-left:2em;">
    <div class="col-sm-offset-2 col-sm-10" style="width:6em;margin-left:36em;">
      <button type="submit"  class="btn btn-default" >添加 </button>
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
    
  
</body></html>
