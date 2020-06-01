<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2020/5/31
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>联系我们</title>
    <style>
        img{
            height: 450px;
            width: 1300px;
        }
    </style>
</head>
<body>
<jsp:include page="navbar.jsp" flush="true"/>
<img src="img/广告2.jpg" style="margin: 6.6% 7.5%">
<section id="call_me" style="padding-bottom: 50px;margin-top: -50px">
    <div class="">
        <div class="container">
            <div class="row">
                <div class="col-md-2"></div>
                <div id="product" class="col-md-5">
                    <h2 style="font-size: 20px">
                        <span></span>
                        &nbsp;
                        联系我们
                    </h2>

                    <address>
                        <p style="padding-top: 35px">
                            <span></span>
                            &nbsp;
                            地址：温州市瓯海区温州商学院
                        </p>
                        <p style="padding-top: 35px">
                            <span></span>
                            &nbsp;
                            联系电话：0575-123456789
                        </p>
                        <p style="padding-top: 35px">
                            <span></span>
                            &nbsp;
                            邮箱：2391660155@qq.com
                        </p>
                    </address>
                </div>
                <div class="col-md-5" id="problem" >
                    <form action="#" method="post">
                        <div class="col-md-12">
                            <h2 style="font-size: 20px">
                                意见
                            </h2>
                        </div>
                        <div class="col-md-12" style="padding-top: 20px">
                            <input type="text" class="problem_input" placeholder="您的名字" />
                        </div>
                        <div class="col-md-12" style="padding-top: 20px">
                            <input type="text" class="problem_input" placeholder="您的邮箱" />
                        </div>
                        <div class="col-md-12" style="padding-top: 20px;">
                            <input class="problem_input" placeholder="反馈内容" style="height: 70px;width: 200px"></input>
                        </div>
                        <div class="col-md-8" style="padding-top: 20px">
                            <input type="submit" class="problem_input" value="提交" style="background-color: slategray;font-size: 16px;font-weight: bold;color: white;height: 30px;width: 60px"/>
                        </div>
                    </form>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="webfoot.jsp" flush="true"/>
</body>
</html>
