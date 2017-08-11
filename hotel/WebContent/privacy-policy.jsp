<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
  

  <!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
  <!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
  <!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
  <!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
  <!--[if (gt IE 9)|!(IE)]><!--> 
   
  <!--<![endif]-->
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
						<li><a href="./">我的账户</a></li>
						<li class="divider"></li>
						<li class="dropdown-header">管理面板</li>
						<li><a href="${pageContext.request.contextPath }/admuser.jsp">个人信息</a></li>
						<li><a href="./">安全中心</a></li>
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
            <li><a href="adminIndex.jsp"><span class="fa fa-caret-right"></span>高级用户</a></li>
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
            
            <h1 class="page-title">隐私政策</h1>
                    <ul class="breadcrumb">
            <li><a href="index.jsp">首页</a></li>
            <li class="active">隐私政策</li>
        </ul>

        </div>
        <div class="main-content">
            
<h3>一、关于房型和房价 </h3>
1、乙方向甲方提供房间价格如下：（单位：人民币）<br/>
房间类型<br/>
门市价<br/>
前台价<br/>
洲盟底价<br/>
洲盟会员价<br/>
是否含早茶<br/>
早餐类型<br/>
备注 <br/>
加床：_______元中早：_______元西早：_______元汇率：______<br/>
（以上价格含酒店服务费）<br/>
2、若乙方门市散客价格调整或推出特惠价格时，乙方应及时通知甲方；如乙方价格下降，则给予甲方的协议价格应根据下降比例作相应下调，以便使甲方销售价格始终低于乙方现行门市优惠价格。<br/>
3、若乙方给予订房公司的协议价格临时调整时未能提前三天书面或Email通知甲方酒店业务部，乙方将允许甲方的预订客户在变价前预订的房间按原协议价格入住。<br/>
4、当甲方客户入住酒店时，乙方按甲方传真所指定的协议价格直接向客人收取所有房费。<br/>

<h3>二、关于客房预订</h3>
1、甲方免费为酒店进行客源招徕与必要的促销，乙方负责协调酒店销售部、预订部及前台，配合好甲方预订单的落实确认与到店客人的入住安排。<br/>
2、在非常情况下，乙方每天提供间客房作为保留房供甲方预订，乙方应确保甲方在保留房数额内的订房，甲方将积极为乙方提供的保留房进行促销。<br/>
3、当乙方房量紧张时，乙方应提前通知甲方以便甲方能及时调整预订并向客户作出解释；对于紧急订房，在无法联系到乙方销售人员的情况下，甲方将直接发传真至乙方前台，由乙方前台按甲方传真内容先予以接待。<br/>
4、如因乙方原因造成甲方客人不能顺利入住，乙方应负责免费给客人升级或在客人同意的前提下，将甲方客人安排同星级且价格相同的酒店，佣金应照常返还。<br/>
5、甲方客人退房时间为中午12：00时，如客人要求延迟退房，乙方可视当天房态情况尽量满足甲方客人的要求。<br/>
6、当甲方客人直接向乙方要求延住时，乙方应要求客人及时通知甲方且必须通过甲方重新预订。如因特殊情况乙方可按甲方原先的传真预订价格先给客人续住，然后应通知甲方预订部补发延住预订单。<br/>

<h3>三、关于甲方订房夜审</h3>
甲方订房夜审有如下2种方式，乙方决定选择第项合作方式。<hr/>

1、甲方于当天晚上24：00前后，以电话形式直接与酒店前台联系。酒店应通知前台给予配合，正确告之甲方预订的客户是否到店、甲方客户入住房号、续住或提前离店的情况。<br/>
2、甲方于第二天上午将前一天的预订单总表以及已住店客人情况表发往酒店销售部，由酒店专人在预订单汇总表上填写客人入住房号、在已住客人情况表上填写客人正确的离店日期并与当天下午回传甲方。<br/>

<h3>四、关于对帐、返佣及其它奖励措施</h3>
1、甲方在每月5日前向乙方提供上月经夜审后的甲方客人入住详细资料。经双方核对确认后，订房佣金由乙方在每月15日前汇入甲方指定的账号，并由甲方向乙方开具发票。如果乙方未能按时汇款，甲方向乙方收取每日1‰的滞纳金。<br/>
2、当双方的间夜数有出入时，以乙方收银记录为准，如有跨月的订房，计入下月。<br/>
3、为鼓励甲方大力推销乙方客房，乙方另制定奖励措施如下：<br/>

<h3>五、其它：</h3>
1、本合同一式两份，双方各执一份，合同经签署后具有法律效应。<br/>
2、本协议执行有效期：年月日至年月日<br/>
3、甲、乙双方不得将本协议的条款向第三方公布。<br/>
4、本协议所有事宜以及操作程序，双方均由专人负责。<br/>
5、和约双方不得单方面擅自变更或终止本协议<br/><hr/>

<p>本隐私政策只是一个示例，不具有法律约束力。真正的隐私政策(通常)不包含餐饮……</p>


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
