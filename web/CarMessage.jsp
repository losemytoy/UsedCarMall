<%@ page import="entity.Car" %><%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2020/5/31
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>车辆信息浏览&购买</title>
    <style>
        img{
            height:400px;
            width: 600px;
        }
        h2{

            font-weight: bold;
        }
        h4{
            padding-top: 20px;
        }
        input{
            height: 30px;
            width: 70px;
        }
    </style>
</head>
<%
    Car car = (Car) request.getAttribute("carMes");
%>
<body>
<jsp:include page="navbar.jsp" flush="true"/>
<div style="padding-top: 130px;padding-bottom: 30px" class="container">
    <div class="col-md-5">
        <img src="<%=car.getImg_url()%>">
    </div>
    <div class="col-md-2"></div>
    <div class="col-md-5" style="margin-top: -20px">
        <form>
            <h2></h2><%--车辆名称型号--%>
            <h4>车辆编号：<span><%=car.getCarNo()%></span></h4>
            <h4>购买时间：<span><%=car.getBuyData()%></span></h4>
            <h4>车辆颜色：<span><%=car.getColor()%></span></h4>
            <h4>车辆行驶里程：<span><%=car.getMileage()%></span></h4>
            <h4>车辆相关配置：<span><%=car.getCondition()%></span></h4>
            <h4 style="padding-bottom: 20px">全款价：<span><%=car.getPrice()%></span></h4>
            <input type="button" value="购买" style="margin: 0 25%">
            <input type="button" value="预约看车" href="">

        </form>
    </div>
</div>
<jsp:include page="webfoot.jsp" flush="true"/>
</body>
</html>
