<%--
  Created by IntelliJ IDEA.
  User: Lin
  Date: 2020/5/31
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>退出</title>
</head>
<body>
<% session.invalidate(); %>
<jsp:forward page="UserLogIn.jsp"></jsp:forward>
</body>
</html>
