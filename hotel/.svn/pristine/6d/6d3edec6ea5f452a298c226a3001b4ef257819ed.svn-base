<%@page import="cn.sendto.hotel.models.UserModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
						<li class="divider"></li>
						<li><a href="${pageContext.request.contextPath }/adminuser.jsp">个人信息</a></li>
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
    <li><a href="#" data-target=".dashboard-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-dashboard"></i>数据管理<i class="fa fa-collapse"></i></a></li>
    <li><ul class="dashboard-menu nav nav-list collapse in">
<li><a href="${pageContext.request.contextPath}/AdminSuperMen"><span class="fa fa-caret-right"></span>高级用户</a></li>
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
            <h1 class="page-title">常见问题</h1>
                    <ul class="breadcrumb">
            <li><a href="index.jsp">首页</a></li>
            <li class="active">常见问题</li>
        </ul>
        </div>
        <div class="main-content">
        <div class="alert alert-error">
        <button type="button" class="close" data-dismiss="alert">×</button>
         我们可以帮助您解决问题
    </div>
<div class="faq-content">
    <h2>常见问题</h2>
    <ol>
        <li><a href="#q1">1.对团队客人预定工作应该认真对待，作为总台接待员应该怎么办？</a></li>
        <li><a href="#q2">2.客人在入住登记时，没有遵照公安部门的规定填写内容时，怎么办？
 </a></li>
        <li><a href="#q3">3.客人入住登记时，发现所持身份证可疑时，怎么办？
 </a></li>
        <li><a href="#q4">4.当发现入住客人是被通缉对象时，怎么办？
 </a></li>
        <li><a href="#q5">5. 当客人入住后要求保密他的房号及姓名时，怎么办？
 </a></li>
    </ol>
    <h2>更多问题</h2>
    <ol>
        <li><a href="#q11">6. 客人要求换房时怎么办？</a></li>
        <li><a href="#q12">7. 客人有贵重物品不愿存怕麻烦怎么办？</a></li>
        <li><a href="#q13">8. 同时有几批客人抵达宾馆、行李较多时怎么办？</a></li>
        <li><a href="#q14">9. 客人因某种原因对服务工作有意见，在大堂内大吵大闹怎么办？</a></li>
        <li><a href="#q15">10. 大堂副理接到 VIP 通知时怎么办？</a></li>
        <li><a href="#q16">11. 对长期租用酒店客房的客人你应该怎样办？</a></li>
        <li><a href="#q17">12. 客房服务员在仪容仪表方面要严格规定，你要怎么办？</a></li>
        <li><a href="#q18">13. 客人投诉叫醒电话未叫醒怎么办？</a></li>
    </ol>
    <hr>
    <h2>最常见的问题</h2>
    <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="fa fa-arrow-circle-up"></i>置顶</a>
    <h3 id="q1">1.对团队客人预定工作应该认真对待，作为总台接待员应该怎么办？
 </h3>
    <p>答：对团队客人的房间预定工作要认真落实，在来馆前一个月之前核对一次，来馆前一周之前核对一次，来馆前一天之前核对一次，大型团队预订还应多于三次，确保客房预订业务万无一失。</p>
    <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="fa fa-arrow-circle-up"></i> 置顶</a>
    <h3 id="q2">2.客人在入住登记时，没有遵照公安部门的规定填写内容时，怎么办？</h3>
    <p>答：请客人按规定填写：如姓名、国籍、性别、出生年月日、护照或身份证号码、永久住址、客房、职业、工作处所、到达日期等。</p>
    <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="fa fa-arrow-circle-up"></i> 置顶</a>
    <h3 id="q3">3.客人入住登记时，发现所持身份证可疑时，怎么办？</h3>
    <p>答：（1）仔细核对其身份证是否属于伪造；<br/>（2）若是伪造，立即通知保安部处理。</p>
    <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="fa fa-arrow-circle-up"></i> 置顶</a>
    <h3 id="q4">4.当发现入住客人是被通缉对象时，怎么办？
 </h3>
    <p>答：（1）保持镇定，请来人登记并先让其入住。<br/>（2）待客人离开总台后，立即通知保安部处理。
