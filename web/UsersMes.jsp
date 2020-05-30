<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.Array" %>
<%@ page import="entity.Users" %>
<%@ page import="Dao.UserDao" %><%--
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
    <title>用户管理</title>
</head>
<%
    List<Users> users= new UserDao().getALLusers();
    if(users == null){
        users = new ArrayList<>();
    }
%>
<body>
<jsp:include page="adminIndex.jsp" flush="true" />
<table class="col-md-10" style="margin-top: 120px;" cellpadding="1" cellspacing="1" align="center">
    <tr>
        <td valign="top" align="center" border="">
            <p align=center style="font-size: 25px;">用户信息</p>
            <table width="100%" border="" cellpadding="1" cellspacing="1" bgcolor="#FECE62">
                <tr align="center">
                    <td align="center">用户账户</td>
                    <td align="center">姓名</td>
                    <td align="center">用户密码</td>
                    <td align="center">手机号</td>
                    <td align="center">操作</td>
                </tr>
                <%
                    for (Users user1:users){
                %>
                <tr bgcolor="#FFFFFF" align="center">
                    <td align="center">
                        <p style="max-width: 150px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;"><%=user1.getUserNo()%></p>
                    </td>
                    <td align="center">
                        <%=user1.getUserName()%>
                    </td>
                    <td align="center">
                        <%=user1.getUserPwd()%>
                    </td>
                    <td align="center">
                        <%=user1.getUserTel()%>
                    </td>
                    <td align="center">
                        <a href="gotoupdataUsershello?userNo=<%=user1.getUserNo()%>">修改</a>&nbsp;&nbsp;
                        <a href="deleteUsershello?userNo=<%=user1.getUserNo()%>">删除</a>
                    </td>
                </tr>
                <% }%>
            </table>
        </td>
    </tr>
</table>
</body>
</html>
