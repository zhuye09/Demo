<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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


<!--Use of these features requires a premium license.-->
<!--See http://www.portnine.com/bootstrap-themes for details.-->
<!--After purchasing a premium license, the full source code will be available for download.-->




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
						<li class="divider"></li>
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
       
            <li><a href="faq.jsp" class="nav-header"><i class="fa fa-fw fa-comment"></i>常见问题</a></li>
                <li><a href="https://www.ele.me" class="nav-header" target="blank"><i class="fa fa-fw fa-heart"></i>饿了么</a></li>
            </ul>
    </div>
    <div class="content">
        <div class="header">
                    <div class="input-group search pull-right hidden-sm hidden-xs">
            <div class="input-group">
              <input type="text" class="form-control">
              <span class="input-group-btn">
                  <button class="btn btn-primary" type="button"><i class="fa fa-search "></i></button>
              </span>
            </div>
        </div>

            <h1 class="page-title"><font><font>本公司新闻和博客</font></font></h1>
            
        </div>
        <div class="main-content">
            

<div class="row">
    <div class="col-sm-9 main-content">

        <div id="blog-posts">

            <div class="row padding-bottom">
                <div class="col-md-4">
                    <a href="premium-blog-item.html" class="thumb"><img src="images/blog/503993_62595320.jpg" class="img-responsive hidden-xs"></a>
                </div>
                <div class="col-md-8">
                    <div class="post-summary">      
                        <h3 style="margin-top: 0px;"><a href="premium-blog-item.html"><font><font>下面是博客文章标题</font></font></a></h3>
                        <p class="text-sm"><font><font>2014年6月13日</font></font></p>
                        <p><font><font>
                          Lorem存有悲坐阿梅德，ID NEC conceptam结论emque。</font><font>等EAM塔季翁塔季翁选项选项。</font><font>Utinam salutatus前EUM。</font><font>Lorem存有悲坐阿梅德，ID NEC conceptam结论emque。
                        </font></font></p>
                        <p><a class="btn btn-default btn-sm" href="premium-blog-item.html"><font><font>阅读更多</font></font></a></p>
                    </div>
                </div>
            </div>

            <div class="row padding-bottom">
                <div class="col-md-4">
                    <a href="premium-blog-item.html" class="thumb"><img src="images/blog/625998_12886207.jpg" class="img-responsive hidden-xs"></a>
                </div>
                <div class="col-md-8">
                    <div class="post-summary">      
                        <h3 style="margin-top: 0px;"><a href="premium-blog-item.html"><font><font>下面是博客文章标题</font></font></a></h3>
                        <p class="text-sm"><font><font>2014年6月13日</font></font></p>
                        <p><font><font>
                          Lorem存有悲坐阿梅德，ID NEC conceptam结论emque。</font><font>等EAM塔季翁塔季翁选项选项。</font><font>Utinam salutatus前EUM。</font><font>Lorem存有悲坐阿梅德，ID NEC conceptam结论emque。
                        </font></font></p>
                        <p><a class="btn btn-default btn-sm" href="premium-blog-item.html"><font><font>阅读更多</font></font></a></p>
                    </div>
                </div>
            </div>

            <div class="row padding-bottom">
                <div class="col-md-4">
                    <a href="premium-blog-item.html" class="thumb"><img src="images/blog/737034_24905666.jpg" class="img-responsive hidden-xs"></a>
                </div>
                <div class="col-md-8">
                    <div class="post-summary">      
                        <h3 style="margin-top: 0px;"><a href="premium-blog-item.html"><font><font>下面是博客文章标题</font></font></a></h3>
                        <p class="text-sm"><font><font>2014年6月13日</font></font></p>
                        <p><font><font>
                          Lorem存有悲坐阿梅德，ID NEC conceptam结论emque。</font><font>等EAM塔季翁塔季翁选项选项。</font><font>Utinam salutatus前EUM。</font><font>Lorem存有悲坐阿梅德，ID NEC conceptam结论emque。
                        </font></font></p>
                        <p><a class="btn btn-default btn-sm" href="premium-blog-item.html"><font><font>阅读更多</font></font></a></p>
                    </div>
                </div>
            </div>

            <div class="row padding-bottom">
                <div class="col-md-4">
                    <a href="premium-blog-item.html" class="thumb"><img src="images/blog/789080_16753532.jpg" class="img-responsive hidden-xs"></a>
                </div>
                <div class="col-md-8">
                    <div class="post-summary">      
                        <h3 style="margin-top: 0px;"><a href="premium-blog-item.html"><font><font>下面是博客文章标题</font></font></a></h3>
                        <p class="text-sm"><font><font>2014年6月13日</font></font></p>
                        <p><font><font>
                          Lorem存有悲坐阿梅德，ID NEC conceptam结论emque。</font><font>等EAM塔季翁塔季翁选项选项。</font><font>Utinam salutatus前EUM。</font><font>Lorem存有悲坐阿梅德，ID NEC conceptam结论emque。
                        </font></font></p>
                        <p><a class="btn btn-default btn-sm" href="premium-blog-item.html"><font><font>阅读更多</font></font></a></p>
                    </div>
                </div>
            </div>

            <div class="row padding-bottom">
                <div class="col-md-4">
                    <a href="premium-blog-item.html" class="thumb"><img src="images/blog/888272_30368604.jpg" class="img-responsive hidden-xs"></a>
                </div>
                <div class="col-md-8">
                    <div class="post-summary">      
                        <h3 style="margin-top: 0px;"><a href="premium-blog-item.html"><font><font>下面是博客文章标题</font></font></a></h3>
                        <p class="text-sm"><font><font>2014年6月13日</font></font></p>
                        <p><font><font>
                          Lorem存有悲坐阿梅德，ID NEC conceptam结论emque。</font><font>等EAM塔季翁塔季翁选项选项。</font><font>Utinam salutatus前EUM。</font><font>Lorem存有悲坐阿梅德，ID NEC conceptam结论emque。
                        </font></font></p>
                        <p><a class="btn btn-default btn-sm" href="premium-blog-item.html"><font><font>阅读更多</font></font></a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="col-sm-3 sidebar">
        <div class="widget">
        <h3 style="margin-top: 0px;"><font><font>档案</font></font></h3>
            <div class="widget-body">
                <ul class="icons list-unstyled">
                    <li><a href="#"><i class="icon-angle-right"></i><font><font> 2014年6月</font></font></a></li>
                    <li><a href="#"><i class="icon-angle-right"></i><font><font> 2014年5月</font></font></a></li>
                    <li><a href="#"><i class="icon-angle-right"></i><font><font> 2014年4月</font></font></a></li>
                    <li><a href="#"><i class="icon-angle-right"></i><font><font> 2014年3月</font></font></a></li>
                    <li><a href="#"><i class="icon-angle-right"></i><font><font> 2014年2月</font></font></a></li>
                    <li><a href="#"><i class="icon-angle-right"></i><font><font> 2014年1月</font></font></a></li>
                    <li><a href="#"><i class="icon-angle-right"></i><font><font> 2013年12月</font></font></a></li>
                </ul>
            </div>
        </div>
        <div class="widget">

            <h3><font><font>分类</font></font></h3>
            <p class="widget-body">
                <a href="#"><span class="large label tag label-info"><font><font>公告</font></font></span></a>
                <a href="#"><span class="large label tag label-info"><font><font>公司</font></font></span></a>
                <a href="#"><span class="large label tag label-info"><font><font>新闻</font></font></span></a>
                <a href="#"><span class="large label tag label-info"><font><font>活动</font></font></span></a>
                <a href="#"><span class="large label tag label-info"><font><font>信息</font></font></span></a>
                <a href="#"><span class="large label tag label-info"><font><font>有趣的东西</font></font></span></a>
                <a href="#"><span class="large label tag label-info"><font><font>新闻</font></font></span></a>
                <a href="#"><span class="large label tag label-info"><font><font>活动</font></font></span></a>
                <a href="#"><span class="large label tag label-info"><font><font>公司</font></font></span></a>
                <a href="#"><span class="large label tag label-info"><font><font>活动</font></font></span></a>
                <a href="#"><span class="large label tag label-info"><font><font>公司</font></font></span></a>
                <a href="#"><span class="large label tag label-info"><font><font>新闻</font></font></span></a>
                <a href="#"><span class="large label tag label-info"><font><font>公告</font></font></span></a>
                <a href="#"><span class="large label tag label-info"><font><font>活动</font></font></span></a>
                <a href="#"><span class="large label tag label-info"><font><font>信息</font></font></span></a>
                <a href="#"><span class="large label tag label-info"><font><font>有趣的东西</font></font></span></a>
            </p>

        </div>

        <div class="widget">
            <h3><font><font>关于我们</font></font></h3>
            <p class="widget-body"><font><font>
                我们是一个小的，基于网络的公司，为个人和企业的创新理念。</font><font>我们屡获殊荣的产品帮助人们解决他们对待每一天的问题。
            </font></font></p>
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
    <div id="goog-gt-tt" class="skiptranslate" dir="ltr"><div style="padding: 8px;">
    <div>
    <div class="logo">
    <img src="https://www.gstatic.com/images/branding/product/1x/translate_24dp.png" width="20" height="20" alt="Google 翻译">
    </div></div></div>
    <div class="top" style="padding: 8px; float: left; width: 100%;">
    <div class="original-text"></div></div><div class="bottom" style="padding: 8px;">
    <span class="activity-link"></span></div>
    <div class="started-activity-container">
    <div class="activity-root"></div></div></div>
    <div class="status-message" style="display: none;"></div></div>
<div class="goog-te-spinner-pos">
<div class="goog-te-spinner-animation">
<svg xmlns="http://www.w3.org/2000/svg" class="goog-te-spinner" width="96px" height="96px" viewBox="0 0 66 66"><circle class="goog-te-spinner-path" fill="none" stroke-width="6" stroke-linecap="round" cx="33" cy="33" r="30">
</circle>
</svg>
</div>
</div>
</body>
</html>