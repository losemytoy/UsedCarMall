<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2020/5/27
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Object username = session.getAttribute("userId");
    if(null == username){
        response.sendRedirect("UserLogIn.jsp");
    }
%>
<html>
<head>
    <title>车辆价值预估</title>
    <link rel="stylesheet" href="css/sj.css"/>
    <style>
        span{
            display: block;
            text-align: center;
            padding: 30px;
        }
        .sj_font1{
            padding: 20px;
        }
        .sj_font1 h2 {
            text-align: center;
            margin-top: 150px;
        }
        button{
            height: 30px;
            width: 100px;

        }
        div{
            text-align: center;
        }
    </style>
</head>
<body>

    <div>
        <jsp:include page="navbar.jsp" flush="true"/>
    </div>
    <div>
        <form action="addResMesAction.action" class="sj_font1">
            <h2>车辆价值预估预约信息填写</h2>
            <a href="Home.jsp" style="float: right;font-size: 17px;margin-top: -47px;margin-right: 40px">返回首页</a>
            <span class="sj_input" style="margin-top: 40px;">用户ID：<input type="text" href="#" name="userNo" placeholder="请输入用户ID" ></span>
            <span>预约日期：<input type="date" name="bookData"></span>
            <button type="submit" style="margin-top: 20px" >提交</button>
        </form>
    </div>

</body>
</html>
