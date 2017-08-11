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
    <script type="text/javascript">
    function check_name(){
    	var name=document.getElementById("userName").value;
    	var pro_name=document.getElementById("pro_name");
    	var reg=/^\w{1,16}$/;
    	pro_name.innerHTML="";
    	if (reg.test(name)==false) {
    		pro_name.innerHTML="用户名为1~16位任意字符";
    		return false;
    	} else{
    		return true;
    	}
    }
    function check_truename(){
    	var truename=document.getElementById("trueName").value;
    	var pro_truename=document.getElementById("pro_truename");
    	var reg=/^\w{1,16}$/;
    	pro_truename.innerHTML="";
    	if (reg.test(truename)==false) {
    		pro_truename.innerHTML="真实姓名为1~16位任意字符";
    		return false;
    	} else{
    		return true;
    	}
    }
    function check_tel(){
    	var tel=document.getElementById("tel").value;
    	var pro_tel=document.getElementById("pro_tel");
    	var reg=/^1\d{10}$/;
    	pro_tel.innerHTML="";
    	if (reg.test(tel)==false) {
    		pro_tel.innerHTML="请输入11位手机号";
    		return false;
    	} else{
    		return true;
    	}
    }
    function checkdata(){
    	if(!check_name()){
    		return false;
    	}
    	if(!check_truename()){
    		return false;
    	}
    	
    	if(!check_tel()){
    		return false;
    	}
    	
   // return true;
    
    }
    </script>
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
    <form  action="${pageContext.request.contextPath}/AdminAddUser" method="post" onsubmit="return checkdata()">
    <div class="content">
        <div class="header">
            <h1 class="page-title"></h1>
                    <ul class="breadcrumb">
            <li><a href="adminIndex.jsp">主页</a> </li>
            <li><a href="AdminFindUser">用户</a> </li>
        </ul>
        </div>
        <div class="main-content">
<ul class="nav nav-tabs">
  <li class="active"><a href="#home" data-toggle="tab">添加</a></li>
  <li style="font-size:14px; color:red;">${Msg}</li>
</ul>
<div class="row">
  <div class="col-md-4">
    <br>
    <div id="myTabContent" class="tab-content">
      <div class="tab-pane active in" id="home">
      <form id="tab" >
        <div class="form-group">
        <label>用户名</label>
        <input type="text" name="userName" id="userName" class="form-control" onblur="check_name()">
        <span id="pro_name" style="font-size: 14px; color: red;"></span>
        </div>
        <div class="form-group">
        <label>真实姓名</label>
        <input type="text" name="trueName" id="trueName" class="form-control" onblur="check_truename()">
        <span id="pro_truename" style="font-size: 14px; color: red;"></span>
        </div>
        <div class="form-group">
        <label>性别</label>
        <input type="radio" name="gender" id="radio1" value="男" checked="checked">男
        <input type="radio" name="gender" id="radio2" value="女" >女
        </div>
        <div class="form-group">
        <label>电话</label>
        <input type="text" name="tel" id="tel"  class="form-control" onblur="check_tel()" maxlength="11">
        <span id="pro_tel" style="font-size: 14px; color: red;"></span>
        </div>
        <div class="form-group">
          <label>角色</label>
          <select  name="roleId" id="roleId" class="form-control">
                <c:forEach items="${role}" var="item" varStatus="vs">
                 <option value="${item.id }" 
                 <c:if test="${item.id == 5}">style="display:none;"</c:if>>${item.roleName}</option>
                </c:forEach>
			 </select>
        </div>
        </form>
      </div>
    </div>
    <div class="btn-toolbar list-toolbar">
      <input type="submit" class="btn btn-primary" value="保存">
      <a href="adminUser.jsp" data-toggle="modal" class="btn btn-danger">取消</a>
    </div>
  </div>
</div>
</form>
         <footer>
          <hr>
          <!-- Purchase a site license to remove this link from the footer: http://www.portnine.com/bootstrap-themes -->
          <p class="pull-right">累了么酒店住房管理</p>
          <p>© leileme </p>
      	</footer>
    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
</body></html>
