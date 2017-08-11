<%@page import="cn.sendto.hotel.models.UserModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en"><head>
<style>
.guke{width:1060px; height:40px;}
.guke1{width:130px; height:40px; float:left; text-align:right; line-height:40px;}
.guke3{width:80px; height:40px; float:left; text-align:right; line-height:40px;}
.guke2{width:220px; height:40px; float:left; padding-top:4px;line-height:40px;padding-left:4px;}
.guke4{width:120px; height:40px; float:left; padding-top:4px;line-height:40px;padding-left:4px;}
.guke5{width:170px; height:40px; float:left; padding-top:4px;line-height:36px;padding-left:4px;}
.guke6{width:100px; height:40px; float:left; padding-top:4px;line-height:36px;padding-left:4px;}
.biaoti{ background-color:#8CBAFF; color:#FFF; width:80px; height:20px;text-align:center; }
.biaoti1{ background-color:#FFC423; color:#FFF; width:80px; height:20px;text-align:center;margin-top:30px; }
.xian{ width:1060px; height:1px; background-color:#F2F2F2;}
.xian1{ width:1060px; height:1px; background-color:#F2F2F2; margin-top:10px;}
.xian2{ width:1060px; height:2px; background-color:#2A00E1; margin-top:10px;margin-bottom:10px;}
</style>
    <meta charset="utf-8">
    <title>添加订单</title>
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
    // 生成订单
	function totalMoney(){
    	// 循环次数
	    var count=document.getElementById("count").value;
	    var countCost = 0.0;
	    var tot1 = 0.0;
	    for (var i=1 ;i<=count;i++) {
	    	var yuanjia = parseFloat(document.getElementById(i+"yuanjia").value);
	    	var zhehoujia = parseFloat(document.getElementById(i+"expectCost").value);
	    	countCost+=yuanjia;
	    	tot1+=zhehoujia;
	    }
	    document.getElementById("countFee").value = countCost;
	    document.getElementById("reallyCost").value = tot1;
	    
	    
	}
	
    // 打折
    function changePrice(value,count) {
    	if (value == "会员") {
    		document.getElementById(count+"expectCost").value = parseFloat(document.getElementById(count+"yuanjia").value)*0.8; 
    		totalMoney();
    		return;
    	}else if (value == "超级会员"){
			document.getElementById(count+"expectCost").value = parseFloat(document.getElementById(count+"yuanjia").value)*0.6;
			totalMoney();
			return;
    	} else {
    		document.getElementById(count+"expectCost").value = parseFloat(document.getElementById(count+"yuanjia").value);
    		totalMoney();
    		return;
    	}
    	
    }
    var count = 0;
    // 增加客户信息input
    function addCustomer () {
    	var c = count++;
    	for(var i = 0; i< 3; i++){
    		var input = document.createElement('input');  //创建input节点
    		input.setAttribute('type', 'text');  //定义类型是文本输入
    		input.setAttribute('size', '30');
    		input.setAttribute('name', c+"customer");
    		input.setAttribute('style', 'margin:auto 5px 5px auto;');
    		document.getElementById('addCus').appendChild(input ); 
    	}
    	
    	var b = document.createElement('br');
    	document.getElementById('addCus').appendChild(b ); 
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
						<li><a href="./">我的账户</a></li>
						<li class="divider"></li>
						<li class="dropdown-header">管理面板</li>
						<li><a href="${pageContext.request.contextPath }/indexuser.jsp">个人信息</a></li>
						<li><a href="./">安全中心</a></li>
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
            <h1 class="page-title">客人入住登记</h1>
                    <ul class="breadcrumb">
            <li><a href="index.jsp">首页</a> </li>
                    </ul>
        </div>
<form class="form-horizontal" action="${pageContext.request.contextPath}/AddList" method="post" role="form">
	
	
	<c:forEach items="${requestScope.items}" var="item" varStatus="vs">
<div class="biaoti">顾客档案</div>

<div class="guke">
	<div class="guke3">顾客姓名:</div>
	<div class="guke4"><input type="text" id="${vs.count}cusName" name="cusName" class="form-control"  id="cusName"></div>
	<div class="guke3">身份证号:</div>
	<div class="guke4"><input type="text" id="${vs.count}idCard" name="idCard" class="form-control" id="idCard"></div>
	<div class="guke3">顾客类型:</div>
	<div class="guke5">
	<input onclick="changePrice(this.value,${vs.count})" checked="checked" type="radio" id="${vs.count}idType" name="${vs.count}idType"  id="idType" value="新客">新客
    <input onclick="changePrice(this.value,${vs.count})" type="radio" id="${vs.count}idType" name="${vs.count}idType" value="会员">会员
    <input onclick="changePrice(this.value,${vs.count})" type="radio" id="${vs.count}idType" name="${vs.count}idType" value="超级会员">超级会员
    </div>
	<div class="guke3">性别:</div>
	<div class="guke6"><input type="radio" id="${vs.count}gender" name="${vs.count}gender"  value="男">男
                        <input type="radio" id="${vs.count}gender" name="${vs.count}gender"  value="女">女</div>
    <div class="guke3">电话:</div>
	<div class="guke4"><input type="text" id="${vs.count}tel" name="tel" class="form-control" ></div>
</div>
<div class="biaoti">入住信息</div>
<div class="guke">
	<div class="guke3">房间号:</div>
	<div class="guke4"><input readonly="readonly" id="${vs.count}roomId" type="text" name="roomId" class="form-control" value="${item.id }"></div>
	<div class="guke3">房间类型:</div>
	<div class="guke4"><input readonly="readonly" id="${vs.count}typeName" type="text" name="typeName" class="form-control" value="${item.typeName }"  id="typeName"></div>
	<div class="guke3">预住天数:</div>
	<div class="guke4"><input id="${vs.count}days" type="text" name="days" class="form-control"  value="0"></div>
	<div class="guke3">原价:</div>
	<div class="guke4"><input id="${vs.count}yuanjia" readonly="readonly" type="text" name="yuanjia" class="form-control" value="${item.price }" ></div>
	<div class="guke3">折后价:</div>
	<div class="guke4"><input id="${vs.count}expectCost" type="text" name="expectCost" class="form-control" value="${item.price }"></div>
</div>
<div class="xian2"></div>
<c:if test="${vs.last}">
<input type="hidden" id="count" name="count" value="${vs.count}" />
</c:if>
</c:forEach>
<!-- 增加其他客户信息input -->
<div id = "addCus">
	<button type="button" onclick="addCustomer();">增加记录</button><br/>
	<span style="margin-right:190px;">&nbsp; 客户姓名</span>
	<span style="margin-right:190px;">身份证号</span>
	<span style="margin-right:220px;">性别</span>
	<br/>
	
</div>

<div class="biaoti1">总计</div>
<div class="guke">
	<div class="guke1">总计金额:</div>
	<div class="guke2"><input type="text" name="countFee" class="form-control" id="countFee" value=""></div>
	<div class="guke1">折后总计:</div>
	<div class="guke2"><input type="text" name="reallyCost" class="form-control" id="reallyCost"></div>
	<div class="guke1"></div>
	<div class="guke1"><input type="button" name="button2" id="button2" onclick="totalMoney();" class="btn btn-default" value="计算"></div>
</div>

<div class="xian2"></div>
<div class="guke1"></div>
	<div class="guke2"><input type="button"  name="button" class="btn btn-default" id="button" value="打印订单"></div>
	<div class="guke1"></div>
	<div class="guke2"><input type="submit" name="button2" id="button2" class="btn btn-default" value="入住"> </div>
	<div class="guke1"><input type="button" name="button3" id="button3" class="btn btn-default" value="取消">      </div>
	<div class="guke1"></div>
  
</form>
 <footer>
                <hr>
                <!-- Purchase a site license to remove this link from the footer: http://www.portnine.com/bootstrap-themes -->
                <p class="pull-right">累了么酒店住房管理</p>
                <p>© leileme </p>
            </footer> 
</div>
           
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
