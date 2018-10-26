<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="cn.tarena.xz.pojo.Goods"%>
<%@include file="../base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Just Do IT</title>
<link rel="stylesheet" rev="stylesheet" href="${ctx }/staticfile/css/global.css" type="text/css" media="all" />
</head>
<body>
	<div id="page">
		<div id="header">
			<c:import url="header.jsp"></c:import>
		</div>

		<div id="left_column">
			<c:import url="left_column.jsp"></c:import>
		</div>
			
		<div id="center_column">		
			<div class="divBorder">
				<img src="${ctx }/staticfile/images/all_fans.gif" /><br>
 				<%
				for (int i = 0; i <9 ; i++) {
	            %>
				<div id='sort_product'>
					<%
					Goods goods = (Goods)request.getAttribute("goods" + i);
					%>
					<ul>
						<input type="hidden" value="<%=goods.getGoodsId() %>" id="goodsId<%=i %>" />
						<li><p class='gpic'><a><img width='205' height='154' src="${ctx }/staticfile/<%=goods.getImg() %>" onclick="toDetail(<%=i %>);"></a></p></li> 
						<li><p class='gbt'><a href='ProductXiangxi?name='>品名：<%=goods.getName()%></a></p></li>
						<li><p class='gprice'>促销价：<span style="color:#FF6600;font-weight:bold;"></span>￥<%=goods.getPrice()%>元</p></li>
						<li><p class='gsale'>已售出：<span style='font-weight:bold;'></span>&nbsp;<%=goods.getSale()%>笔</p></li>
					</ul>
					<script>
						function toDetail(i){
						//从隐藏域中获取商品Id
							var goodsId=document.getElementById("goodsId"+i).value;
							window.location.href="toDetail?goodsId="+goodsId;
						}
					</script>
				</div>	
				<%} %>
<!-- 				<div id='sort_product'>
					<ul>
						<li><p class='gpic'><a href='item.jsp'><img width='205' height='154' src="Picture/2.jpg"></a></p></li> 
						<li><p class='gbt'><a href='item.jsp'>品名：油漆边双色龙骨扇_红色 </a></p></li>
						<li><p class='gprice'>促销价：<span style="color:#FF6600;font-weight:bold;"></span>￥18元</p></li>
						<li><p class='gsale'>已售出：<span style='font-weight:bold;'>14</span>&nbsp;笔</p></li>
					</ul>
				</div>
				<div id='sort_product'>	
					<ul>
						<li><p class='gpic'><a href='item.jsp'><img width='205' height='154' src="Picture/3.jpg"></a></p></li> 
						<li><p class='gbt'><a href='item.jsp'>品名：油漆边双色龙骨扇_蓝色 </a></p></li>
						<li><p class='gprice'>促销价：<span style="color:#FF6600;font-weight:bold;"></span>￥18元</p></li>
						<li><p class='gsale'>已售出：<span style='font-weight:bold;'>87</span>&nbsp;笔</p></li>
					</ul>
				</div>
				<div id='sort_product'>
					<ul>
						<li><p class='gpic'><a href='item.jsp'><img width='205' height='154' src="Picture/4.jpg"></a></p></li> 
						<li><p class='gbt'><a href='item.jsp'>品名：油漆边双色龙骨扇_紫色 </a></p></li>
						<li><p class='gprice'>促销价：<span style="color:#FF6600;font-weight:bold;"></span>￥16元</p></li>
						<li><p class='gsale'>已售出：<span style='font-weight:bold;'>13</span>&nbsp;笔</p></li>
					</ul>
				</div>
				 --></div>	
				
					<div id='page_next'><a class="pageLink" href="sort.jsp?book=&id=">上一页</a>&nbsp;<a class="pageLink" href="sort.jsp?book=&id=">下一页</a>&nbsp;</div>
			</div>
					
		<div id="footer">
			<c:import url="bottom.jsp"></c:import>
		</div>
		
	</div>
</body>
</html>