<%@ page import="entity.Users" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Dao.AdminDao" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.Users" %><%--
  Created by IntelliJ IDEA.
  User: 89412
  Date: 2019/6/2
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>用户信息</title>
</head>
<%
    List<Users> usersList =(List<Users>) request.getAttribute("listUser");
%>
<body>
<jsp:include page="adminIndex.jsp" flush="true"/>
<p style="text-align: center; font-size: 40px; font-weight: bold;">用户信息查询</p>
<form action="searchUsershello.action" style="text-align: center;margin-top: 100px">
    用户帐号：<input type="text" name="users.userNo" id="">
    <input type="submit" value="查询">
</form>
<table class="col-md-10" style="margin-top: 120px;" cellpadding="1" cellspacing="1" align="center">
    <tr>
        <td valign="top" align="center" border="">
            <p align=center style="font-size: 25px;">用户信息</p>
            <table width="100%" border="" cellpadding="1" cellspacing="1" bgcolor="#FECE62">
                <tr align="center">
                    <td align="center">用户账号</td>
                    <td align="center">姓名</td>
                    <td align="center">用户密码</td>
                    <td align="center">用户电话</td>
                    <td align="center">操作</td>
                </tr>
                <c:forEach var="user" items="${listUser}">
                    <tr align="center">
                        <td align="center"><p style="max-width: 150px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">${user.userNo}</p></td>
                        <td align="center">${user.userName}</td>
                        <td align="center">${user.userPwd}</td>
                        <td align="center">${user.userTel}</td>
                        <td align="center">
                            <a href="">修改</a>&nbsp;&nbsp;
                            <a href="">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </br>
            </table>
        </td>
    </tr>
</table>
</body>
</html>