</p>
    <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="fa fa-arrow-circle-up"></i> 置顶</a>
    <h3 id="q5">5. 当客人入住后要求保密他的房号及姓名时，怎么办？
 </h3>
    <p>答：（1）接待员在电脑中作修改，使之不被查询；<br/>（2）通知总台人员对该房作保密，并在交班上注明。
 </p>
    <hr>
    <h2>更多问题</h2>
    <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="fa fa-arrow-circle-up"></i> 置顶</a>
    <h3 id="q11">6. 客人要求换房时怎么办？</h3>
    <p>答：（1）询问换房原因，因设备原因可及时报修，取得客人同意不换房间为上策。<br/>（2）换房应征求客人意见，告诉客人提供换房的情况和搬房时间，并通知行李员为其搬行李。
</p>
    <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="fa fa-arrow-circle-up"></i> 置顶</a>
    <h3 id="q12">7. 
客人有贵重物品不愿存怕麻烦怎么办？
  </h3>
    <p>答：你应告诉客人根据国际上通行的法律，客人有贵重物品交给饭店方面保存时，饭店方面才负有责任。但客人在住店期间遗失了贵重物品，会影响饭店的声誉，所以在登记卡或客房内均有提醒客人将贵重物品存放在保险柜的字样。</p>
    <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="fa fa-arrow-circle-up"></i> 置顶</a>
    <h3 id="q13">8. 同时有几批客人抵达宾馆、行李较多时怎么办？</h3>
    <p>答：对同时抵达宾馆的几批客人行李应分别挂上行李牌，或用不同颜色的布带区别成堆放置，并用网罩，分批及时送到楼层，按房号送至客人手中，不应混淆。</p>
    <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="fa fa-arrow-circle-up"></i> 置顶</a>
    <h3 id="q14">9. 客人因某种原因对服务工作有意见，在大堂内大吵大闹怎么办？
 </h3>
    <p>答：客人因某种原因对服务工作有意见，会影响饭店的声誉和安宁，应尽量做好工作，带他离开大堂到客房部投诉，更应委婉冷静，彬彬有礼，不与客人争辩和过分解释。</p>
    <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="fa fa-arrow-circle-up"></i> 置顶</a>
    <h3 id="q15">10. 大堂副理接到 VIP 通知时怎么办？</h3>
    <p>答：（1）根据VIP的通知要求，在VIP抵达前做好准备工作；<br/>（2）在VIP抵达时，在大堂做好迎接工作；<br/>（3）对客人住店表示欢迎，并祝住店愉快；<br/>（4）在VIP住店期间，询问客人入住情况，请他们多提供宝贵意见，以便在今后工作中不断改进。<br/>（5）在VIP客人离店时，做好欢送工作，欢迎客人再次光临。</p>
    <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="fa fa-arrow-circle-up"></i> 置顶</a>
    <h3 id="q16">11. 对长期租用酒店客房的客人你应该怎样办</h3>
    <p>答：做好长住客的服务工作，首先做到心中有数。掌握长住客的生活习惯，处处为他们提供快捷的服务；了解长住客人所在国的国庆日，主要客人的生日等。向他们的国庆日、生日进行祝贺，帮助长住客人解决急难的问题；另外应该把饭店的重要活动通知他们参加。定期召开长住客座谈会，虚心听取客人的意见，改进服务工作，使长住客人到店如到家，处处感到亲切、方便、舒适、安全。
 </p>
    <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="fa fa-arrow-circle-up"></i> 置顶</a>
    <h3 id="q17">12. 客房服务员在仪容仪表方面要严格规定，你要怎么办？
</h3>
    <p>答：要求服务员做到勤理发、勤洗澡，勤修指甲。发型大方、梳理整齐，面容整洁。男服务员要常修面、不留小胡子，大鬓角；女服务员在工作时不梳披头散发，不戴耳环饰物，不染有色指甲，不浓装艳抹。着宾馆统一制作的工作服，佩带工号牌，鞋袜整齐，着裙时穿肉色丝袜，做到表情明朗，面带微笑，亲切和蔼，端庄稳重，落落大方，不卑不亢。
</p>
    <a href="#" style="float: right; line-height: 1.25em; display: inline-block; padding: .75em 0em;"><i class="fa fa-arrow-circle-up"></i> 置顶</a>
    <h3 id="q18">13. 客人投诉叫醒电话未叫醒怎么办？</h3>
    <p>答：（1）向客人道歉。<br/>（2）调查原因，看是机器故障还是人为的原因，并立即采取措施加以处理，以免再次投诉扩大事态。<br/>（3）若由于叫醒电话确实未叫醒而给客人带来的损失，应根据情况由宾馆或当事人给予赔偿。</p>
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
