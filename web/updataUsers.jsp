<%@ page import="entity.Users" %><%--
  Created by IntelliJ IDEA.
  User: 89412
  Date: 2019/6/8
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息修改</title>
</head>
<%
    Users users = (Users) request.getAttribute("updataUsers");
%>
<body>
<jsp:include page="adminIndex.jsp" flush="true" />
<p style="text-align: center; font-size: 40px; font-weight: bold;">用户信息修改</p>
<form action="updataUsershello.action" style="text-align: center;">
    <table align="center" width="500" border="1" cellpadding="0" cellspacing="0">
        <tr>
            <th width="32" scope="row">用户账号:</th>
            <td width="120">
                <input type="text" value="<%=users.getUserNo()%>" name="userNo"/>
            </td>
        </tr>
        <tr>
            <th scope="row">姓名：</th>
            <td><input type="text" value="<%=users.getUserName()%>" name="userName"/></td>
        </tr>
        <tr>
            <th scope="row" >用户密码：</th>
            <td><input type="text" value="<%=users.getUserPwd()%>" name="userPwd"/></td>
        </tr>
        <tr>
            <th scope="row" >手机号：</th>
            <td><input type="text" value="<%=users.getUserTel()%>" name="userTel"/></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="reset" name="button" id="button" value="重置"/> &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" value="修改"/>
            </td>
        </tr>
    </table>
    </br>
    <a href="UsersMes.jsp">返回首页</a>
</form>
</body>
</html>
