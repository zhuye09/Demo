<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta charset="utf-8">
    <title></title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	
	<script language="javascript" type="text/javascript">
function checkName(){
	var userName = document.getElementById("userName").value;
	var name_prompt = document.getElementById("name_prompt");
	var regName = /^[\u4e00-\u9fa5\w]+$/;
	if(userName==""){
		name_prompt.innerHTML="<p style='color:red;font-size:14px;'>用户名不能为空！</p>";
		return false;
	}
	if(!regName.test(userName)){
		name_prompt.innerHTML="<p style='color:red;font-size:14px;'>不合法的用户名！登录名只能是中文字符，英文字符，数字及下划线</p>";
		return false;
	}
	name_prompt.innerHTML="<p style='color:green;font-size:14px;'>正确</p>";
	return true;
}
function checkPass(){
	var userPass = document.getElementById("userPass").value;
	var pass_prompt = document.getElementById("pass_prompt");
	var regPass = /^\w{6,15}$/;
	if(userPass==""){
		pass_prompt.innerHTML="<p style='color:red;font-size:14px;'>密码不能为空！</p>";
		return false;
	}
	if(!regPass.test(userPass)){
		pass_prompt.innerHTML="<p style='color:red;font-size:14px;'>用户密码不合法，密码不能小于6位！并且包含字母、数字、下划线</p>";
		return false;
	}
	pass_prompt.innerHTML="正确";
	return true;
}
function checkCode(){
	var yzm=document.getElementById("checkcode").value;
	var Code_prompt=document.getElementById("Code_prompt");
	var regCode=/^[0-9A-Za-z]{5}$/;
	if(yzm==""){
		Code_prompt.innerHTML="验证码不能为空！";
		return false;
	}
	if(!regCode.test(yzm) ){
		Code_prompt.innerHTML="验证码区分大小写，并且由数字、字母组成！";
		return false;
	}
	Code_prompt.innerHTML="<p style='color:green;font-size:14px;'>正确</p>";
	return true;
}
function iegCheck(){
	if(!checkCode() || !checkName() || !checkPass()){
		alert("请输入用户名、密码或验证码！");
		return false;
	}
}
/*刷新验证码*/
function imageRefresh(img){
	img.src=img.src+"?"+new Date().getTime();
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
          <a class="" href="index.jsp"><span class="navbar-brand">累了么酒店住房管理</span></a></div>
        <div class="navbar-collapse collapse" style="height: 1px;">
        </div>
      </div>
  <div class="dialog">
    <div class="panel panel-default" style="width:45em;margin:6em 0em 0em -7em;">
        <div><p class="panel-heading no-collapse"  style="font-size:20px;color:#666;">欢迎登录</p></div><br/>
        <div class="panel-body">
        	<div style="margin-left:7em;width:30em;">
            <form action="${pageContext.request.contextPath}/LoginServlet" method="post" onSubmit="return iegCheck()">
                <div style="height:70px;" class="form-group">
                    <label style="font-size:16px;">用户名</label>
                    <input type="text" name="userName" id="userName" onblur="checkName()" class="form-control span12">
                    <span id="name_prompt" style="color:green;font-size:14px;"></span>
                </div>
                <div style="height:70px;" class="form-group">
                <label style="font-size:16px;">密　码</label>
                    <input type="password" name="userPass" id="userPass" onblur="checkPass()" class="form-control span12 form-control">
                    <span id="pass_prompt" style="color:green;font-size:14px;"></span>
                </div>
                <div style="height:70px;" class="form-group">
	   				<label style="font-size:16px;">验证码</label><br>
	   				<div style="height:34px;">
	   				<input style="width:280px; float:left;" type="text" name="checkcode" id="checkcode" onblur="checkCode()" class="form-control span12" />&nbsp;&nbsp;
	   					<img style="height:30px;" src="${pageContext.request.contextPath }/ImageServlet" onclick="imageRefresh(this)" id="pic" title="看不清，换一张" /></div>
	   					<span id="Code_prompt" style="color:red;font-size:14px;margin-top:-15px;"></span>
	   			</div>
                <label>记住用户&nbsp;&nbsp;&nbsp;
					<SELECT id=DropExpiration name=remenber>
						<OPTION value=None selected>不保存</OPTION>
						<OPTION value=Day>保存一天</OPTION>
						<OPTION value=Month>保存一月</OPTION>
						<OPTION value=Year>保存一年</OPTION>
					</SELECT>
				</label>
                
                <div style="margin-top:10px;" class="clearfix">
                	<div style="float:right;margin-right:65px;margin-bottom:8px;"><input type="submit" class="btn btn-primary pull-right" value="登录"/></div>
                </div>
            </form>
            </div>
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
</body>
</html>
