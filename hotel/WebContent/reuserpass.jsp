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
	<script type="text/javascript">
	  function checkpass(){
      	var oldpass=document.getElementById("password").value;
      	var old_propet=document.getElementById("old_propet");
      	var regoldpass=/^\w{6,15}$/;
      	if(oldpass==""){
      		old_propet.innerHTML="<p style='color:red;font-size:14px;'>用户密码不能为空</p>";
      		return false;
      	}
      	if(!regoldpass.test(oldpass)){
      		old_propet.innerHTML="<p style='color:red;font-size:14px;'>用户密码不合法，密码不能小于6位！并且包含字母、数字、下划线</p>";
      		return false;
      	}
      		old_propet.innerHTML="正确";
      		return true;
      }
      var newpass;
      function checknewpass(){
      	newpass=document.getElementById("newpassword").value;
      	var new_propet=document.getElementById("new_propet");
      	var regNewpass=/^\w{6,15}$/;
      	if(newpass==""){
      		new_propet.innerHTML="<p style='color:red;font-size:14px;'>用户密码不能为空</p>";
      		return false;
      	}
      	if(!regNewpass.test(newpass)){
      		new_propet.innerHTML="<p style='color:red;font-size:14px;'>用户密码不合法，密码不能小于6位！并且包含字母、数字、下划线</p>";
      		return false;
      	}
      	new_propet.innerHTML="正确";
      		return true;
      }
      function checkrenewpass(){
      	var renewpass=document.getElementById("renewpassword").value;
      	var renew_propet=document.getElementById("renew_propet");
      	if(renewpass != newpass){
      		renew_propet.innerHTML="<p style='color:red;font-size:14px;'>两次密码不一致！</p>";
      		return false;
      	}
      	if(renewpass==""){
      		renew_propet.innerHTML="<p style='color:red;font-size:14px;'>确认密码不能为空</p>";
      		return false;
      	}
      		return true;
      }
      function checkSure(){
    	  if(!checkpass() || !checknewpass() || !checkrenewpass()){
    		  alert("请根据提示正确操作！");
    		  return false;
    	  }
      }
	</script>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>

    

    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/premium.css">

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
						<li><a href="admuser.jsp">个人信息</a></li>
						<li><a tabindex="-1" href="${pageContext.request.contextPath }/reuserpass.jsp">修改密码</a></li>
						<li><a tabindex="-1" href="${pageContext.request.contextPath }/uplaodheaderimage/setheaderimage1.jsp">更换头像</a></li>
						<li class="divider"></li>
						<li><a tabindex="-1" href="${pageContext.request.contextPath}/LogoutServlet">注销</a></li>

					</ul></li>
			</ul>

		</div>
      </div>
    </div>
    

    <div class="sidebar-nav">
    <ul>
    <li><a href="#" data-target=".dashboard-menu" class="nav-header" data-toggle="collapse">
    <i class="fa fa-fw fa-dashboard"></i>修改密码<i class="fa fa-collapse"></i></a></li>
    </ul>
    </div>

    <div class="content">
        <div class="header">
            
            <h1 class="page-title">修改密码</h1>
        <ul class="breadcrumb">
          <li>
			<c:if test="${sessionScope.user.role_id==1 }">
            	<a href="index.jsp">首页</a>
            </c:if>
			<c:if test="${sessionScope.user.role_id==2 }">
            	<a href="adminIndex.jsp">首页</a>
            </c:if>
			<c:if test="${sessionScope.user.role_id==3 }">
            	<a href="LeaderIncome.jsp">首页</a> 
            </c:if>
          </li>
            <li><a href="reuserpass.jsp">修改密码</a> </li>
            <li class="active"></li>
        </ul>

        </div>
        <div class="main-content">
         <p align=center style="color:red;"></p>   
<ul class="nav nav-tabs">
  <li class="active"><a href="#home" data-toggle="tab">Repassword</a></li>
  <li><a href="#profile" data-toggle="tab"></a></li>
</ul>

<div class="row">
  <div class="col-md-4">
    <br>
    <div id="myTabContent" class="tab-content">
    <div style="text-align:center;"><span id="sure" style="color:red;" ></span></div>
      <div class="tab-pane active in" id="home">
      <form id="tab" method="post" onSubmit="return checkSure()" action="${pageContext.request.contextPath }/reuserpass" >
        <div class="form-group" >
        <label>旧密码</label>
        <input type="password" name="password" id="password" onblur="checkpass()" placeholder="请输入旧密码" class="form-control">
        <span id="old_propet" style="color:green;font-size:14px;"></span>
        </div>
        <div class="form-group">
        <label>新密码</label>
        <input type="password" name="newpassword" id="newpassword" onblur="checknewpass()" placeholder="请输入新密码" class="form-control">
          <span id="new_propet" style="color:green;font-size:14px;"></span>
        </div>
        <div class="form-group">
        <label>确认新密码</label>
        <input type="password" name="renewpassword" id="renewpassword" onblur="checkrenewpass()" placeholder="请确认新密码" class="form-control">
          <span id="renew_propet" style="color:green;font-size:14px;"></span>
        </div>
        <div class="btn-toolbar list-toolbar">
        <button class="btn btn-primary"><i class="fa fa-save"></i> 修改</button>
        <input type="button" name="button3" id="button3" class="btn btn-default" onClick="javascript:history.back()"value="返回">
        
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
    </div>


    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
    
  
</body></html>
    