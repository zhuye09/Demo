<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://net.ycpower/hotel/pageTaglib" prefix="p" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en"><head>
    <meta charset="utf-8">
    <title>订单查询</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>

        <script src="lib/jQuery-Knob/js/jquery.knob.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function() {
            $(".knob").knob();
        });
    </script>


    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" type="text/css" href="css/pagestyle.css">
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
        .button{background:#87CEFF;border:1px solid blue;border-radius:7px;color:#000;}
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
          <a class="" href="index.jsp"><span class="navbar-brand">累了么住房管理</span></a></div>

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
            <div class="stats">
    <p class="stat"><span class="label label-success">5</span>单间</p>
    <p class="stat"><span class="label label-info">27</span>标间</p>
    <p class="stat"><span class="label label-primary">15</span>豪华间</p>
    <p class="stat"><span class="label label-danger">4</span>至尊间</p>
</div>

            <h1 class="page-title">订单状态</h1>
                    <ul class="breadcrumb">
            <li><a href="index.jsp">首页</a> </li>
            <li class="active">订单状态</li>
        </ul>

        </div>
        <div class="main-content">

<div class="row" style="width:205%">
    <div class="col-sm-6 col-md-6">
    
    
 <!-- 条件查询 -->
<form action="${pageContext.request.contextPath }/ShowOrderServlet?pageIndex=1" method="post">
	<div>
	订单状态：<select name="staste" >
		<option value="">选择状态</option>
		<option value="1" <c:if test="${info.staste == 1}">selected = "selected"</c:if> >已离店</option>
		<option value="2" <c:if test="${info.staste == 2}">selected = "selected"</c:if> >入住中</option>
		<option value="3" <c:if test="${info.staste == 3}">selected = "selected"</c:if> >预定中</option>
	</select>
	<!-- 真实姓名 -->
	房间号：<input type="text" name="roomId" value="${info.roomid }">
	入住日期：<input type="date" name="liveDate" value="${info.liveDate }">&nbsp;&nbsp;
	<input class="button" type="submit" value="查询">&nbsp;&nbsp;
	<a href="${pageContext.request.contextPath}/ShowOrderServlet"><input class="button" type="button" value="重置"></a>
	</div>
</form> 
   
        <div class="panel panel-default"> 
            <div class="panel-heading no-collapse">
            订单
                <span class="panel-icon pull-right">
                    <a href="#" class="demo-cancel-click" rel="tooltip" title="Click to refresh"><i class="fa fa-refresh"></i></a>
                </span>
            </div>
            <table class="table list">
              <thead>
                  <tr style="border-bottom:1px solid #ccc;">
                      <td>编号</td>
                      <td>客户名</td>
                      <td>房间号</td>
                      <td>入住日期</td>
                      <td>订单状态</td>
                      <td>预约天数</td>
                      <td>续住</td>
                      <td>退房</td>
                      <td>详细</td>
                  </tr>
              </thead>
              <tbody>
              <c:forEach items="${requestScope.items.list}" var="item" varStatus="vs">
                  <tr>
                      <td>${vs.count}</td>
                      <td>${item.cusName}</td>
                      <td>${item.roomid}</td>
                      <td>${item.liveDate}</td>
                      <c:if test="${item.staste == 1}">
                      	<td>已离店</td>
                      </c:if>
                      <c:if test="${item.staste == 2}">
                      	<td>入住中</td>
                      </c:if>
                      <c:if test="${item.staste == 3}">
                      	<td>预定</td>
                      </c:if>
                      <td>${item.days}(天)</td>
                      <c:if test="${ item.staste == 2}">
                      <td><a href="${pageContext.request.contextPath }/FindEditOrder?id=${item.orderlist_id}&str=abc">续住</a></td>
                      </c:if>
                      <c:if test="${ item.staste == 1}"><td></td></c:if>
                      <c:if test="${ item.staste == 3}"><td></td></c:if>
                      <c:if test="${ item.staste == 2}">
                      <td><a href="${pageContext.request.contextPath }/FindDoneList?id=${item.orderlist_id}&str=abc">退房</a></td>
                      </c:if>
                      <c:if test="${ item.staste == 3}">
                      <td><a href="${pageContext.request.contextPath }/FindDoneList?id=${item.orderlist_id}&str=abc">退房</a></td>
                      </c:if>
                      <c:if test="${ item.staste == 1}"><td></td></c:if>
                      <td><a href="${pageContext.request.contextPath }/ShowOrderServlet?id=${item.id}&str=abc">详细</a></td>
                  </tr>  
               </c:forEach>
              </tbody>  
            </table>
        </div>
    </div>
</div>
<p:page pageIndex="${items.pageIndex}" pageSize="${items.pageSize}"
		actionName="${pageContext.request.contextPath }/ShowOrderServlet"
		pageNums="${items.pageNums}" hasPreOmit="${items.hasPreOmit}"
		recordCount="${items.recordCount}"
		hasSuffixOmit="${items.hasSuffixOmit}" where="${items.where}"></p:page>
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
