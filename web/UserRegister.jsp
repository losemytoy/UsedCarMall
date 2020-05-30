<%--
  Created by IntelliJ IDEA.
  User: Lin
  Date: 2020/5/26
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
    <link rel="stylesheet" href="css/register.css" />
</head>
<body>
<div id="top"><h1>用户注册</h1></div>
<div class="form-bak">
    <form action="userregAction.action">
        <div class="left">
            <div class="line" id="line_name">
                <div class="info">
                    <strong>账号</strong>
                </div>
                <div class="input">
                    <input type="text" name="userNo" id="textfield1" />
                </div>
            </div>
            <div class="line" id="line_password">
                <div class="info">
                    <strong>密码</strong>
                </div>
                <div class="input">
                    <input type="password" name="userPwd"/>
                </div>
            </div>
            <div class="line" id="line_repeat">
                <div class="info">
                    <strong>用户昵称</strong>
                </div>
                <div class="input">
                    <input type="text" name="userName"/>
                </div>
            </div>

            <div class="line">
                <div class="info">
                    <strong>联系方式</strong>
                </div>
                <div class="input">
                    <input type="text" name="userTel"/>
                </div>
            </div>

            <div class="right">
                <button type="submit" style="width: 200px;height: 50px;border-width: 0px;border-radius: 3px;background: #1E90FF;
            cursor: pointer;outline: none;font-family: Microsoft YaHei;color: white;font-size: 17px;position: relative;left: 30px;">完成注册</button>
                <div>已经拥有账号，<a href="UserLogIn.jsp" style="text-decoration: none;">直接登录</a></div>
            </div>
        </div>
    </form>
</div>

</body>
</html>
