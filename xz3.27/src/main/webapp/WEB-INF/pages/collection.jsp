<%@page language = "java" pageEncoding = "utf-8" %>
<%-- <%@page import = "pojo.Goods" %> --%>
<!-- 引入jstl标签 -->
<%@taglib uri = "http://java.sun.com/jsp/jstl/core"  prefix = "c"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <title>收藏</title>
  
  <link  rel="stylesheet" href="css/public.css"/>
  <link  rel="stylesheet" href="css/collect.css"/>
	<style>
	
	.shopping {
		width: 1000px;
		margin: 0px auto;
	}
	.showGoods {
		width: 220px;
		height: 220px;
		float: left;
	}
	.showGoods img {
		width: 200px;
		height: 200px;
		
	}
	.first {
		margin-left: 20px;
	}
	</style>
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
	
	<div height = "120px">
 		<c:import url = "header.jsp"></c:import>
 	</div>
 	
	<div class="part collect">
		<div class="center">
			<div class="soucang">
				<a href="#">收藏商品</a>
				<span class="line"></span>
				<a href="#">收藏店家</a>
			</div>
			<div class="guanli">
				<div class="guanli-scj">
					<p>管理收藏夹</p>
				</div>
				<div class="guanli-qc">
					<p>清空失效商品</p>
				</div>
			</div>
			<div class="shopping">
			<!-- 
				c:forEach  循环标签
					items 代表request中绑定的集合或者数组的名称
					var  给集合或数组中的元素去别名，方便后续使用
			-->
				<c:forEach items = "${goodses}" var = "goods">
				<div class = "showGoods">
					<img src="${goods.pic} " alt />
					<p>${goods.title }</p>
					<a href="#" class="a1">￥${goods.price }</a>
					<a href="#" class="a2">加入购物车</a>
				</div>
				</c:forEach>
				
				<!--<div>
					<img src="img/collect/product_img2.png" alt />
					<p>戴尔(DELL)魔方15MF Pro-R2505TSS灵越超霸笔记本电脑</p>
					<a href="#" class="a1">￥4000</a>
					<a href="#" class="a2">加入购物车</a>
				</div>
				<div>
					<img src="img/collect/product_img3.png" alt />
					<p>戴尔(DELL)魔方15MF Pro-R2505TSS灵越超霸笔记本电脑</p>
					<a href="#" class="a1">￥4000</a>
					<a href="#" class="a2">加入购物车</a>
				</div>
				<div>
					<img src="img/collect/product_img4.png" alt />
					<p>戴尔(DELL)魔方15MF Pro-R2505TSS灵越超霸笔记本电脑</p>
					<a href="#" class="a1">￥4000</a>
					<a href="#" class="a2">加入购物车</a>
				</div>
				<div>
					<img src="img/collect/product_img5.png" alt />
					<p>戴尔(DELL)魔方15MF Pro-R2505TSS灵越超霸笔记本电脑</p>
					<a href="#" class="a1">￥4000</a>
					<a href="#" class="a2">加入购物车</a>
				</div>
				<div>
					<img src="img/collect/product_img6.png" alt />
					<p>戴尔(DELL)魔方15MF Pro-R2505TSS灵越超霸笔记本电脑</p>
					<a href="#" class="a1">￥4000</a>
					<a href="#" class="a2">加入购物车</a>
				</div> -->

			</div>
			<button><a href = "upPage.action">上一页</a></button>
			<button><a href = "downPage.action">下一页</a></button>
		</div>
	</div>

	<object style="border:0px"
		type="text/x-scriptlet"
		width=100% height=190px
		data="service.html"
	></object>

	<object style="border:0px"
		type="text/x-scriptlet"
		width=100% height=190px
		data="footer.html"
	></object>
  </div>
  </div>
 </body>
</html>
