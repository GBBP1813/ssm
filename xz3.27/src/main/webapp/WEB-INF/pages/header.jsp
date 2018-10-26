<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="cn.tarena.xz.pojo.User" %>
<%@include file="../base.jsp" %> 
<script>
function openWin(url,width,height){
var phxWin=window.open(url,'','width='+width+',height='+height+',left='+(screen.width-width)/2+',top='+(screen.height-height)/2+'');
}
</script>
	
	<div id="logo">
		<a href="#"><img src="${ctx }/staticfile/images/logo.png" border= "0 " width="500" height="150"/></a>
	</div>
	
	<div id="header_right">
	<%
	 if(session.getAttribute("user")!=null){
		 /* User user=(User)session.getAttribute("user");
			
			String name=user.getUserName(); */
			String name=((User)session.getAttribute("user")).getUserName();
		 
       %><span style='color:red'>欢迎光临,<%=name %></span>
			&nbsp;&nbsp;<a href="${ctx }/user/toLogout"">注销</a><%
			
		 
	 }
	 else{
		 %><a href="${ctx }/user/toRegister">注册</a>/<a href="${ctx }/user/toLogin">登陆</a>
			<span id = "usern" value="${usern }"></span><%
	 }
	%>
		
		
		
  
		<br>
		<img src="${ctx }/staticfile/images/dh_5.png"/><a onClick="openWin('contact.jsp',300,200)" style="cursor:hand" >联系我们</a> 
		<img src="${ctx }/staticfile/images/order.png" />&nbsp;<a href="${ctx }/goods/toCart">购物车</a>
	</div>

	<div id="headermenu">

		<ul id="menu">
		<li>
			<a class="li" href="${ctx }/toIndex"><img src="${ctx }/staticfile/images/dh_1.png" border= "0 "/>&nbsp首页</a>
		</li>
		<li>
			<a class="li" href="#" ><img src="${ctx }/staticfile/images/dh_2.png" border= "0 "/>&nbsp商店公告</a>
		</li>
		
		<li>
			<a class="li" href="${ctx }/goods/toProduct" ><img src="${ctx }/staticfile/images/dh_3.png" border= "0 "/>&nbsp全部商品</a>
		</li>
		
		<li>
			<a class="li" href="pay.jsp" ><img src="${ctx }/staticfile/images/dh_4.png" border= "0 "/>&nbsp付款方式</a>
		</li>
		
		<li>
			<a class="li" href="#"><img src="${ctx }/staticfile/images/dh_5.png" border= "0 "/>&nbsp关于我们</a>
		</li>
		
		<li>
			<a class="li" href="#" ><img src="${ctx }/staticfile/images/dh_6.png" border= "0 "/>&nbsp在线留言</a>
		</li>
		

		</ul>
	</div>
	
	<div id="search">
		<form id="form1" name="search" method="post" action="Serch_this">
			<input type="text" name="textfield" style="color:#a4a4a4;vertical-align:middle;" value="请输入关键字"  onfocus="this.value=''" />&nbsp
			<input name="imageField" type="image" align="absmiddle" src="${ctx }/staticfile/images/search.gif" />
		</form>
	</div>