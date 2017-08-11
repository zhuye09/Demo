
<%@page import="cn.sendto.hotel.models.UserModel"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en"><head>
<style>
.guke{width:1060px; height:40px;}
.guke1{width:130px; height:40px; float:left; text-align:right; line-height:40px;}
.guke3{width:80px; height:40px; float:left; text-align:right; line-height:40px;}
.guke2{width:220px; height:40px; float:left; padding-top:4px;line-height:40px;padding-left:4px;}
.guke4{width:100px; height:40px; float:left; padding-top:4px;line-height:40px;padding-left:4px;}
.guke5{width:170px; height:40px; float:left; padding-top:4px;line-height:36px;padding-left:4px;}
.guke6{width:100px; height:40px; float:left; padding-top:4px;line-height:36px;padding-left:4px;}
.biaoti{ background-color:#8CBAFF; color:#FFF; width:80px; height:20px;text-align:center; }
.biaoti1{ background-color:#FFC423; color:#FFF; width:80px; height:20px;text-align:center;margin-top:30px; }
.xian{ width:1060px; height:1px; background-color:#F2F2F2;}
.xian1{ width:1060px; height:1px; background-color:#F2F2F2; margin-top:10px;}
.xian2{ width:1060px; height:2px; background-color:#2A00E1; margin-top:10px;margin-bottom:10px;}
</style>
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
                <li><a tabindex="-1" href="${pageContext.request.contextPath }/reuserpass.jsp">修改密码</a></li>
                <li><a tabindex="-1" href="${pageContext.request.contextPath }/uplaodheaderimage/setheaderimage1.jsp"">更换头像</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="${pageContext.request.contextPath }/LogoutServlet">注销</a></li>
              </ul>
            </li>
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
							class="fa fa-caret-right"></span>选择套餐</a></li>
					<li><a href="addOrder.jsp"><span
							class="fa fa-caret-right"></span>添加订单</a></li>
					<li><a href="${pageContext.request.contextPath}/ShowOrderServlet"><span
							class="fa fa-caret-right"></span>查看订单</a></li>
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
        <div class="header">
            <h1 class="page-title">续住管理</h1>
                    <ul class="breadcrumb">
        </ul>
        </div>
        <div class="main-content">
         <p align=center style="color:red;"></p>   
<ul class="nav nav-tabs">
  <li class="active"><a href="#home" data-toggle="tab">办理续住</a></li>
   
</ul>
<form class="form-horizontal" action="${pageContext.request.contextPath}/DoneList?id=${items.orderlist_id}" method="post" role="form">
<ul>
<li class="active" style="color:#FFC423;font-size:16px;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;订单号：${items.orderlist_id }</li>
</ul>
	<%-- <c:forEach items="${requestScope.items}" var="item" varStatus="vs"></c:forEach> --%>
<div class="biaoti">顾客档案</div>
<div class="guke">
	<div class="guke3">顾客姓名:</div>
	<div class="guke4"><input type="text" readonly="readonly" id="cusName"name="cusName" class="form-control"  id="cusName"  value="${items.cusName }"></div>
	<div class="guke3">房间号:</div>
	<div class="guke4"><input type="text" readonly="readonly" name="roomid" class="form-control" id="roomid" value="${items.roomid }"></div>
</div>
<div class="xian2"></div>
<div class="biaoti1">订单生成</div>
<div class="guke">
	<div class="guke3">已缴费用:</div>
	<div class="guke4"><input type="text" name="expectCost" class="form-control" id="expectCost" value="${items.expectCost }"></div>
	<div class="guke3">结余:</div>
	<div class="guke4"><input type="text" name="lastFee" class="form-control" id="lastFee" value="${lastFee }"></div>
	<div class="guke3"></div>
	<div class="guke4"><input type="button" name="button2" id="button2" onclick="reginMoney();" class="btn btn-default" value="结账"></div>
</div>
<div class="xian2"></div>
<div class="guke1"></div>
	<div class="guke2"><input type="button"  name="button" class="btn btn-default" id="button" value="打印订单"></div>
	<div class="guke1"></div>
	<div class="guke2"><input type="submit" name="button2" id="button2" class="btn btn-default" value="退房"> </div>
	<div class="guke1"><input type="button" name="button3" id="button3" class="btn btn-default" onClick="javascript:history.back()"value="取消"></div>
	<div class="guke1"></div> 
</form>
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
    