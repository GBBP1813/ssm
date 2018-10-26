<%@page  language="java" pageEncoding="utf-8" %>
<%@include file="../base.jsp" %>

<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <title>首页</title>
  <!-- 引入外部样式 -->
  
  <link  rel="stylesheet" href="${ctx }/staticfile/css/index.css"/>

 </head>
 <body>
  <div class="wrap">

	<!-- <iframe name="content_frame"
		width="100%" height="120px"
		marginwidth=0 marginheight=0
		scrolling="no"
		frameborder="0"
		src="header.html"
	></iframe> -->
	<div height="120px">
		<c:import url="header.jsp"></c:import>
	</div>
	<div class="part main">
		<div class="center">
			<div class="banner-1">
				<!-- onmouseover 鼠标悬停
					 onmouseout  鼠标离开
				-->
				<img id="img1" src="${ctx }/staticfile/img/index/index_banner1.png" alt onmouseover="stopRotate();" onmouseout="startRotate();"/>
			</div>
			<div class="banner-3">
				<div class="banner-3-item i1">
					<img src="${ctx }/staticfile/img/index/ge1.png" alt  onclick="toDetail();" />
					<div class="introduce">
						<h3>联想小新Air3</h3>
						<p>设计师独享高端配置</p>
						<input type="hidden" value="2" id="goodsId" />
					</div>
					<script>
						function toDetail(){
							//从隐藏域中获取商品Id
							var goodsId=document.getElementById("goodsId").value;
							
							window.location.href="goods/toDetail?goodsId="+goodsId;
						}
					</script>
				</div>
				<div class="banner-3-item i2">
					<img src="${ctx }/staticfile/img/index/ge2.png" alt />
					<div class="introduce">
						<h3>得力书包Bag</h3>
						<p>给你满载而归的喜悦</p>
					</div>
				</div>
				<div class="banner-3-item i3">
					<img src="${ctx }/staticfile/img/index/ge3.png" alt />
					<div class="introduce">
						<h3>刀鱼炖排骨</h3>
						<p>吃饱了才有力气学习</p>
					</div>
				</div>
			</div>
			<div class="banner-1 banner-down">
				<img src="${ctx }/staticfile/img/index/index_guild.png" alt />
			</div>
			<div class="study">
				<div class="study-title">
					<h3>学习用品</h3>
					<p>爱生活，享品质工作</p>
				</div>
				<div class="study-table">
					<div class="left">
						<img src="${ctx }/staticfile/img/index/kywb.png" alt />
					</div>
					<div class="right">
						<div class="r-1">
							<img src="${ctx }/staticfile/img/index/r-1.png" alt />
						</div>
						<div class="r-2">
							<img src="${ctx }/staticfile/img/index/r-2.png" alt />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<object style="border:0px"
		type="text/x-scriptlet"
		width=100% height=190px
		data="service.jsp"
	></object>

	<object style="border:0px"
		type="text/x-scriptlet"
		width=100% height=190px
		data="footer.jsp"
	></object>
  </div>

 <script src="${ctx }/staticfile/js/index.js"></script>

 </body>
</html>
