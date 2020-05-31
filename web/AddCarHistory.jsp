<%@ page import="java.util.ArrayList" %>
<%@ page import="entity.Car" %>
<%@ page import="java.util.List" %>
<%@ page import="Dao.CarDao" %>
<%@ page import="org.apache.struts2.ServletActionContext" %><%--
  Created by IntelliJ IDEA.
  User: Lin
  Date: 2020/5/30
  Time: 9:18
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
    <title>车辆发布历史</title>
</head>

<%
    List<Car> cars= new CarDao().getAllCarByUser();
    if(cars == null){
        cars = new ArrayList<>();
    }
%>
<%--<script type="text/javascript">--%>
<%--    function windows1() {--%>
<%--        window.open("modCar.jsp","_blank","toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=500, height=300,left=550,top=230")--%>
<%--    }--%>
<%--</script>--%>

<body>
<jsp:include page="navbar.jsp" flush="true"/>
<table style="margin-top: 150px;width: 100%" cellpadding="1" cellspacing="1" align="center">
    <tr>
        <td valign="top" align="center" border="">
            <p align=center style="font-size: 25px;">已发布车辆信息</p>
            <table width="100%" border="" cellpadding="1" cellspacing="1" bgcolor="#FECE62">
                <tr align="center">
                    <td align="center">车辆编号</td>
                    <td align="center">车型</td>
                    <td align="center">配置</td>
                    <td align="center">车辆颜色</td>
                    <td align="center">购买日期</td>
                    <td align="center">行驶里程</td>
                    <td align="center">车况</td>
                    <td align="center">标价</td>
                    <td align="center">操作</td>
                </tr>
                <%
                    for (Car car:cars){
                %>
                <tr bgcolor="#FFFFFF" align="center">
                    <td align="center">
                        <p style="max-width: 150px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;"><%=car.getCarNo()%></p>
                    </td>
                    <td align="center">
                        <%=car.getCartype()%>
                    </td>
                    <td align="center">
                        <%=car.getDispose()%>
                    </td>
                    <td align="center">
                        <%=car.getColor()%>
                    </td>
                    <td align="center">
                        <%=car.getBuyData()%>
                    </td>
                    <td align="center">
                        <%=car.getMileage()%>
                    </td>
                    <td align="center">
                        <%=car.getCondition()%>
                    </td>
                    <td align="center">
                        <%=car.getPrice()%>
                    </td>
                    <td align="center">
                        <a href="modCarAction?carNo=<%=car.getCarNo()%>">修改</a>&nbsp;&nbsp;
                        <a href="deleteCarAction?carNo=<%=car.getCarNo()%>">下架</a>
                    </td>
                </tr>
                <% }%>
                <a href="AddCar.jsp">上架车辆</a>
            </table>
        </td>
    </tr>
</table>
</body>
</html>
