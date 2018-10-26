<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="../base.jsp" %>
<%@ page import="java.util.Calendar" %>

<table border=0 cellpadding=0 cellspacing=0>
  	<tr>
      	<td valign=top width=4 height=4><img height=4 src="${ctx }/staticfile/images/line_01.gif" width=4></td>
      	<td background=${ctx }/staticfile/images/line_02.gif height=4></td>
     	<td valign=top width=4 height=4><img height=4 src="${ctx }/staticfile/images/line_03.gif" width=4></td>
    </tr>
    <tr>
      	<td background=${ctx }/staticfile/images/line_04.gif></td>
      	<td>
      		<div id="left_login">
      			<img src="${ctx }/staticfile/images/vip_logo.png" /><br><br>
      			
      				<form action="loginProcess" method="post">
      					<font class="zt1">用户名：</font><input type="text" name="name" class="input"><br><br>
      					<font class="zt1">密&nbsp;&nbsp;码：</font><input type="password" name="password" class="input"><br>
          				<br>
          				<a href="reg.jsp"><img src="${ctx }/staticfile/images/reg_button.gif" border= "0 " /></a>
          				<input name="imageField" type="image" src="${ctx }/staticfile/images/login_button.gif" />
          			</form>
      			<br><br>
      			<form action="repeal" method="post">
      				<input type="submit" name="exit" value="退出">
      			</form>
      		</div>
      	</td>
      	<td background=${ctx }/staticfile/images/line_05.gif>&nbsp;</td>
    </tr>
   	<tr>
     	<td valign=top width=4 height=4><img height=4 src="${ctx }/staticfile/images/line_06.gif" width=4></td>
      	<td background=${ctx }/staticfile/images/line_07.gif></td>
      	<td valign=top width=4 height=4><img height=4 src="${ctx }/staticfile/images/line_08.gif" width=4></td>
   	</tr>
 </table><br>
			
<table border=0 cellpadding=0 cellspacing=0>
  	<tr>
    	<td valign=top width=4 height=4><img height=4 src="${ctx }/staticfile/images/line_01.gif" width=4></td>
    	<td background=${ctx }/staticfile/images/line_02.gif height=4></td>
    	<td valign=top width=4 height=4><img height=4 src="${ctx }/staticfile/images/line_03.gif" width=4></td>
    </tr>
    <tr>
    	<td background=${ctx }/staticfile/images/line_04.gif></td>
      	<td>
        		<div id="left_sort">
        			<img src="${ctx }/staticfile/images/sort_logo.png" /><br><br>
    				<div id="sort_menu">
    				<ul id="menu">
     					<li><img src="${ctx }/staticfile/images/sort_menu.gif" />&nbsp;&nbsp;<a class="li_sort" href="${ctx }/goods/toSort?id=1">跑步鞋</a></li>
     					<hr size="1" />
     					<li><img src="${ctx }/staticfile/images/sort_menu.gif" />&nbsp;&nbsp;<a class="li_sort" href="${ctx }/goods/toSort?id=2">随意搭</a></li>
     					<hr size="1" />
   						<li><img src="${ctx }/staticfile/images/sort_menu.gif" />&nbsp;&nbsp;<a class="li_sort" href="${ctx }/goods/toSort?id=3">运动风</a></li>
   						<hr size="1" />
   						<li><img src="${ctx }/staticfile/images/sort_menu.gif" />&nbsp;&nbsp;<a class="li_sort" href="${ctx }/goods/toSort?id=4">休闲风</a></li>
   						<hr size="1" />
   						<li><img src="${ctx }/staticfile/images/sort_menu.gif" />&nbsp;&nbsp;<a class="li_sort" href="${ctx }/goods/toSort?id=5">板鞋</a></li>
   					</ul>
   					</div>
  				</div>
        	
      	</td>
      	<td background=${ctx }/staticfile/images/line_05.gif>&nbsp;</td>
    </tr>
   	<tr>
     	<td valign=top width=4 height=4><img height=4 src="${ctx }/staticfile/images/line_06.gif" width=4></td>
      	<td background=${ctx }/staticfile/images/line_07.gif></td>
      	<td valign=top width=4 height=4><img height=4 src="${ctx }/staticfile/images/line_08.gif" width=4></td>
   	</tr>
</table><br>
			
<table border=0 cellpadding=0 cellspacing=0>
  	<tr>
    	<td valign=top width=4 height=4><img height=4 src="${ctx }/staticfile/images/line_01.gif" width=4></td>
    	<td background=${ctx }/staticfile/images/line_02.gif height=4></td>
    	<td valign=top width=4 height=4><img height=4 src="${ctx }/staticfile/images/line_03.gif" width=4></td>
    </tr>
    <tr>
    	<td background=${ctx }/staticfile/images/line_04.gif></td>
      	<td>
        		<div id="left_sort">
        			<img src="${ctx }/staticfile/images/contact_logo.png" /><br><br>
    				<div id="sort_menu">
    					贝壳：<a target="_blank" href="http://www.taobao.com/webww/ww.php?ver=3&touid=lf5806388&siteid=cntaobao&status=1&charset=utf-8"><img border="0" src="http://amos.alicdn.com/online.aw?v=2&uid=lf5806388&site=cntaobao&s=1&charset=utf-8" alt="点这里给我发消息" /></a>
     					<hr size="1" />
     					Q我：<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=82178712&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:82178712:47" alt="点击这里给我发消息" title="点击这里给我发消息"></a>
     					<hr size="1" />
     					手机：18767168526
   					</div>
  				</div>
        	
      	</td>
      	<td background=${ctx }/staticfile/images/line_05.gif>&nbsp;</td>
    </tr>
   	<tr>
     	<td valign=top width=4 height=4><img height=4 src="${ctx }/staticfile/images/line_06.gif" width=4></td>
      	<td background=${ctx }/staticfile/images/line_07.gif></td>
      	<td valign=top width=4 height=4><img height=4 src="${ctx }/staticfile/images/line_08.gif" width=4></td>
   	</tr>
</table><br>
			
<table border=0 cellpadding=0 cellspacing=0>
  	<tr>
    	<td valign=top width=4 height=4><img height=4 src="${ctx }/staticfile/images/line_01.gif" width=4></td>
    	<td background=${ctx }/staticfile/images/line_02.gif height=4></td>
    	<td valign=top width=4 height=4><img height=4 src="${ctx }/staticfile/images/line_03.gif" width=4></td>
    </tr>
    <tr>
    	<td background=${ctx }/staticfile/images/line_04.gif></td>
      	<td>
        		<div id="left_sort">
        			<img src="${ctx }/staticfile/images/sale_logo.png" /><br><br>
		 			<div id="sale_sql_more"><a class="sql_more" href="more">查看更多商品</a></div>
		 		</div>
		 		 
		 		
        	
      	</td>
      	<td background=${ctx }/staticfile/images/line_05.gif>&nbsp;</td>
    </tr>
   	<tr>
     	<td valign=top width=4 height=4><img height=4 src="${ctx }/staticfile/images/line_06.gif" width=4></td>
      	<td background=${ctx }/staticfile/images/line_07.gif></td>
      	<td valign=top width=4 height=4><img height=4 src="${ctx }/staticfile/images/line_08.gif" width=4></td>
   	</tr>
</table>

