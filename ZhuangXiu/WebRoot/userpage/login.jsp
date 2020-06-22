<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>登录页</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="css/style2.css">
</head>

<body>

	<h2>登录/注册</h2>
<div class="container" id="container">
	<div class="form-container sign-up-container">
		<form action="userLoginAddServlet" method="post">
			<h1>注册</h1>
			<div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div>
			<span>账号注册</span>
			<input type="text" placeholder="名称" name="username"/>
			<input type="hidden" value="2" name="utypeID"/>
			<input type="password" placeholder="密码" name="userpwd"/>
			<button>注册</button>
		</form>
	</div>
	<div class="form-container sign-in-container">
		<form action="loginServlet" method="post">
			<h1>登录</h1>
			<div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div>
			<span>第三方账号登录</span>
			<input type="text" placeholder="名称" name="username"/>
			<input type="password" placeholder="密码"  name="userpwd"/>
			<a href="#">忘记密码？</a>
			<button>登录</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>欢迎回来！</h1>
				<p>请您先登录的个人信息，进行操作。</p>
				<button class="ghost" id="signIn">登录</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>你好朋友！</h1>
				<p>输入您的个人信息注册成为会员。</p>
				<button class="ghost" id="signUp">注册</button>
			</div>
		</div>
	</div>
</div>

<footer>
	<p>
		版权声明
	</p>
</footer>
  
  

<script  src="js/index2.js"></script>




</body>
</html>
