<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="../base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Just Do IT</title>
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
			<jsp:include page="header.jsp" />      
       	</div>
       	
       	<div id="div_reg" style="text-align:center">
       		<h3>注册新用户</h3><br>
       		<hr size=1>  
       		<%
			 String errInfo = (String)request.getAttribute("errInfo");
	         %>
       		<div  align="center" style="color: red; ">
	         <%=errInfo==null? "":errInfo%>
			</div>
       		<form action="register.do" method="post">
       		<table class="reg_table" align="center" style="margin:auto;width:50%;padding-top:50px;padding-bottom:50px">
				<tr>
						<td><input class="textBox" autocomplete required minlength="3" maxlength="12" type="text" placeholder="请输入用户名" autofocus id="uname" name = "userName"/>
          					
						</td>
					</tr>
					<tr>
						<td><input class="textBox" autocomplete required minlength="3" maxlength="12" type="text" placeholder="请输入姓名" autofocus id="name" name = "name"/>
          					
						</td>
					</tr>
					<tr>
						<td><input class="textBox" required type="password" minlength="6" maxlength="12" placeholder="请输入密码"  autofocus
			            id="upwd" name = "pwd"/>
			          	
						</td>
					</tr>
					<tr>
						<td><input class="textBox" required type="password" minlength="6" maxlength="12" placeholder="请确认密码"  autofocus
                 		id="upwdconfirm" name = "repwd"/>
          				
						</td>
					</tr>
					<tr>
						<td style="text-align:center;">
							<span style="font-size: 13px;text-shadow: 1px 1px 1px rgba(0,0,0,0.3);">性别</span>：
							<span class="gender">M</span><input type="radio" class="radio" id="gender_M" name="sex" value="M" checked="checked" />
							<span class="gender">F</span><input type="radio" class="radio" id="gender_F" name="sex" value="F" />
						</td>
					</tr>
					<tr style="text-align:center;margin-top:10px">
						<td><input class="textBox" id="phone"  placeholder="请输入您的手机号"
                 pattern="(\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$"
                 required type="text" name = "phone"/>
						</td>
					</tr>
					<tr>
						<td>
						<input class="buttonBox" style="color:#404040;margin-left:8%;margin-right:5%;" type="submit" value="注册" id="bt-register">
						<input class="buttonBox" style="color:#404040;margin-left:5%;margin-right:5%;" type="reset" value="重置">
						</td>
					</tr>
				</table>
       		</form>
       		
        </div>
        	
       	<div id="footer">
			<jsp:include page="bottom.jsp" />  
		</div> 
	</div>	
</body>
</html>