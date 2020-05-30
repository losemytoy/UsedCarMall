<%--
  Created by IntelliJ IDEA.
  User: 林
  Date: 2019/6/25
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% session.invalidate(); %>
<jsp:forward page="admin_login.jsp"></jsp:forward>
</body>
</html>
