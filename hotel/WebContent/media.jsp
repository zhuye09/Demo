<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en" class="csstransforms csstransforms3d csstransitions"><head>
    <meta charset="utf-8">
    <title>Admin</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">
    <script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>
        <script src="lib/jquery.isotope.min.js"></script>
    <link rel="stylesheet" href="stylesheets/isotope.css">
    <link rel="stylesheet" href="lib/fancy-zoom/css/fancyzoom.css" type="text/css">
	<script type="text/javascript" src="lib/fancy-zoom/src/fancyzoom.js"></script>
	<script type="text/javascript" charset="utf-8">
		$(document).ready(function() {
			$('#gallery img').fancyZoom({closeOnClick: true, directory:'lib/fancy-zoom/img/'});
		});
	</script>
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/premium.css">
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
    </script><style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .navbar-default .navbar-brand, .navbar-default .navbar-brand:hover { 
            color: #fff;
        }
    </style><script type="text/javascript">
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
     </head>
     <body> 
        <div class="navbar navbar-default" role="navigation"  style="background:#5c6b89;">
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
						<li><a href="${pageContext.request.contextPath }/admuser.jsp">我的账户</a></li>
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
        <div class="main-content">
            <h1 class="page">房源风采展</h1>
<h3 class="page-tagline">尽心尽力的服务无所不在的关怀。</h3>
<script type="text/javascript">
function fancyFilter (filterListSelector, gallerySelector) {
    //Filter Button Code
    $(filterListSelector + ' a').click(function() {
        $(filterListSelector + ' li').removeClass('active');
        var $this = $(this);
        var filterType = $this.data('filter');
        if(!filterType) return true;
        $this.closest('li').addClass('active');
        $(gallerySelector).isotope({ 
            filter: filterType,
        });
        return false;
    });
};
$(function(){
    $('#gallery').imagesLoaded( function(){
        $(this).isotope();
    });
    fancyFilter('.filter', '#gallery');
});
</script>
<div class="row">
    <div class="col-md-12 main-content">
        <ul class="filter nav nav-pills">
          <li class="active">
            <a href="#all" data-filter=".element">所有</a>
          </li>
          <li><a href="#images" data-filter=".sampleFilterOnetrue">员工集</a></li>
          <li><a href="#videos" data-filter=".sampleFilterTwotrue">公司集</a></li>
        </ul>
        <div id="gallery" class="pgallery isotope" style="clear: both; position: relative; overflow: hidden; height: 927px;">
                    <div class="element thumbnail pull-left sampleFilterOnefalse sampleFilterTwofalse isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">
                        <a href="#">
                        <img src="images/dream/5.jpg">
                        </a>
                        <div class="image-data">
                            <span class="pull-right">
                                <a href="#"><i class="fa fa-thumbs-up "></i></a>
                                <a href="#"><i class="fa fa-comments "></i></a>
                                <a href="#"><i class="fa fa-plus "></i></a>
                            </span>
                            <span class="title">image 1</span>
                        </div>
                    </div>
                    <div class="element thumbnail pull-left sampleFilterOnefalse sampleFilterTwotrue isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(241px, 0px, 0px);">
                        <a href="#">
                        <img src="images/dream/2.jpg">
                        </a>
                        <div class="image-data">
                            <span class="pull-right">
                                <a href="#"><i class="fa fa-thumbs-up "></i></a>
                                <a href="#"><i class="fa fa-comments "></i></a>
                                <a href="#"><i class="fa fa-plus "></i></a>
                            </span>
                            <span class="title">image 2</span>
                        </div>
                    </div>
                    <div class="element thumbnail pull-left sampleFilterOnetrue sampleFilterTwotrue isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(481px, 0px, 0px);">
                        <a href="#">
                        <img src="images/dream/19.jpg">
                        </a>
                        <div class="image-data">
                            <span class="pull-right">
                                <a href="#"><i class="fa fa-thumbs-up "></i></a>
                                <a href="#"><i class="fa fa-comments "></i></a>
                                <a href="#"><i class="fa fa-plus "></i></a>
                            </span>
                            <span class="title">image 3</span>
                        </div>
                    </div>
                    <div class="element thumbnail pull-left sampleFilterOnefalse sampleFilterTwofalse isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(722px, 0px, 0px);">
                        <a href="#">
                        <img src="images/dream/4.jpg">
                        </a>
                        <div class="image-data">
                            <span class="pull-right">
                                <a href="#"><i class="fa fa-thumbs-up "></i></a>
                                <a href="#"><i class="fa fa-comments "></i></a>
                                <a href="#"><i class="fa fa-plus "></i></a>
                            </span>
                            <span class="title">image 4</span>
                        </div>
                    </div>
                    <div class="element thumbnail pull-left sampleFilterOnetrue sampleFilterTwotrue isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(722px, 189px, 0px);">
                        <a href="#">
                        <img src="images/dream/13.jpg">
                        </a>
                        <div class="image-data">
                            <span class="pull-right">
                                <a href="#"><i class="fa fa-thumbs-up "></i></a>
                                <a href="#"><i class="fa fa-comments "></i></a>
                                <a href="#"><i class="fa fa-plus "></i></a>
                            </span>
                            <span class="title">image 5</span>
                        </div>
                    </div>
                    <div class="element thumbnail pull-left sampleFilterOnefalse sampleFilterTwotrue isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(241px, 217px, 0px);">
                        <a href="#">
                        <img src="images/dream/6.jpg">
                        </a>
                        <div class="image-data">
                            <span class="pull-right">
                                <a href="#"><i class="fa fa-thumbs-up "></i></a>
                                <a href="#"><i class="fa fa-comments "></i></a>
                                <a href="#"><i class="fa fa-plus "></i></a>
                            </span>
                            <span class="title">image 6</span>
                        </div>
                    </div>
                    <div class="element thumbnail pull-left sampleFilterOnetrue sampleFilterTwofalse isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 335px, 0px);">
                        <a href="#">
                        <img src="images/dream/15.jpg">
                        </a>
                        <div class="image-data">
                            <span class="pull-right">
                                <a href="#"><i class="fa fa-thumbs-up "></i></a>
                                <a href="#"><i class="fa fa-comments "></i></a>
                                <a href="#"><i class="fa fa-plus "></i></a>
                            </span>
                            <span class="title">image 7</span>
                        </div>
                    </div>
                    <div class="element thumbnail pull-left sampleFilterOnefalse sampleFilterTwotrue isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(481px, 335px, 0px);">
                        <a href="#">
                        <img src="images/dream/8.jpg">
                        </a>
                        <div class="image-data">
                            <span class="pull-right">
                                <a href="#"><i class="fa fa-thumbs-up "></i></a>
                                <a href="#"><i class="fa fa-comments "></i></a>
                                <a href="#"><i class="fa fa-plus "></i></a>
                            </span>
                            <span class="title">image 8</span>
                        </div>
                    </div>
                    <div class="element thumbnail pull-left sampleFilterOnetrue sampleFilterTwotrue isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(241px, 423px, 0px);">
                        <a href="#">
                        <img src="images/dream/17.jpg">
                        </a>
                        <div class="image-data">
                            <span class="pull-right">
                                <a href="#"><i class="fa fa-thumbs-up "></i></a>
                                <a href="#"><i class="fa fa-comments "></i></a>
                                <a href="#"><i class="fa fa-plus "></i></a>
                            </span>
                            <span class="title">image 9</span>
                        </div>
                    </div>
                    <div class="element thumbnail pull-left sampleFilterOnefalse sampleFilterTwofalse isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 511px, 0px);">
                        <a href="#">
                        <img src="images/dream/11.jpg">
                        </a>
                        <div class="image-data">
                            <span class="pull-right">
                                <a href="#"><i class="fa fa-thumbs-up "></i></a>
                                <a href="#"><i class="fa fa-comments "></i></a>
                                <a href="#"><i class="fa fa-plus "></i></a>
                            </span>
                            <span class="title">image 10</span>
                        </div>
                    </div>
                    <div class="element thumbnail pull-left sampleFilterOnetrue sampleFilterTwotrue isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(722px, 523px, 0px);">
                        <a href="#">
                        <img src="images/dream/9.jpg">
                        </a>
                        <div class="image-data">
                            <span class="pull-right">
                                <a href="#"><i class="fa fa-thumbs-up "></i></a>
                                <a href="#"><i class="fa fa-comments "></i></a>
                                <a href="#"><i class="fa fa-plus "></i></a>
                            </span>
                            <span class="title">image 11</span>
                        </div>
                    </div>
                    <div class="element thumbnail pull-left sampleFilterOnefalse sampleFilterTwotrue isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(481px, 541px, 0px);">
                        <a href="#">
                        <img src="images/dream/12.jpg">
                        </a>
                        <div class="image-data">
                            <span class="pull-right">
                                <a href="#"><i class="fa fa-thumbs-up "></i></a>
                                <a href="#"><i class="fa fa-comments "></i></a>
                                <a href="#"><i class="fa fa-plus "></i></a>
                            </span>
                            <span class="title">image 12</span>
                        </div>
                    </div>
                    <div class="element thumbnail pull-left sampleFilterOnetrue sampleFilterTwofalse isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(241px, 630px, 0px);">
                        <a href="#">
                        <img src="images/dream/7.jpg">
                        </a>
                        <div class="image-data">
                            <span class="pull-right">
                                <a href="#"><i class="fa fa-thumbs-up "></i></a>
                                <a href="#"><i class="fa fa-comments "></i></a>
                                <a href="#"><i class="fa fa-plus "></i></a>
                            </span>
                            <span class="title">image 13</span>
                        </div>
                    </div>
                    <div class="element thumbnail pull-left sampleFilterOnefalse sampleFilterTwotrue isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 718px, 0px);">
                        <a href="#">
                        <img src="images/dream/10.jpg">
                        </a>
                        <div class="image-data">
                            <span class="pull-right">
                                <a href="#"><i class="fa fa-thumbs-up "></i></a>
                                <a href="#"><i class="fa fa-comments "></i></a>
                                <a href="#"><i class="fa fa-plus "></i></a>
                            </span>
                            <span class="title">image 14</span>
                        </div>
                    </div>
                    <div class="element thumbnail pull-left sampleFilterOnefalse sampleFilterTwotrue isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 718px, 0px);">
                        <a href="#">
                        <img src="images/dream/3.jpg">
                        </a>
                        <div class="image-data">
                            <span class="pull-right">
                                <a href="#"><i class="fa fa-thumbs-up "></i></a>
                                <a href="#"><i class="fa fa-comments "></i></a>
                                <a href="#"><i class="fa fa-plus "></i></a>
                            </span>
                            <span class="title">image 15</span>
                        </div>
                    </div>
                    <div class="element thumbnail pull-left sampleFilterOnefalse sampleFilterTwotrue isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 718px, 0px);">
                        <a href="#">
                        <img src="images/dream/3.jpg">
                        </a>
                        <div class="image-data">
                            <span class="pull-right">
                                <a href="#"><i class="fa fa-thumbs-up "></i></a>
                                <a href="#"><i class="fa fa-comments "></i></a>
                                <a href="#"><i class="fa fa-plus "></i></a>
                            </span>
                            <span class="title">image 16</span>
                        </div>
                    </div>
                    <div class="element thumbnail pull-left sampleFilterOnefalse sampleFilterTwotrue isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 718px, 0px);">
                        <a href="#">
                        <img src="images/dream/21.jpg">
                        </a>
                        <div class="image-data">
                            <span class="pull-right">
                                <a href="#"><i class="fa fa-thumbs-up "></i></a>
                                <a href="#"><i class="fa fa-comments "></i></a>
                                <a href="#"><i class="fa fa-plus "></i></a>
                            </span>
                            <span class="title">image 17</span>
                        </div>
                    </div>
                    <div class="element thumbnail pull-left sampleFilterOnefalse sampleFilterTwotrue isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 718px, 0px);">
                        <a href="#">
                        <img src="images/dream/1.jpg">
                        </a>
                        <div class="image-data">
                            <span class="pull-right">
                                <a href="#"><i class="fa fa-thumbs-up "></i></a>
                                <a href="#"><i class="fa fa-comments "></i></a>
                                <a href="#"><i class="fa fa-plus "></i></a>
                            </span>
                            <span class="title">image 18</span>
                        </div>
                    </div>
            <div class="clearfix isotope-item" style="position: absolute; left: 0px; top: 0px;"></div>
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
<div id="zoom-box" style="display:none;">
   <div class="zoom-content">
   </div>
   <a href="javascript:void(0)" class="zoom-close">
     <img src="lib/fancy-zoom/img//closebox.png" alt="×">
   </a>
 </div></body></html>