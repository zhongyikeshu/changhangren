<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="keywords" content="昌航人,共享图书,南昌航空大学">
	<meta name="description" content="昌航人,南昌航空大学学生共享图书">
	<title>昌航人</title>
	<link rel="shortcut icon" href="images/890.ico">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">  
	<link rel="stylesheet" type="text/css" href="css/master.css">
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/loading.js"></script>
	<script src="js/mask.js"></script>
	<script src="http://ajax.microsoft.com/ajax/jQuery/jquery-1.7.2.min.js"></script>
	<script src="js/to-top.js"></script>
	<!-- <script src="js/nav_run.js"></script> -->
</head>
<body>
<!-- 加载动画 -->
<div class="loading"><div class="pic"></div></div>
<!-- 回到顶部 -->
<div id="to_top">
	<a href="#header" style="width: 50px;height: 50px;display: block; cursor: pointer;"><span class="glyphicon glyphicon-arrow-up" style="color: #FFF;"></span></a>
</div>
<!-- 页头 -->
<div id="header">
	<!-- 导航栏 -->
	<div class="nav_wrap">
	<div class="nav_con">
		<div class="nav_cont">
			<span class="nav_cont_l">www.changhangren.top</span>
			<span class="nav_cont_r">联系我们:@changhangren.top</span>
		</div>
	</div>
	
	<nav>
		<div class="nav_logo"><h1><a href="index.html" title="昌航人">昌航人</a></h1></div>
		<div class="nav_nav">
			<ul>
				<li><a href="#">首页</a></li>
				<li><a href="#">关于</a></li>
				<li><a href="#">联系</a></li>
			<div class="nav_btn">
			<a href="javascript:;" class="nav_cl" id="btnLogin">登录</a>&nbsp;<a href="javascript:;" class="nav_cl" id="btnRegsiter">注册</a>
			</div>
			</ul>
		</div>
	</nav>
	</div>
	<!-- 轮播图 -->
	<div class="banner">
	<ul>
    	<li><img src="images/1.jpg" /></li>
        <li style="display:none"><img src="images/2.jpg" /></li>
        <li style="display:none"><img src="images/3.jpg" /></li>
    </ul>
    <div class="con"></div>
    <div class="u left glyphicon glyphicon-menu-left"></div>
    <div class="u right glyphicon glyphicon-menu-right"></div>
    </div>
    <script src="js/script.js"></script>
</div>

<!-- 主体 -->
<div id="main">
	<strong>----------功能区----------</strong>
	<div class="shop">
		<div class="shop_wrap">
			<div class="shop_gn"><a href="book.html"><span class="glyphicon glyphicon-home"></span></a>
			<h4>南航书院</h4>
			<p>我们的共享图书馆<br />随时随地上传和借阅图书</p>
			</div>
			<div class="shop_gn"><a href="book.html"><span class="glyphicon glyphicon-home"></span></a>
			<h4>南航书院</h4>
			<p>我们的共享图书馆<br />随时随地上传和借阅图书</p>
			</div>
			<div class="shop_gn"><a href="book.html"><span class="glyphicon glyphicon-home"></span></a>
			<h4>南航书院</h4>
			<p>我们的共享图书馆<br />随时随地上传和借阅图书</p>
			</div>
			<div class="shop_gn"><a href="book.html"><span class="glyphicon glyphicon-home"></span></a>
			<h4>南航书院</h4>
			<p>我们的共享图书馆<br />随时随地上传和借阅图书</p>
			</div>
			<div class="shop_gn"><a href="book.html"><span class="glyphicon glyphicon-home"></span></a>
			<h4>南航书院</h4>
			<p>我们的共享图书馆<br />随时随地上传和借阅图书</p>
			</div>
			<div class="shop_gn"><a href="book.html"><span class="glyphicon glyphicon-home"></span></a>
			<h4>南航书院</h4>
			<p>我们的共享图书馆<br />随时随地上传和借阅图书</p>
			</div>
			<div class="shop_gn"><a href=""><span class="glyphicon glyphicon-home"></span></a>
			<h4>南航书院</h4>
			<p>我们的共享图书馆<br />随时随地上传和借阅图书</p>
			</div>
			<div class="shop_gn"><a href="book.html"><span class="glyphicon glyphicon-home"></span></a>
			<h4>南航书院</h4>
			<p>我们的共享图书馆<br />随时随地上传和借阅图书</p>
			</div>
		</div>
	</div>
</div>

<!-- 页尾 -->
<div id="footer">
	<p id="footer_p">&#169;2017All Rights Reserved</p>
</div>
<!-- 弹出层 -->
<!-- <div id="mask"></div>
<div id="login1">
	<div class="login1con">
		<div class="login_head">
			<h4>登录</h4>
			<div id="close" class="glyphicon glyphicon-remove"></div>
		</div>
		
		<form action="" method="post" class="login_for">
		<input class="login_in1" type="text" name="username"  value="请输入用户名或账号" >
		<input class="login_in2" type="password" name="password"value="请输入密码">
		<a href="javascript:;" class="login_wj">忘记密码？</a>
		<input class="login_in3" type="submit" name="login" value="登录">
		<input class="login_in4" id="btnRegsiter1" type="button" name="regsiter" value="立即注册">
		</form>
		
	</div>
</div> -->

<!-- <div id="mask2"></div>
<div id="regsiter1">
	<div class="regsiter1con">
		<div class="regsiter_head">
			<h4>注册</h4>
			<div id="close2" class="glyphicon glyphicon-remove"></div>
		</div>
		<div class="regsiter_con">
		<form action="" method="post" class="regsiter_for">
		<input class="regsiter_in1" type="text" name="username" value="请输入用户名或账号">
		<input class="regsiter_in2" type="password" name="password" value="请输入密码">
		<input class="regsiter_in3" type="password" name="password" value="请再次输入密码">
		<input class="regsiter_in4" type="text" name="phonenum" value="绑定手机号方便找回">
		<input class="regsiter_in5" type="text" name="yzm" value="请输入验证码">
		<input class="regsiter_in6" type="button" name="fyzm" value="发送验证码">
		<input class="regsiter_in7" type="submit" name="regsiter" value="立即注册">
		</form>
		</div>
	</div>
</div> -->
</body>
</html>