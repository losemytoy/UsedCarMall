<%--
  Created by IntelliJ IDEA.
  User: WZBC
  Date: 2019/6/10
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>管理员登录</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">

</head>

<body>
<a href="UserLogIn.jsp" style="float:right;text-decoration: none;color: black;font-size: 16px;position: relative;right: 25px;top: 10px">用户登陆</a>
<%
    String name="";
    String cookieName = "adminId";
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (int i = 0; i < cookies.length; i++) {
            Cookie cookie = cookies[i];
            if (cookieName.equals(cookie.getName())) {
                name = cookie.getValue();
            }
        }
    }
%>
<%--<form id="form1" name="form1" >--%>
<div class="wrapper" >

    <div class="container">
        <h1>Welcome</h1>
        <form action="adminloginConnection.action">
            <input type="text"  name="admins.adminId" class="username input" placeholder="请输入账号"id="username"  value="<%=name%>">
            <input type="password" name="admins.adminPwd" class="password input" placeholder="请输入密码" id="password">
            <button type="submit"id="submit" class="button">登陆</button>
        </form>
    </div>

    <ul class="bg-bubbles">
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
    </ul>

</div>
<script src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
</body>
</html>
<%
    String result = (String) request.getAttribute("result");
    if (result != null)
        out.print(result);
%>
