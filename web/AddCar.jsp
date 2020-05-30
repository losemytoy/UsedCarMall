<%--
  Created by IntelliJ IDEA.
  User: Lin
  Date: 2020/5/26
  Time: 19:41
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
    <title>车辆信息发布</title>
    <link rel="stylesheet" href="css/addCar.css" type="text/css">
</head>
<body style="background-color: #f9f9f9;">
    <jsp:include page="navbar.jsp" flush="true"/>
        <div id="secpart" style="padding-top: 100px">
            <form action="addCarAction.action" id="addcarform" method="post" enctype="multipart/form-data">
                <div class="inputbox">
                    <label for="carNo">车辆编号</label>
                    <input type="text" name="carNo" id="carNo" class="input" tabindex="1" disabled="true" value="自动生成"/>
                    <label for="type">车型</label>
                    <input type="text" name="type" id="type" class="input" tabindex="2" autocomplete="off" autocomplete="" autofocus="autofocus"/>
                    <label for="dispose">配置</label>
                    <input type="text" name="dispose" id="dispose" class="input" tabindex="3" autocomplete="off" autocomplete="" autofocus="autofocus"/>
                    <label for="color">车辆颜色</label>
                    <input type="text" name="color" id="color" class="input" tabindex="4" autocomplete="off" autocomplete="" autofocus="autofocus"/>
                    <label for="buyData">购买日期</label>
                    <input type="text" name="buyData" id="buyData" class="input" tabindex="5" autocomplete="off" autocomplete="" autofocus="autofocus"/>
                    <label for="mileage">行驶里程</label>
                    <input type="text" name="mileage" id="mileage" class="input" tabindex="6" autocomplete="off" autocomplete="" autofocus="autofocus"/>
                    <label for="condition">车况</label>
                    <input type="text" name="condition" id="condition" class="input" tabindex="7" autocomplete="off" autocomplete="" autofocus="autofocus"/>
                    <label for="price">标价<a href="" class="labellink">关于定价</a></label>
                    <input type="text" name="price" id="price" class="input" tabindex="8" autocomplete="off" autocomplete="" autofocus="autofocus"/>
                    <label for="myFile">车辆图片上传</label>
                    <input type="file" name="myFile" id="myFile"/>
                    <input type="submit" tabindex="9" class="btn" value="开始上传"/>
                </div>
            </form>
        </div>
</body>
</html>
