<%@page language = "java" pageEncoding = "utf-8" %>>
<html>
<head lang="zh">
  <meta charset="UTF-8">
  <title>注册</title>
  <link rel="icon" href="img/favicon.ico">
  <link rel="stylesheet" href="css/base.css"/>
  <link rel="stylesheet" href="css/animate.css"/>
  <link rel="stylesheet" href="css/login-r.css"/>
</head>
<body>
<!-- 页面顶部-->
<header id="top">
  <div class="top">
    <a href="index.html">
      <img src="img/login/logo.png" alt=""/>
    </a>
    <span>欢迎注册</span>
  </div>
</header>
<div class="parent">
  <div class="container" style="background:url('img/register/bg.png') no-repeat">
    <div class="panel rt">
      <form action = "register.do" method="post" id="form-register">
        <div class="txt">
          <p>新用户注册
            <span>
              <a href="login.html">直接登录</a>
            </span>
          </p>
        </div>
        <%
          	String err_msg = (String)request.getAttribute("err_msg");
         %>
        <div class="form-group">
          <label for="uname">用户名：</label>
          <input autocomplete required minlength="3" maxlength="12" type="text" placeholder="请输入用户名" autofocus id="uname" name = "username"/>
          <span class="msg-default">用户名长度在3到12位之间</span>
        </div>
        <div class="form-group">
          <label for="name">真实姓名：</label>
          <input autocomplete required minlength="3" maxlength="12" type="text" placeholder="请输入用户名" autofocus id="name" name = "name"/>
          <span class="msg-default">用户名长度在2到4位之间</span>
        </div>
        <div class="form-group">
          <label for="upwd">登录密码：</label>
          <input required type="password" minlength="6" maxlength="12" placeholder="请输入密码"  autofocus
                 id="upwd" name = "pwd"/>
          <span class="msg-default hidden">密码长度在6到12位之间</span>
        </div>
        <div class="form-group">
          <label for="upwdconfirm">确认密码：</label>
          <input required type="password" minlength="6" maxlength="12" placeholder="请确认密码"  autofocus
                 id="upwdconfirm" name = "repwd"/>
          <span class="msg-default hidden">密码长度在6到12位之间</span>
        </div>

		<div class="form-group">
	       <label> 性别：</label>
	        <span class="gender">M</span><input type="radio" class="radio" id="gender" name="gender" value="M" checked="checked" />
			<span class="gender">F</span><input type="radio" class="radio" id="gender" name="gender" value="F" />
        </div>
        
        <div class="form-group">
          <label for="age">年龄：</label>
          <input autocomplete required type="number" placeholder="请输入年龄" id="age" name = "age"/>
          <span class="msg-default hidden">请输入正确的年龄</span>
        </div>
        <div class="form-group">
          <label for="phone">手机号：</label>
          <input id="phone"  placeholder="请输入您的手机号"
                 pattern="(\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$"
                 required type="text" name = "phone"/>
          <span class="msg-default hidden">请输入合法的手机号</span>
        </div>
        <div class="form-group">
          <label for="checkcode">验证码：</label>
          <input required type="text" id="checkcode" placeholder="请输入验证码" name = "checkcode" />
          <a href="javascript:;" onclick="document.getElementById('num').src = 'CheckCode?'+(new Date()).getTime()">
	          <img id="num" src="img/valicode.jpg" />
	       </a>
          <span class="msg-default hidden">密码长度在6到12位之间</span>
        </div>
        <div class="form-group">
          <label></label>
          <input type="submit" value="提交注册信息" id="bt-register" />
          <span style = "color:red"><%= (err_msg == null ? "" : err_msg) %></span>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>