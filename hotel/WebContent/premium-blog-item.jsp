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
						<li><a href="${pageContext.request.contextPath}/admuser.jsp">个人信息</a></li>
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
            
            <h1 class="page-title"><font><font>我们正在推出一款新产品</font></font></h1>
            
        </div>
        <div class="main-content">
            
<div class="row blog-post">
    <div class="col-sm-9 main-content">
        <p class="pull-right small">
            <a href="#"><i class="icon-comments"></i><font><font> 8评论</font></font></a>
        </p>
        <p class="muted small"><font><font>
            2014年1月14日 
        </font></font></p>
        <a href="#">
            <img class="img-responsive" src="images/tumblr_mopqkkwK2M1st5lhmo1_1280.jpg" alt="">
        </a>

        <h3><font><font>新的设计</font></font></h3>
        <p><font><font>Lorem存有悲坐阿梅德，consectetur adipiscing ELIT。</font><font>Pellentesque燕雀杂色山雀adipiscing。</font><font>南scelerisque hendrerit turpis交流必比登。</font><font>桑达狮子座ELIT，格言简历scelerisque一个，hendrerit UT爱神。</font><font>Morbi等ligula enim，韦尔的Tempus爱神。</font><font>南posuere，在elementum auctor，直径metus孕妇ligula，在悲非sollicitudin LOREM LOREM爱神。</font><font>Nullam在consequat直径。</font><font>南imperdiet奥奇欧盟velit aliquet ID的cursus存有ornare。</font><font>Phasellus interdum杂色山雀augue，韦尔灵猫NIBH suscipit VARIUS。</font><font>信用评级机构molestie SAPIEN NEC特力feugiat lacinia。</font><font>Nullam arcu赌注，elementum简历tincidunt QUIS，rhoncus SED自由人。</font><font>NUNC lacinia mauris直径，在convallis ERAT。</font></font></p>
        <h3><font><font>寻找用户</font></font></h3>
        <p><font><font>
        在孕妇enim等马萨auctor placerat。</font><font>保护者QUIS LOREM SEM。</font><font>Phasellus eleifend mauris vehicula augue dapibus ultrices。</font><font>Pellentesque居住者morbi tristique senectus等netus等malesuada脂肪酸甲酯交流turpis egestas。</font><font>Morbi SAPIEN山雀congue ligula hendrerit auctor。</font><font>NUNC aliquet accumsan risus，ID commodo普鲁斯PORTA QUIS。</font><font>越南的cursus lectus在特力malesuada malesuada。</font><font>Pellentesque居住者morbi tristique senectus等netus等malesuada脂肪酸甲酯交流turpis egestas。</font><font>Pellentesque sollicitudin的Pretium sollicitudin。</font><font>Praesent malesuada dapibus自由人QUIS congue。</font><font>Pellentesque坐在妮斯杂色山雀sagittis eget简历奥奇阿梅德英里。</font><font>桑达非SEM在普鲁斯blandit的Tempus vulputate UT英里。</font><font>Donec volutpat，猫非必比登ultricies，ERAT lectus腾邦拉克丝，在elementum SEM ELIT UT lectus。</font></font></p>

        <h3><font><font>注释</font></font></h3>
        <div class="comments">
            <div class="media">
              <a class="pull-left" href="#">
                <img class="media-object" style="width: 64px; height: 64px;" src="images/faces/1b.png">
              </a>
              <div class="media-body">
                <h4 class="media-heading"><font><font>阿什利·杰克逊</font></font></h4>
                <p><font><font>信用评级机构坐阿梅德NIBH自由人，在孕妇法无。</font><font>评级机构普鲁斯奥迪奥，在前庭的vulputate，腾邦灵猫turpis。</font><font>Fusce condimentum NUNC交流妮斯vulputate燕雀。</font><font>Donec lacinia congue猫在faucibus。</font></font><br><a href="#" class="small" style="font-size: .8em;"><font><font>回复</font></font></a></p>
              </div>
            </div>
            <div class="media">
              <a class="pull-left" href="#">
                <img class="media-object" style="width: 64px; height: 64px;" src="images/faces/2a.png">
              </a>
              <div class="media-body">
                <h4 class="media-heading"><font><font>李的quon</font></font></h4>
                <p><font><font>法无VEL metus scelerisque赌注sollicitudin commodo。</font><font>评级机构普鲁斯奥迪奥，在前庭的vulputate，腾邦灵猫turpis。</font><font>Fusce condimentum NUNC交流妮斯vulputate燕雀。</font><font>Donec lacinia congue猫在faucibus。
                </font></font><br><a href="#" style="font-size: .8em;"><font><font>回复</font></font></a></p>
                <div class="media">
                  <a class="pull-left" href="#">
                    <img class="media-object" style="width: 64px; height: 64px;" src="images/faces/4b.png">
                  </a>
                  <div class="media-body">
                    <h4 class="media-heading"><font><font>帕特里夏汉密尔顿</font></font></h4>
                    <p><font><font>信用评级机构坐阿梅德NIBH自由人，在孕妇法无。</font><font>法无VEL metus scelerisque赌注sollicitudin commodo。</font><font>评级机构普鲁斯奥迪奥，在前庭的vulputate，腾邦灵猫turpis。</font><font>Fusce condimentum NUNC交流妮斯vulputate燕雀。</font><font>Donec lacinia congue猫在faucibus。
                    </font></font><br><a href="#" style="font-size: .8em;"><font><font>回复</font></font></a></p>
                  </div>
                </div>
              </div>
              <div class="media">
                  <a class="pull-left" href="#">
                        <img class="media-object" style="width: 64px; height: 64px;" src="images/faces/3a.png">
                  </a>
                  <div class="media-body">
                      <h4 class="media-heading"><font><font>马克·毕晓普</font></font></h4>
                      <p><font><font>信用评级机构坐阿梅德NIBH自由人，在孕妇法无。</font><font>法无VEL metus scelerisque赌注sollicitudin commodo。</font><font>评级机构普鲁斯奥迪奥，在前庭的vulputate，腾邦灵猫turpis。
                      </font></font><br><a href="#" style="font-size: .8em;"><font><font>回复</font></font></a></p>
                  </div>
              </div>
            </div>
          </div>
          <h3><font><font>发表评论</font></font></h3>
          <form>
                <div class="form-group">
                    <label for="name"><font><font>名称</font></font></label>
                    <input type="text" class="form-control" name="name">
                </div>
                <div class="form-group">
                    <label for="email"><font><font>电子邮件*</font></font></label>
                    <input type="text" class="form-control" name="email">
                </div>
                <div class="form-group">
                    <label for="message"><font><font>信息*</font></font></label>
                    <textarea class="form-control" rows="8" name="message"></textarea>
                </div>
              <font><font><input type="submit" value="发表回复" class="btn btn-primary" style="display: block;"></font></font>
          </form>
        </div>

    <div class="col-sm-3 sidebar">
        <div class="widget">
            <h3 style="margin-top: 0px;"><font><font>档案</font></font></h3>
            <div class="widget-body">
                <ul class="icons list-unstyled">
                    <li><a href="#"><i class="icon-angle-right"></i><font><font> 2013年六月</font></font></a></li>
                    <li><a href="#"><i class="icon-angle-right"></i><font><font> 2013年5</font></font></a></li>
                    <li><a href="#"><i class="icon-angle-right"></i><font><font> 2013年4月</font></font></a></li>
                    <li><a href="#"><i class="icon-angle-right"></i><font><font> 2013年3月</font></font></a></li>
                    <li><a href="#"><i class="icon-angle-right"></i><font><font> 2013年2月</font></font></a></li>
                    <li><a href="#"><i class="icon-angle-right"></i><font><font> 2013年1月</font></font></a></li>
                    <li><a href="#"><i class="icon-angle-right"></i><font><font> 2012年12月</font></font></a></li>
                </ul>
            </div>
        </div>

         
        <div class="widget">
            <h3><font><font>分类</font></font></h3>
            <div class="widget-body">
                <a href="#"><span class="large label tag label-primary"><font><font>公告</font></font></span></a>
                <a href="#"><span class="large label tag label-primary"><font><font>公司</font></font></span></a>
                <a href="#"><span class="large label tag label-primary"><font><font>新闻</font></font></span></a>
                <a href="#"><span class="large label tag label-primary"><font><font>活动</font></font></span></a>
                <a href="#"><span class="large label tag label-primary"><font><font>信息</font></font></span></a>
                <a href="#"><span class="large label tag label-primary"><font><font>有趣的东西</font></font></span></a>
                <a href="#"><span class="large label tag label-primary"><font><font>新闻</font></font></span></a>
                <a href="#"><span class="large label tag label-primary"><font><font>事件</font></font></span></a>
                <a href="#"><span class="large label tag label-primary"><font><font>公司</font></font></span></a>
                <a href="#"><span class="large label tag label-primary"><font><font>活动</font></font></span></a>
                <a href="#"><span class="large label tag label-primary"><font><font>新闻</font></font></span></a>
                <a href="#"><span class="large label tag label-primary"><font><font>公告</font></font></span></a>
                <a href="#"><span class="large label tag label-primary"><font><font>活动</font></font></span></a>
                <a href="#"><span class="large label tag label-primary"><font><font>信息</font></font></span></a>
                <a href="#"><span class="large label tag label-primary"><font><font>有趣的东西</font></font></span></a>
                <a href="#"><span class="large label tag label-primary"><font><font>公司</font></font></span></a>
            </div>
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
    <div id="goog-gt-tt" class="skiptranslate" dir="ltr">
    <div style="padding: 8px;">
    <div>
    <div class="logo">
    <img src="https://www.gstatic.com/images/branding/product/1x/translate_24dp.png" width="20" height="20" alt="Google 翻译">
    </div></div></div>
   
    <div class="status-message" style="display: none;"></div></div>
    
  

<div class="goog-te-spinner-pos">
<div class="goog-te-spinner-animation">
<svg xmlns="http://www.w3.org/2000/svg" class="goog-te-spinner" width="96px" height="96px" viewBox="0 0 66 66">
<circle class="goog-te-spinner-path" fill="none" stroke-width="6" stroke-linecap="round" cx="33" cy="33" r="30"></circle>
</svg></div></div>
</body>
</html>