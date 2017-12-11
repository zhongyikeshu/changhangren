<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="keywords" content="南航书院,共享图书,昌航人,南昌航空大学">
	<meta name="description" content="南昌航空大学学生共享图书,南航书院">
	<title>图书详情</title>
	<link rel="shortcut icon" href="images/favicon.ico">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">  
	<link rel="stylesheet" type="text/css" href="css/master.css">
	<link rel="stylesheet" type="text/css" href="css/book.css">
	<link rel="stylesheet" type="text/css" href="css/book-infor.css">
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/loading.js"></script>
	<script src="js/mask.js"></script>
	<script src="http://ajax.microsoft.com/ajax/jQuery/jquery-1.7.2.min.js"></script>
	<script src="js/to-top.js"></script>
	<script src="js/bookch.js"></script>
</head>
<body>
<!-- 加载动画 -->
<!-- <div class="loading"><div class="pic"></div></div>
 --><!-- 回到顶部 -->
<div id="to_top">
	<a href="#header" style="width: 50px;height: 50px;display: block; cursor: pointer;"><span class="glyphicon glyphicon-arrow-up" style="color: #FFF;"></span></a>
</div>
<!-- 页头 -->
<div id="header_book">
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
			<div class="nav_btn-1">
			<a href="javascript:;" id="btnLogin">我的</a>&nbsp;<a href="javascript:;" id="btnRegsiter">退出</a>
			</div>
			</ul>
		</div>
	</nav>
	</div>
	<!-- 南航书院 -->
	<div class="book_theme">
		<div class="book-theme-title">
			<span>南航书院</span>
			<p><img class="aligncenter" src="images/line.png" alt="&quot;img"></p>
			<p>我们的共享图书馆,随时随地上传和借阅图书</p>
		</div>
	</div>
</div>
<!-- 主体 -->
<div id="book-info-main">
	<div class="book_nav">
		<div class="book-nav-l">
			<div class="book-nav-button">
				<span class="book-nav-ls">
				分类&nbsp;<span class="glyphicon glyphicon-menu-down" style="font-size: 14px"></span>
				</span>
			<div class="book-nav-le">
				<ul>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
				</ul>
				<ul>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
				</ul>
				<ul>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
				</ul>
				<ul>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
				</ul>
			</div>
			</div>
		</div>
		<div class="book-nav-r">
			<form class="book-nav-rb">
				<input type="text" name="" class="search-text" placeholder="搜索书名或作者名"><input type="submit" name="" class="search-button" value=" ">
			</form>
		</div>
	</div>
	<div class="book-info">
		<div class="book-info-main">
			<div class="biml">
				<div class="biml-t"><img id="biml-img" src="images/book-infor-1.jpg"></div>
				<div class="biml-b">
					<ul>
						<li onmouseover="bookch1()"><img src="images/book-infor-1.jpg"></li>
						<li onmouseover="bookch2()"><img src="images/book-infor-2.jpg"></li>
						<li onmouseover="bookch3()"><img src="images/book-infor-3.jpg"></li>
						<li onmouseover="bookch4()"><img src="images/book-infor-4.jpg"></li>
						<li onmouseover="bookch5()"><img src="images/book-infor-5.jpg"></li>
					</ul>
				</div>
			</div>
			<div class="bimr">
			<p class="book-inq">
				<span class="book-font">书名:</span><span>鬼谷子详解</span><br><br>
				<span>出版社:</span><span>北京教育出版社</span><br><br>
				<span>出版日期:</span><span>2017年8月</span><br><br>
				<span>本书介绍:</span><span>《鬼谷子》是一部集纵横家、兵家、道家、仙家、阴阳家等思想于一体的权谋理论著作。本书对原作做了精当而晓畅的注释与翻译，每篇皆附有提要以解析、导读，并精选了古今中外颇具代表性的案例，涵盖管理、商场、职场、处世等各个领域，逐篇阐释、解读，用精彩纷呈的故事呈现鬼谷子的智慧谋略。</span><br><br>
				<span>贡献人:</span><a href="#">未知</a><br><br>
				<span>借阅状态:</span><a href="#">可借</a>
			</p>
			</div>
		</div>
	</div>
</div>
<!-- 页尾 -->
<div id="footer">
	<p id="footer_p">&#169;2017All Rights Reserved</p>
</div>
</body>
</html>
