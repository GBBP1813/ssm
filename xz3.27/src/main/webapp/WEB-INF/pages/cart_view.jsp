<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312" import="cn.tarena.xz.pojo.Goods"%>
    <%@include file="../base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>Just Do IT</title>
<link rel="stylesheet" rev="stylesheet" href="${ctx }/staticfile/css/global.css" type="text/css" media="all" />
</head>
<body>
	<%double allAllMoney = 0; 
	  int index = 0; 
	%>
		<div id="page">
			<div id="header">
				<c:import url="header.jsp"></c:import>
       		</div>
			
			<div id="left_column">
				<c:import url="left_column.jsp"></c:import>
			</div>
			<div id="center_column">
					<div id="empty">
						<h3>���Ĺ��ﳵ���ǿյģ�</h3>
						<h3>�Ͻ��ж��ɣ�</h3>
					</div>
				<img src="${ctx }/staticfile/images/shopping_card.gif" />
				<div id="cart_tb">
						<table>
							
							<tr>
								<td width="10%"><span style="color:#696969;size:13;font-weight:bold;">���</span></td>
								<td width="30%"><span style="color:#696969;size:13;font-weight:bold;">��Ʒ����</span></td>
								<td width="15%"><span style="color:#696969;size:13;font-weight:bold;">���ۣ�Ԫ��</span></td>
								<td width="20%"><span style="color:#696969;size:13;font-weight:bold;">����</span></td>
								<td width="20%"><span style="color:#696969;size:13;font-weight:bold;">С�ƣ�Ԫ��</span></td>
								<td width="20%"><span style="color:#696969;size:13;font-weight:bold;">ɾ��</span></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							
							</tr>
							<%
				 				for(int i=0;i<(Integer)request.getAttribute("size");i++){
				 			%>
				 			<%
                            	Goods goods=(Goods)request.getAttribute("goods"+i);
                            %>		
								<tr>
									<td><span id="goodsId<%=i %>"><%=goods.getGoodsId() %></span></td>
									<td><%=goods.getName() %><a href="" ></a></td>
									<td><span id="price<%=i %>"><%=goods.getPrice() %></span></td>
									<td><span id="num<%=i %>"><%=request.getAttribute("count"+i) %></span></td>
									<td>
										<span>��</span>
										<span class="totle_information" id="total<%=i %>" name="total"></span>
									</td>
									<td><a href="javascript:;" onclick="del(<%=i %>);">ɾ��</a></td>
								</tr>
							<%
				 				}
                            %>			
						</table>
						<div class="page">
            	<!-- ͨ�������������ѡ��Ӧ����ʾ����Ŀ -->
            	<input type="hidden" value="${beforeSize }" id="currentNum"/>
            	<% System.out.print(beforeSize) %>
            	ÿҳ��ʾ��<select name="currentSize" id="currentSize" onchange="changeCurrentSize();">
            		<option value="3" id="o1">3</option>
            		<option value="5" id="o2">5</option>
            		<option value="8" id="o3">8</option>
            		<option value="10" id="o4">10</option>
            	</select>
            	
            	
            	<c:if test="${currentPage==1 }">
            		<a href="#">��һҳ</a>
            	</c:if>
            	<c:if test="${currentPage!=1 }">
            		<a href="toCart?page=${currentPage-1 }&currentSize=${beforeSize }">��һҳ</a>
            	</c:if>
            	<c:forEach var="i" begin="1" end="${pages }">
            		<c:if test="${currentPage==i }">
            			<a href="#" style="color:blue" >��${i }ҳ</a>
            		</c:if>
            		<c:if test="${currentPage!=i }">
            			<a href="toCart?page=${i }&currentSize=${beforeSize }">��${i }ҳ</a>
            		</c:if>
            	</c:forEach>
            	<c:if test="${currentPage==pages }"><!-- �����һҹ�����ܷ������� -->
            		<a href="#">��һҳ</a>
            	</c:if>
            	<c:if test="${currentPage!=pages }">
            		<a href="toCart?page=${currentPage+1 }&currentSize=${beforeSize }">��һҳ</a>
            	</c:if>
            </div>
					</div>
				<div id="cart_tt">	
					�ϼ��ܽ�<span id="totalPrice" style="font-size:18px;color:#f60;"></span>Ԫ</td>
				</div>
				<div id="cart_lk">
					<a href="${ctx }/goods/toProduct">��������</a> | <a href="JieSuan?qian=">ȥ����̨����</a> | <a href="${ctx }/goods/toDeleteall">��չ��ﳵ</a> 
				</div>
			
			</div>
			<div id="footer">
				<c:import url="bottom.jsp"></c:import>
			</div>
		</div>
	  <script src="${ctx }/staticfile/js/cart.js"></script>
</body>
</html>