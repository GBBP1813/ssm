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
<body>

		<div id="page">
			<div id="header">
				<c:import url="header.jsp"></c:import>      
       		</div>
			
			<div id="left_column">
				<c:import url="left_column.jsp"></c:import>    
			</div>
			
			<div id="center_column">
				<c:import url="center_column.jsp"></c:import>  
			</div>
			
			<div id="footer">
				<c:import url="bottom.jsp"></c:import>  
			</div>
		</div>
	
</body>
</html>