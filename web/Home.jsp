<%@ page import="entity.Car" %>
<%@ page import="java.util.List" %>
<%@ page import="Dao.CarDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>爬爬二手车直卖网</title>
	<link rel="stylesheet" href="css/1.css" />
	<link rel="stylesheet" href="css/sj.css" />
	<link rel="stylesheet" href="css/bootstrap.css" />
	<link rel="stylesheet" href="css/lym.css" />
	<link rel="stylesheet" href="css/banner.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/showCar.css" />

	<script src="js/banner.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>

</head>

<%
	List<Car> cars= new CarDao().getAllCar();
	if(cars == null){
		cars = new ArrayList<>();
	}
%>

<body>
<jsp:include page="navbar.jsp" flush="true"/>
<div style="max-width: 132rem;margin: 0 auto">
	<!--使用该插件请查看根目录《使用方法.txt》-->


	<!--主要内容》》》-->
	<div class="banners">

		<!--受保护块，不建议修改》》》-->

		<div class="number">
			<div class="numbers"></div>
			<div style="clear: both;"></div>
		</div>
		<!--《《《受保护块，不建议修改-->

		<!--onlick事件调用函数link(参数1，参数2)>>>参数1:跳转链接; 参数2:跳转方式（true:在新的窗口打开链接,false:在当前窗口打开链接）-->
		<div class="banner_img">

			<!--在此位置内添加img标签即可>>>-->
			<img class="banner_img1" src="img/轮播图1.jpg" onclick="link('http://www.baidu.com',true)">
			<img class="banner_img2" src="img/轮播图2.jpg" onclick="link('http://www.baidu.com',false)">
			<img class="banner_img3" src="img/轮播图3.jpg" onclick="link('http://www.baidu.com',true)">
			<!--<<<在此位置内添加img标签即可-->

		</div>

		<!--此段代码不可移动位置-->
		<script type="text/javascript">
			loads();
		</script>
		<!--此段代码不可移动位置-->

	</div>
	<!--《《《主要内容-->

