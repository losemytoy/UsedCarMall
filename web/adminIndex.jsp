<%--
  Created by IntelliJ IDEA.
  User: 89412
  Date: 2020/5/24
  Time: 22:43
  To change this template use File | Settings | File Templates.
--%>
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
</head>
<body onload="showtime()">
<nav class="navbar navbar-default navbar-fixed-top" style="background: rgba(255,255,255,0.5);">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            <a href="./Home.jsp"><img src="img/爬爬logo.png" class="navbar-brand" style="height: 100px;width: auto;"/></a>
            <a class="navbar-left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
        </div>

        <%--导航栏--%>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-left" style="margin-left: 100px;">
                <li><a href="adminIndex.jsp">首页&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        用户管理&nbsp;&nbsp;&nbsp;&nbsp;
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="UsersMes.jsp">用户信息</a></li>
                        <li class="divider"></li>
                        <li><a href="listUser.jsp">用户查询</a></li>
                        <li class="divider"></li>
                        <li><a href="addUsers.jsp">添加用户</a></li>

                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        车辆管理&nbsp;&nbsp;&nbsp;&nbsp;
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">车辆信息</a></li>
                        <li class="divider"></li><%--分割线--%>
                        <li><a href="">车辆查询</a></li>
                        <li class="divider"></li>
                        <li><a href="">添加车辆</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        订单管理&nbsp;&nbsp;&nbsp;&nbsp;
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">订单信息</a></li>
                        <li class="divider"></li><%--分割线--%>
                        <li><a href="">订单查询</a></li>
                        <li class="divider"></li>
                        <li><a href="">添加订单</a></li>
                    </ul>
                </li>
            </ul>
            <div class="lock">
                <span id="clock"></span>
            </div>
            <div class="admin">
            欢迎，管理员：<c><%=request.getSession().getAttribute("adminId")%></c>
            <a href="exit.jsp" target="_top" style="font-size: 15px;padding-left: 20px">退出账户</a>
            </div>
        </div>

    </div>
</nav>
</body>
</html>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/banner.js"></script>
<script type="text/javascript" src="js/showtime.js"></script>
