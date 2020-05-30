<%@ page import="entity.Car" %><%--
  Created by IntelliJ IDEA.
  User: Lin
  Date: 2020/5/30
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>车辆信息修改</title>
</head>
<%
    Car car = (Car) request.getAttribute("modCar");
%>
<body>
<form action="updateCarAction.action" style="text-align: center;">
    <table align="center" width="500" border="1" cellpadding="0" cellspacing="0">
        <tr>
            <th width="32" scope="row">车辆编号:</th>
            <td width="120">
                <input type="text" value="<%=car.getCarNo()%>" name="carNo"/>
            </td>
        </tr>
        <tr>
            <th scope="row">车型：</th>
            <td><input type="text" value="<%=car.getCartype()%>" name="type"/></td>
        </tr>
        <tr>
            <th scope="row" >配置：</th>
            <td><input type="text" value="<%=car.getDispose()%>" name="dispose"/></td>
        </tr>
        <tr>
            <th scope="row" >车辆颜色：</th>
            <td><input type="text" value="<%=car.getColor()%>" name="color"/></td>
        </tr>
        <tr>
            <th scope="row" >购买日期：</th>
            <td><input type="text" value="<%=car.getBuyData()%>" name="buyData"/></td>
        </tr>
        <tr>
            <th scope="row" >行驶里程：</th>
            <td><input type="text" value="<%=car.getMileage()%>" name="mileage"/></td>
        </tr>
        <tr>
            <th scope="row" >车况：</th>
            <td><input type="text" value="<%=car.getCondition()%>" name="condition"/></td>
        </tr>
        <tr>
            <th scope="row" >标价：</th>
            <td><input type="text" value="<%=car.getPrice()%>" name="price"/></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="reset" name="button" id="button" value="重置"/> &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" value="修改"/>
            </td>
        </tr>
    </table>
    </br>
    <a href="Home.jsp">返回首页</a>
</form>
</body>
</html>
