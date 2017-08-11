<%@page import="cn.sendto.hotel.models.UserModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css">
<title>知识库-更改头像</title>

    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="../lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="../lib/font-awesome/css/font-awesome.css">
    <script src="../lib/jquery-1.11.1.min.js" type="text/javascript"></script>
        <script src="../lib/jQuery-Knob/js/jquery.knob.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function() {
            $(".knob").knob();
        });
    </script>
    <link rel="stylesheet" type="text/css" href="../stylesheets/theme.css">
    <link rel="stylesheet" type="text/css" href="../stylesheets/premium.css">
    
    
    
<script type="text/javascript">
  <!-- 上传头像的js代码 -->
  function uploadevent(status,picUrl){
    status += '';
    switch(status){
    case '1':
	var filename162 = picUrl+'_162.jpg';
	var filename48 = picUrl+'_48.jpg';
	var filename20 = picUrl+"_20.jpg";

	//document.getElementById('myheaderimage').src="${pageContext.request.contextPath}/headerimages/" + filename162;//"头像1 : <img style=\"border-radius:5px;\" src='${pageContext.request.contextPath}/upload/"+filename162+"'/> <br/> 头像2: <img style=\"border-radius:5px;\" src='${pageContext.request.contextPath}/upload/"+filename48+ "'/><br/> 头像3: <img style=\"border-radius:5px;\" src='${pageContext.request.contextPath}/upload/"+filename20+ "'/>" ;
	
    break;
    case '-1':
    window.parent.topFrame.location.reload();//让当前页面重写加载
    break;
    default:
    window.parent.topFrame.location.reload();
   } 
    window.parent.topFrame.location.reload();
  }
</script>
</head>
<body>

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

    <div class="navbar navbar-default" style="background-color:#5D6D8A" role="navigation">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="" href="../adminIndex.jsp"><span class="navbar-brand">累了么住房管理</span></a></div>
        <div class="navbar-collapse collapse" style="height: 1px;">
			<ul id="main-menu" class="nav navbar-nav navbar-right">
				<li class="dropdown hidden-xs">
				<%UserModel userModel=(UserModel)session.getAttribute("user"); %>
				<a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
				在线人数：${applicationScope.onlieNums }&nbsp;&nbsp;&nbsp;
				<% if(userModel.getHeaderimage().equals("userdefault.gif")){%>
          <img class="user"src="${pageContext.request.contextPath }/headerimages/${user.headerimage }">
        <% }
         if(!userModel.getHeaderimage().equals("userdefault.gif")){
        %>
         <img class="user"  src="${pageContext.request.contextPath }/headerimages/${user.headerimage }_48.jpg">
         <% }%>
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
    <div class="sidebar-nav" style="border-right:1px solid #ccc;height:100%;">
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

<div class="space"></div>
<div id="container">
 <div id="right">
  <table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td height="50" colspan="2" style=" border-bottom:1px solid #e1e1e1;">　上传头像　　　　　　　
      <span style="color: red; font-size: 14px;"><%=request.getAttribute("message")==null?"":request.getAttribute("message") %></span></td>
    </tr>
    <tr>
      <td><div id="altContent">
      <!-- 设置头像，导入flash文件 -->
	  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" width="650" height="450" id="myMovieName">
	    <param name="movie" value="avatar.swf"/>
	    <param name="quality" value="high"/>
	    <param name="bgcolor" value="#FFFFFF"/>
	    <param name="flashvars" value="imgUrl=./default.jpg&uploadUrl=./upfile.jsp&uploadSrc=false" />
	    <embed src="avatar.swf" quality="high" bgcolor="#FFFFFF" width="650" height="450" wmode="transparent" flashVars="imgUrl=./default.jpg&uploadUrl=./upfile.jsp&uploadSrc=false" name="myMovieName" align="" type="application/x-shockwave-flash" allowScriptAccess="always" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed>
	  </object>
</div></td>
    </tr>
    <tr>
      <t
      d height="50" align="right">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
 </div>
</div>
<div class="space"></div>
</body>
</html>