</div>

	<table id="tab" class="showcar" cellpadding="1" cellspacing="1" align="center" >
		<tr align="center" class="title">
			<td align="center">车辆图片</td>
			<td align="center">车辆编号</td>
			<td align="center">车型</td>
			<td align="center">配置</td>
			<td align="center">购买日期</td>
			<td align="center">行驶里程</td>
			<td align="center">标价</td>
		</tr>
		<%
			int i =0 ;
			for (Car car:cars){
				i++;
		%>
		<tr align="center">
			<td><img src="<%=car.getImg_url()%>"></td>
			<td onmouseover="this.style.backgroundColor='white';" onmouseout="this.style.backgroundColor='#cccccc';" align="center"><%=car.getCarNo()%></td>
			<td onmouseover="this.style.backgroundColor='white';" onmouseout="this.style.backgroundColor='#cccccc';" align="center"><%=car.getCartype()%></td>
			<td onmouseover="this.style.backgroundColor='white';" onmouseout="this.style.backgroundColor='#cccccc';" align="center"><%=car.getDispose()%></td>
			<td onmouseover="this.style.backgroundColor='white';" onmouseout="this.style.backgroundColor='#cccccc';" align="center"><%=car.getBuyData()%></td>
			<td onmouseover="this.style.backgroundColor='white';" onmouseout="this.style.backgroundColor='#cccccc';" align="center"><%=car.getMileage()%></td>
			<td onmouseover="this.style.backgroundColor='white';" onmouseout="this.style.backgroundColor='#cccccc';" align="center"><%=car.getPrice()%></td>
			<td><a href="carMesAction?carNo=<%=car.getCarNo()%>">查看</a></td>
		</tr>
		<%	if (i==8){
			break;
		}
		}%>
		</br>
	</table>





	<div style="position: relative">
		<img src="img/广告.jpg" class="sj_img" style="margin-left: 110px;margin-top: 30px;filter: blur(5px);height: 450px;width: 1300px;	">
		<div style="position: absolute;left: 240px;top: 50px;">
			<p style="font-size: 25px;font-weight: bold;color: white;margin-top: 50px"><span></span>买车&卖车流程</p>
			<div class="sj_line"></div>
			<p style="font-size: 20px;font-weight: bold;color: white;margin-top: 80px"><span></span>预约看车->专人带看->签署合同->完成交易</p>
			<div class="sj_line2"></div>
			<p style="font-size: 20px;font-weight: bold;margin-top: 80px;color: white"><span></span>在线登记->全网代售->买家看车->签署合同->交易完成</p>
			<div class="sj_line2"></div>
		</div>
	</div>

	<section id="call_me" style="margin-top: 20px">
		<div class="">
			<div class="container">
				<div class="row">
					<h1 style="text-align: center;font-size: 25px;font-weight: 400">爬爬问答</h1>
					<div id="product" class="col-md-5 sj_font">
						<h3 style="font-size: 20px">问：在爬爬二手车上买二手车可以办理分期吗？</h3>
						<h4>可以，目前用户可以通过与爬爬合作的机构进行分期购车。具体请参见车辆详情页，也可直接拨打爬爬金融客服热线<span style="color: red;">4008-823-823</span>进行咨询。</h4>
						<div class="sj_line3"></div>
						<h3 style="font-size: 20px">问：爬爬二手车的车辆异地可以看车吗？</h3>
						<h4>可以，不过请您在异地看车之前务必先和我们的销售取得联系，确认车辆的在售情况，以免您异地看车时出现车辆已售的情况耽误您的时间。</h4>
						<div class="sj_line3"></div>
						<h3 style="font-size: 20px">问：爬爬二手车的优势？</h3>
						<h4>爬爬二手车展示车源经过259项授权检测，售出车源将依据合同约定享受平台售后保障，最高2年/4万公里。如发现售出车源是重大事故车、火烧车、水泡车、命案车，30天内可退。</h4>
						<div class="sj_line3"></div>
					</div>

					<div class="col-md-2"></div>
					<div class="col-md-5 sj_font" id="problem">
						<h3 style="font-size: 20px">关于交易安全及款项支付的重要提示：</h3>
						<div class="sj_line3"></div>
						<h4>1、为保障交易安全，在爬爬二手车进行交易必须签署正式的电子交易合同。交易合同签署过程中，请您务必提供所需交易资料和信息，仔细观看签约告知视频，严格进行人脸识别，认真阅读合同后确认签署。</h4>
						<h4>2、爬爬二手车禁止任何爬爬工作人员以现金、个人微信、个人支付宝、个人银行账户刷卡或转账等方式直接收取您任何款项（包括但不限于服务费、意向金、车辆价款等）。</h4>
						<h4>3、爬爬二手车显着提示：交易过程中所涉及的所有款项，您均应通过爬爬二手车提供的官方收款渠道（官方微信、官方支付宝、官方POS刷卡或对公账户转账）进行支付。</h4>
						<h4>4、如您发现爬爬工作人员违规操作，您应拒绝并及时向爬爬二手车进行投诉举报（投诉举报邮箱：<span style="color: red;">2391660155@qq.com</span>），否则您须自行承担由此造成的任何损失。</h4>
					</div>
				</div>
			</div>
		</div>
	</section>

</div>
<section id="webfoot1">
	<div class="container">
		<div class="col-md-4">
			<img src="img/爬爬logo.png" class=" webfoot1_img" alt="" />
		</div>
		<div class="col-md-4 webfoot1_font">
			<p class="one"><span ></span> 邮箱：2391660155@qq.com</p>
			<p><span ></span> 手机：18267163425</p>
			<p><span ></span> 微信：yyh18969706626</p>
		</div>
		<div class="col-md-4 webfoot1_font">
			<p><span ></span> 固定电话：0575-123456789</p>
		</div>
	</div>
</section>
<section id="webfoot2">
	<!-- 	<div class="container ">
            <div class="webfoot2_font">
                <p class="col-md-2"><a href="../网页/首页.html">首页</a> </p>
                <p class="col-md-2"><a href="../网页/世界简史.html">发展历程</a> </p>
                <p class="col-md-2"><a href="../网页/风格.html">风格</a></p>
                <p class="col-md-2"><a href="../网页/设计流派1.html">设计流派</a></p>
                <p class="col-md-3"><a href="../网页/联系我们.html">联系我们</a></p>
            </div>
        </div> -->
</section>
</body>
</html>
