<%@page import="cn.sendto.hotel.models.UserModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en"><head>
    <meta charset="utf-8">
    <title>Admin</title>
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
      function checkTypeNmae(){
    	var typename=document.getElementById("typeName").value;
    	var pro_typeName=document.getElementById("pro_typeName");
    	pro_typeName.innerHTML="";
    	if (typename == "") {
    		pro_typeName.innerHTML="请输入房间类型！";
    		return false;
    	} else{
    		return true;
    	}
    } 
    function checkAreas(){
    	var areas=document.getElementById("areas").value;
    	var pro_areas=document.getElementById("pro_areas");
    	pro_areas.innerHTM="";
    
    	if (areas == "") {
    		pro_areas.innerHTML="请输入房间面积！";
    		return false;
    	}else if(areas<=20){
    		pro_areas.innerHTML="房间面积不能小于20平方米！";
    		return false;
    	}else{
    		return true;
    	}
    } 
    function checkBeds(){
    	var beds=document.getElementById("beds").value;
    	var pro_beds=document.getElementById("pro_beds");
    	
    	pro_beds.innerHTML="";
    	if (beds == "") {
    		pro_beds.innerHTML="请输入房间床位数！";
    		return false;
    	}else if (beds >3 && beds < 0) {
    		pro_beds.innerHTML="房间床位数不能大于三张！";
    		return false;
    	}else{
    		return true;
    	}
    } 
    function checkPrice(){
    	var price=document.getElementById("price").value;
    	var pro_price=document.getElementById("pro_price");
    	pro_price.innerHTML="";
    	if (price == "") {
    		pro_price.innerHTML="请输入房间价格！";
    		return false;
    	} else if (price <100) {
    		pro_price.innerHTML="房间价格不能小于一百！";
    		return false;
       }else{
    		return true;
    	}
    } 
    function checkdata(){
    	if(!checkTypeNmae()){
    		return false;
    	}
    	if(!checkAreas()){
    		return false;
    	}
    	
    	if(!checkBeds()){
    		return false;
    	}
    	if(!checkPrice()){
    		return false;
    	}
    }
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
            <li><a href="adminIndex.jsp">首页</a> </li>
            <li><a href="adminAddRoomType.jsp">添加房间信息</a> </li>
        </ul>
        </div>
        <div class="main-content">
	<p align=center style="color:red;"></p>
<div class="row">
  <div class="col-md-4">
    <br>
    <div id="myTabContent" class="tab-content" style="width:316%;">
      <div class="tab-pane active in" id="home" style="margin-left:20em;margin-right:20em;">
      <form class="form-horizontal" role="form" method="post" action="${pageContext.request.contextPath}/AdminAddRoomType" onsubmit="return checkdata()">
      <li style="font-size:14px; color:red; align:center;list-style:none;">${Msg}</li>
  <div class="form-group" style="margin-left:2em;">
    <label for="lastname"  class="col-sm-2 control-label" style="width:10em;">房间类型名称:</label>
    <div class="col-sm-10" style="width:20em;">
      <input type="text" class="form-control" name="typeName" id="typeName" placeholder="请输入房间类型名称" onblur="checkTypeNmae()" >
      <span id="pro_typeName" style="color:red;font-size:14px;"></span>
    </div>
    </div>
    <div class="form-group" style="margin-left:2em;">
    <label for="lastname"  class="col-sm-2 control-label" style="width:10em;">房间面积:</label>
    <div class="col-sm-10" style="width:20em;">
      <input type="text" class="form-control" name="areas" id="areas" placeholder="请输入房间面积" onblur="checkAreas()" >
      <span id="pro_areas" style="color:red;font-size:14px;" ></span>
    </div>
    </div>
    <div class="form-group" style="margin-left:2em;">
    <label for="lastname"  class="col-sm-2 control-label" style="width:10em;">床位数:</label>
    <div class="col-sm-10" style="width:20em;">
      <input type="text" class="form-control" name="beds" id="beds" placeholder="请输入床位数" onblur="checkBeds()">
      <span id="pro_beds" style="color:red;font-size:14px;"></span>
    </div>
    </div>
   <div class="form-group" style="margin-left:2em;">
    <label for="lastname"  class="col-sm-2 control-label" style="width:10em;" >价格:</label>
    <div class="col-sm-10" style="width:20em;">
      <input type="text" class="form-control" name="price" id="price" placeholder="请输入价格" onblur="checkPrice()">
      <span id="pro_price" style="color:red;font-size:14px;"></span>
    </div>
  </div>
  </div>
  <div class="form-group" style="margin-left:2em;">
    <div class="col-sm-offset-2 col-sm-10" style="width:6em;margin-left:36em;">
      <button type="submit"   class="btn btn-default">添加 </button>
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
