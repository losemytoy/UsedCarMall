<%--
  Created by IntelliJ IDEA.
  User: Lin
  Date: 2020/5/24
  Time: 22:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <link rel="stylesheet" href="css/UserLogIn.css" />
</head>
<body style="background-color: #f9f9f9;">
<a href="admin_login.jsp" style="float:right;text-decoration: none;color: black;font-size: 16px;position: relative;top: 0px;right: 20px;">管理员登陆</a>
    <div class="firstdiv">
        <div style="text-align: center;"><img class="logo" src="img/爬爬logo.png" /></div>
    </div>
    <div id="secpart">
        <div>
            <h1>Sign in to PAPA</h1>
        </div>
        <form action="userloginConnection.action">
            <div class="inputbox">
                <label for="login_id">Username or email address</label>
                <input type="text" name="users.userNo" id="login_id" class="input" tabindex="1" autocomplete="off" autocomplete="username" autofocus="autofocus"/>
                <label for="password">Password
                    <a href="#" class="labellink">Forget Password?</a>
                </label>

                <input type="password" name="users.userPwd" id="password" class="input" tabindex="2" autocomplete="current-password"/>
                <input type="submit" tabindex="3" class="btn" value="登录"/>
            </div>
        </form>
        <p class="ads">还没加入爬爬？<a href="UserRegister.jsp" class="reg">创建一个账号</a></p>
    </div>
</body>
</html>
