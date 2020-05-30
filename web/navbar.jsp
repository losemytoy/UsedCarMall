<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>爬爬二手车直卖网</title>
		<link rel="stylesheet" href="css/1.css" />
		<link rel="stylesheet" href="css/sj.css" />
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" href="css/lym.css" />
		<link rel="stylesheet" href="css/banner.css" />
		<link rel="stylesheet" href="css/style.css" />
	</head>
	<style type="text/css">
		.frame {
			width: 85vw;
			height: 40vw;
			margin: 2vw auto;
		}
	</style>
	<body>

		<nav class="navbar navbar-default navbar-fixed-top" style="background: rgba(255,255,255,0.5);">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
					<a href="./Home.jsp"><img src="img/爬爬logo.png" class="navbar-brand" style="height: 100px;width: auto;margin-left: -60px"/></a>
					<a class="navbar-left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
				</div>

				<%--导航栏--%>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-left" style="margin-left: 20px;">
						<li><a href="Home.jsp">首页&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								我要买车&nbsp;&nbsp;&nbsp;&nbsp;
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li><a href="Classify.jsp">车型选择</a></li>
								<li><a href="#">预约看车</a></li>
								<li><a href="#"></a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								我要卖车&nbsp;&nbsp;&nbsp;&nbsp;
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li><a href="AddCar.jsp">车辆出售</a></li>
								<%--<li class="divider"></li>分割线--%>
								<li><a href="AddCarHistory.jsp">车辆发布历史</a></li>
								<li><a href="CarValue.jsp">车辆价值预估</a></li>
							</ul>
						</li>
						<li><a href="B&SList.jsp">订单查看&nbsp;&nbsp;&nbsp;</a></li>
						<li><a href="#">联系我们</a></li>
					</ul>
				</div>

				<%--登陆注册--%>
				<div class="sj_logreg">
					<a href="UserLogIn.jsp">登录</a>
					<a style="margin-left: 1432px;" href="UserRegister.jsp">注册</a>
				</div>

				<%--搜索框--%>
				<div class="sj_search">
					<input type="text" placeholder="请输入内容" style="margin-left: 890px"/>
					<button src="" style="width: 75px;margin-left: 1100px">查询</button>
				</div>
			</div>
		</nav>
		
	</body>
</html>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/banner.js"></script>
