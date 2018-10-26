<%@page import="sun.print.PeekGraphics"%>
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
			
					<%
		 Goods goods = (Goods)request.getAttribute("goods");
		 %>
		 
			<div id="center_column">				
				<div id=item_img>
					<img width="300px" height="225px" src="${ctx }/staticfile/<%=goods.getImg()%>" />
				</div>
				
				
				<div id=item_other>
						品&nbsp;&nbsp;&nbsp;&nbsp;名：&nbsp;<span  style="font-size:15px;font-weight:bold;"><%=goods.getName() %></span><br>
						原&nbsp;&nbsp;&nbsp;&nbsp;价：&nbsp;<span  style="text-decoration: line-through;"><%=goods.getOneprice() %>元</span><br>
						促&nbsp;&nbsp;&nbsp;&nbsp;销：&nbsp;<span  style="font-size:28px;font-weight:bold;color:#B22222;"></span><%=goods.getPrice() %>元<br>
						售&nbsp;&nbsp;&nbsp;&nbsp;出：&nbsp;<span  style="font-weight:bold;color:#CC6600;"></span><%=goods.getSale() %>件<br>
						数&nbsp;&nbsp;&nbsp;&nbsp;量：&nbsp;<input type="text" name="quantity" size="6" style="color:#66668C;" value="1" id="text">件<p>
						<img src="${ctx }/staticfile/images/buy_button.png" />&nbsp;&nbsp;
					
						<input type="hidden" name="id" value='<%=goods.getGoodsId() %>' id="goodsId">
						<input type="hidden" name="name" value="">
						<input type="hidden" name="price" value="">
						<input  type="image" src="${ctx }/staticfile/images/shopping_button.png" name="submit" value="加入购物车" onclick="addCart();">
						<%-- <img src="${ctx }/staticfile/images/shopping_button.png"  onclick="addCart();" />&nbsp;&nbsp; --%>
						 <script >
          	function addCart(){
          		var goodsId = document.getElementById("goodsId").value;
          		var count = document.getElementById("text").value;
          		window.location.href="addCart?goodsId="+goodsId +"&count="+count;
          		alert("加入购物车成功!");
          	}
          </script>
				</div>
				<div id=item_details><img src="${ctx }/staticfile/images/details.gif" /></div>
				<%-- <div id="item_parameter">
					<div style="float: left;width:230px;color:#404040;">&nbsp;&nbsp;&nbsp;货号：<jsp:getProperty property="id" name="productData"/></div><div style="float: left;width:230px;color:#404040;">类别：<jsp:getProperty property="sort" name="productData"/></div><div style="float: left;width:230px;color:#404040;">扇面材质:</div><br>
					<div style="float: left;width:230px;color:#404040;">&nbsp;&nbsp;&nbsp;扇骨材质：<jsp:getProperty property="body" name="productData"/></div><div style="float: left;width:230px;color:#404040;">扇骨数量：<jsp:getProperty property="quantity" name="productData"/>根</div><div style="float: left;width:230px;color:#404040;">扇骨长度：CM</div>
				</div> --%>
				<div id="item_show_img">
					<img src="${ctx }/staticfile/<%=goods.getSource() %>" />
				</div>
			</div>
			
			<div id="footer">
				<c:import url="bottom.jsp"></c:import>
			</div>
		</div>
	
</body>
</html>