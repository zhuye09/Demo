<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
	
	
</script>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>

    

    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/premium.css">
    <style>
    body{
		background-image:url(images/dream/bg.jpg);
		background-size:100%;
    </style>
</head>

<body style="background:#2C2E30;" class=" theme-blue">

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
        a.banner-link:link {
	display: block;
	width: 140px;
	height: 35px;
	font-size:14px;
	color : #000000;
	text-decoration: none;
}
a.banner-link:hover {
	display: block;
	background:#C11AC7;
	width:140px;
	height: 35px;
	font-size:14px;
	text-decoration:none;
	color: #FCD9F4;		
}
    </style>

    <script type="text/javascript">
        $(function() {
            var uls = $('.sidebar-nav > ul > *').clone();
            uls.addClass('visible-xs');
            $('#main-menu').append(uls.clone());
        });
        
     ssssss
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
  <!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
  <!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
  <!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
  <!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
  <!--[if (gt IE 9)|!(IE)]><!--> 
  <!--<![endif]-->
    <!-- <div class="navbar navbar-default" role="navigation">
          <span class="navbar-brand">累了么？</span></div>
    </div> -->
    <div>
    <div style="margin-top:15px;">
    <form style="height:110px;">
    <table width="70%" border="0" align="center">
      <tr>
        <td width="130" height="110" align="center">
        <a href="login.jsp">
        <img alt="" style=" width:130px; height:110px;" src="images/dream/zf.jpg"></a>
        </td>
        <td width="130" height="110" align="center"><a href="#">
        <img alt="" style=" width:130px; height:110px;" src="images/dream/cy.jpg"></a>
        </td>
        <td width="130" height="110" align="center"><a href="#">
        <img alt="" style=" width:130px; height:110px;" src="images/dream/xx.jpg"></a>
        </td>
        <td width="130" height="110" align="center"><a href="#">
        <img alt="" style=" width:130px; height:110px;" src="images/dream/yl.jpg"></a>
        </td>
        <td width="130" height="110" align="center"><a href="#">
        <img alt="" style=" width:130px; height:110px;" src="images/dream/fw.jpg"></a>
        </td>
        <td width="130" height="110" align="center"><a href="#">
        <img alt="" style=" width:130px; height:110px;" src="images/dream/hq.jpg"></a>
        </td>
      </tr>
    </table>
    <a href="login.jsp"><br></a>
    </form>
   </div>
   <div style="height:35px;margin-top:15px; background:#FCD9F4;">
   <table width="70%" border="0" align="center">
   		<tr style="font-family:微软雅黑; font-size:14px;">
        	<td width="130" height="30" align="center"><a href="login.jsp" style="line-height:35px;" class="banner-link">住房部</a></td>
            <td width="130" height="30" align="center"><a href="#" style="line-height:35px;" class="banner-link">餐饮部</a></td>
            <td width="130" height="30" align="center"><a href="#" style="line-height:35px;" class="banner-link">休闲部</a></td>
            <td width="130" height="30" align="center"><a href="#" style="line-height:35px;" class="banner-link">娱乐部</a></td>
       	  	<td width="130" height="30" align="center"><a href="#" style="line-height:35px;" class="banner-link">服务部</a></td>
            <td width="130" height="30" align="center"><a href="#" style="line-height:35px;" class="banner-link">后勤部</a></td>
            
      </tr>
   </table>
   </div>
    <div style=" margin-top:20px; height:400px;">
		<MARQUEE scrollAmount=9 scrollDelay=9 VALIGN="middle">
		<IMG style="WIDTH: 500px; HEIGHT: 400px" border=0 src="images/dream/1.jpg">
		<IMG style="WIDTH: 500px; HEIGHT: 400px" border=0 src="images/dream/2.jpg">
		<IMG style="WIDTH: 500px; HEIGHT: 400px" border=0 src="images/dream/3.jpg">
		<IMG style="WIDTH: 500px; HEIGHT: 400px" border=0 src="images/dream/4.jpg">
		<IMG style="WIDTH: 500px; HEIGHT: 400px" border=0 src="images/dream/5.jpg">
		<IMG style="WIDTH: 500px; HEIGHT: 400px" border=0 src="images/dream/6.jpg">
		<IMG style="WIDTH: 500px; HEIGHT: 400px" border=0 src="images/dream/7.jpg">
		<IMG style="WIDTH: 500px; HEIGHT: 400px" border=0 src="images/dream/8.jpg">
		<IMG style="WIDTH: 500px; HEIGHT: 400px" border=0 src="images/dream/9.jpg">
		<IMG style="WIDTH: 500px; HEIGHT: 400px" border=0 src="images/dream/10.jpg">
		<IMG style="WIDTH: 500px; HEIGHT: 400px" border=0 src="images/dream/11.jpg">
		<IMG style="WIDTH: 500px; HEIGHT: 400px" border=0 src="images/dream/12.jpg">
		</MARQUEE>
		</div>
    </div>
    
</body>
</html>