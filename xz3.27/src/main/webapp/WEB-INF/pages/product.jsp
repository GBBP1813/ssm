<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="cn.tarena.xz.pojo.Goods"%>
<%@include file="../base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Just Do IT</title>
<link rel="stylesheet" rev="stylesheet"
	href="${ctx }/staticfile/css/global.css" type="text/css" media="all" />
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
		
			for (int i = 0; i <(Integer) request.getAttribute("size") ; i++) {
	            %>
				<div id='sort_product'>
					<%
		Goods goods = (Goods)request.getAttribute("goods" + i);
			
		%>
					<ul>
						<li><p class='gpic'>
								<img id="img1"  width='205' height='154' src="${ctx }/staticfile/<%=goods.getImg()%> " onclick="toDetail(<%=i %>);" />
							</p>
							<input type="hidden" value="<%=goods.getGoodsId() %>" id="goodsId<%=i %>" />
							<script>
								function toDetail(i){
								//从隐藏域中获取商品Id
								var goodsId=document.getElementById("goodsId"+i).value;
								window.location.href="toDetail?goodsId="+goodsId;
								}
							</script>
						</li>
						
						<li><p class='gbt'>
								<a href='ProductXiangxi?name='>品名: <%=goods.getName()%></a>
							</p></li>
						<li><p class='gprice'>
								促销价：<span style="color: #FF6600; font-weight: bold;"></span>￥元<%=goods.getPrice()%>
							</p></li>
						<li><p class='gsale'>
								已售出：<span style='font-weight: bold;'></span>&nbsp;笔<%=goods.getSale()%>
							</p></li>
					</ul>
				</div>
  	   <%
			}
	   %>

				<div id='page_next'>
					<a class="pageLink" href="product.jsp?book=">上一页</a>&nbsp;<a
						class="pageLink" href="product.jsp?book=">下一页</a>&nbsp;
				</div>
			</div>

			<div id="footer">
				<c:import url="bottom.jsp"></c:import>
			</div>

		</div>
</body>
</html>