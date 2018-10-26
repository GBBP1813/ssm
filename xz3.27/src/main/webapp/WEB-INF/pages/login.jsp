<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="../base.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户登录</title>
<link rel="stylesheet" rev="stylesheet" href="${ctx }/staticfile/css/global.css" type="text/css" media="all" />
</head>

<style>
	
.textBox { 
	width: 100%; 
	margin-bottom: 10px; 
	background: #FFFFFF;
	border: none;
	outline: none;
	padding: 10px;
	font-size: 13px;
	color: #fff;
	text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
	border: 1px solid rgba(0,0,0,0.3);
	border-radius: 4px;
	box-shadow: inset 0 -5px 45px rgba(100,100,100,0.2), 0 1px 1px rgba(255,255,255,0.2);
	-webkit-transition: box-shadow .5s ease;
	-moz-transition: box-shadow .5s ease;
	-o-transition: box-shadow .5s ease;
	-ms-transition: box-shadow .5s ease;
	transition: box-shadow .5s ease;
}
.textBox:focus { box-shadow: inset 0 -5px 45px rgba(100,100,100,0.4), 0 1px 1px rgba(255,255,255,0.2); }
	
.buttonBox{ 
	width: 35%; 
	margin-bottom: 10px; 
	color:#404040;
	background: rgb(0,0,0,0,3);
	border: none;
	outline: none;
	padding: 10px;
	font-size: 13px;
	color: #fff;
	text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
	border: 1px solid rgba(0,0,0,0.3);
	border-radius: 4px;
	box-shadow: inset 0 -5px 45px rgba(100,100,100,0.2), 0 1px 1px rgba(255,255,255,0.2);
	-webkit-transition: box-shadow .5s ease;
	-moz-transition: box-shadow .5s ease;
	-o-transition: box-shadow .5s ease;
	-ms-transition: box-shadow .5s ease;
	transition: box-shadow .5s ease;
}
.buttonBox:focus { box-shadow: inset 0 -5px 45px rgba(100,100,100,0.4), 0 1px 1px rgba(255,255,255,0.2); }
	
</style>

<body>
	<div id="page">
		<div id="header">
			<c:import url="header.jsp"></c:import>    
       	</div>
		
	<div id="div_reg">
       		<h3>会员登录</h3><br>
       		<hr size=1>
	<div id="div_login">
    <div id="div_login_leftimg">
		<img src="${ctx }/staticfile/images/boy.gif" />
	</div>
	<div id="div_login_form" style="width:50%">
		<form action="login.do" method="post">
		<%
           String errInfo = (String) request.getAttribute("errInfo");
                     
        %>
        <span style="color:red"><%=errInfo==null? "":errInfo%></span>
        	<table class="reg_table" align="center" style="margin:auto;width:50%;padding-top:50px;padding-bottom:50px">
			<tr style="width:100%">
				<td><input type="text" class="textBox" name="userName" id="txtName" placeholder="请输入用户名" class="input"></td>
			</tr>
			<tr>
				<td><input type="password" class="textBox" name="pwd" id="passWord" placeholder="请输入密码" class="input"></td>
			</tr>
			<!-- 	<font class="zt2"></font><br>  
			<label for="useName">用户名：</label>
			<br><br>
			<label for="passWord">密&nbsp;&nbsp;&nbsp;码：</label>
			<br><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
			<tr style="width:100%;margin-top:20px">
				<td>
				<div style="margintop:10px;margin-left:15%;margin-right:15%;float:left">
				<a href="toRegister"><img src="${ctx }/staticfile/images/reg_button.gif" border= "0 " />
				</div>
				<div style="margintop:10px;float:left">
          		<input name="imageField" type="image" src="${ctx }/staticfile/images/login_button.gif" />
				</div>
          		</td>
			</tr>
			
      		</a>
      		</table>
         </form>
	</div>
	<div id="div_login_rightimg">
		<img src="${ctx }/staticfile/images/girl.gif" />
	</div>
    </div>
	</div>  	
 <%--    <div id="footer">
		<c:import url="bottom.jsp"></c:import>
	</div> --%>
	</div>
</body>

</html>