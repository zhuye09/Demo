<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath }/My97DatePicker/WdatePicker.js"></script>
        <script src="lib/jQuery-Knob/js/jquery.knob.js" type="text/javascript"></script>
    <script type="text/javascript">
    	function tab(date1,date2){
    		var oDate1 = new Date(date1);
    		var oDate2 = new Date(date2);
    		var date = new Date();
    		if(oDate1.getTime() < oDate2.getTime() && oDate2.getTime() <= date){
    			return true;
    		}else{
    			return false;
    		}
    	}
    	function DateTime(){
    		var t1 = document.getElementById("startDate").value;
    		var t2 = document.getElementById("endDate").value;
    		if(t1 == "" && t2 == ""){
    			var month = document.getElementById("month").value;
        		if(month != null){
        			return true;
        		}else{
        			return false;
        		}
    		}
    		var re_propet = document.getElementById("re_propet");
    		var bo = tab(t1,t2);
    		if(!bo){
    			re_propet.innerHTML = "--开始时间不能大于或等于结束时间,并且结束时间要小于今天！--";
    			return false;
    		}
    		return true;
    	}
    	function WeekQuery(){
    		var date = new Date();
    		var week =date.getDay();
    		document.getElementById("week").value = week;
    		
    	}
        $(function(){
            $(".knob").knob();
        });
    </script>


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
        .list td{text-align:center;}
        .input_style{border:1px solid blue; border-radius:5px;margin-top:15px;}
        .td_week{text-align:center;width:20%;}
        .td_select{text-align:center;width:80%;}
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
          <a class="" href="index.jsp"><span class="navbar-brand">累了么 住房管理</span></a></div>

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
						<li><a href="${pageContext.request.contextPath }/user.jsp">个人信息</a></li>
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
    <li><a href="#" data-target=".dashboard-menu" class="nav-header" data-toggle="collapse"><i class="fa fa-fw fa-dashboard"></i>基本管理<i class="fa fa-collapse"></i></a></li>
    <li><ul class="dashboard-menu nav nav-list collapse in">
            <li ><a href="FindAllRoomsInfoServlet?str=leader"><span class="fa fa-caret-right"></span>客房状态 </a></li>
			<li ><a href="CountIncome"><span class="fa fa-caret-right"></span>收益量</a></li>
            <li ><a href="WorkerCountServlet"><span class="fa fa-caret-right"></span>业务统计</a></li>
    </ul></li>

        <li><a href="#" data-target=".legal-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-legal"></i>法律<i class="fa fa-collapse"></i></a></li>
        <li><ul class="legal-menu nav nav-list collapse">
            <li ><a href="Leaderprivacy-policy.jsp"><span class="fa fa-caret-right"></span>隐私政策</a></li>
            <li ><a href="Leaderterms-and-conditions.jsp"><span class="fa fa-caret-right"></span>条款和条件</a></li>
    </ul></li>
            <li><a href="Leaderfaq.jsp" class="nav-header"><i class="fa fa-fw fa-comment"></i>常问问题 </a></li>
                <li><a href="https://www.ele.me" class="nav-header" target="blank"><i class="fa fa-fw fa-heart"></i>饿了么</a></li>
            </ul>
    </div>
    <div class="content">
        <div class="header">
            
            <h1 class="page-title">职工工作量</h1>
        </div>
        <div class="main-content">

<div class="row" style="width:205%">
    <div class="col-sm-6 col-md-6">
        <div class="panel panel-default"> 
            <div class="panel-heading no-collapse">
                <span class="panel-icon pull-right">
                    <a href="#" class="demo-cancel-click" rel="tooltip" title="Click to refresh"><i class="fa fa-refresh"></i></a>
                </span>
                月收益
            </div>
            	<form action="WorkerCountServlet" method="post" style="text-align:center;">
            			<table class="tab" style="width:100%;border-bottom: 1px solid #ccc;">
            				<tr>
            				<td class="td_week">
            				<input type="hidden" name="week" id="week" value="" />
            				<input type="submit" onclick="WeekQuery()" value="查询本周" />&nbsp;&nbsp;&nbsp;&nbsp;
            				</td>
            				<td class="td_select">
            				按月份:<select class="month"  id="month" name="month">
            						<option  value="" selected="selected" >--请选择--</option>
            						<option value="01">01月份</option>
            						<option value="02">02月份</option>
            						<option value="03">03月份</option>
            						<option value="04">04月份</option>
            						<option value="05">05月份</option>
            						<option value="06">06月份</option>
            						<option value="07">07月份</option>
            						<option value="08">08月份</option>
            						<option value="09">09月份</option>
            						<option value="10">10月份</option>
            						<option value="11">11月份</option>
            						<option value="12">12月份</option>
            					 </select>&nbsp;&nbsp;&nbsp;
                  			开始时间：<input tyep="text" onClick="new WdatePicker()" name="startDate" id="startDate" value="">
                  			结束时间：<input tyep="text" onClick="new WdatePicker()" name="endDate" id="endDate" value=""> 
                 		&nbsp;&nbsp;<input class="input_style" type="submit"  onclick="return DateTime()" value="查询" style="margin-bottom:10px;"><br>
                 			</td>
                 			</tr>
                 		</table>
                </form>
            <table width="100%" height="25px">
            	<tr>
            		<td style="text-align:center;"><span id="re_propet" style="color:red;">${Msg}</span></td>
            	</tr>
            </table>
            <table class="table list">
              <thead>
                  <tr>
                      <td>序号</td>
                      <td>职工名称</td>
                      <td>时间段</td>
                      <td>下单量</td> 
                  </tr>
              </thead>
              <tbody>
              <c:if test="${items ==null }">
              <tr>
              	<td colspan="4">暂时还没有数据哦！</td>
              </tr>
              </c:if>
              	<c:forEach items="${items}" var="item" varStatus="vs">
                  <tr>
                      <td>${vs.count}</td>
                      <td>${item.userName}</td>
                      <c:if test="${end == null}">
                      	<td>${start}</td>
                      </c:if>
                      <c:if test="${end != null}">
                      	<td>${start}&nbsp;&nbsp;--&nbsp;&nbsp;${end}</td>
                      </c:if>
                      <td>${item.cnt}/条</td>
                  </tr>
                 </c:forEach>
              </tbody>
            </table>
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
