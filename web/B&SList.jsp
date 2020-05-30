<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 89412
  Date: 2019/6/2
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    Object username = session.getAttribute("userId");
    if(null == username){
        response.sendRedirect("UserLogIn.jsp");
    }
%>
<html>
<head>
    <title>员工信息查询</title>
    <style>
        form{
            padding: 50px;
        }
        div{
            text-align: center;
        }
    </style>
</head>
<body>
<jsp:include page="navbar.jsp" flush="true"/>
<div>
    <table>
        <input type="text">
    </table>
</div>
<p style="text-align: center; font-size: 40px; font-weight: bold;margin-top: 100px">订单信息查询</p>
<form action="searchEmphello.action" style="text-align: center;">
    订单编号查询：<input type="text" name="emps.empNo" id="">
    <input type="submit" value="查询">
</form>
<div style="margin-left: 200px">
    <table class="col-md-10" style=" text-align: center;margin-top: 50px;" cellpadding="1" cellspacing="1" align="center;">
        <tr>
            <td valign="top" align="center" border="">
                <p align=center style="font-size: 25px;">订单信息</p>
                <table width="100%" border="" cellpadding="1" cellspacing="1" bgcolor="#FECE62">
                    <tr align="center">
                        <td align="center">职工号</td>
                        <td align="center">部门号</td>
                        <td align="center">姓名</td>
                        <td align="center">性别</td>
                        <td align="center">年龄</td>
                        <td align="center">职称</td>
                        <td align="center">工资</td>
                        <td align="center">奖金</td>
                        <td align="center">操作</td>
                    </tr>
                    <c:forEach var="emp" items="${listEmp}">
                        <tr align="center">
                            <td align="center"><p style="max-width: 150px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;"></p></td>
                            <td align="center"></td>
                            <td align="center"></td>
                            <td align="center"></td>
                            <td align="center"></td>
                            <td align="center"></td>
                            <td align="center"></td>
                            <td align="center"></td>
                            <td align="center">
                                <a href="">修改</a>&nbsp;&nbsp;
                                <a href="">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </br>
                    <a href="Home.jsp" style="float: right;margin-top: -50px">返回首页</a>
                </table>
            </td>
        </tr>
    </table>
</div>

</body>
</html>
