<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="keywords" content="南航书院,共享图书,昌航人,南昌航空大学">
	<meta name="description" content="南昌航空大学学生共享图书,南航书院">
	<title>我的图书</title>
	<link rel="shortcut icon" href="images/favicon.ico">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">  
	<link rel="stylesheet" type="text/css" href="css/master.css">
	<link rel="stylesheet" type="text/css" href="css/user.css">
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="http://ajax.microsoft.com/ajax/jQuery/jquery-1.7.2.min.js"></script>
	<script src="js/to-top.js"></script>
</head>
<body>
<!-- 加载动画 -->
<!-- <div class="loading"><div class="pic"></div></div>
 --><!-- 回到顶部 -->
<div id="to_top">
	<a href="#header" style="width: 50px;height: 50px;display: block; cursor: pointer;"><span class="glyphicon glyphicon-arrow-up" style="color: #FFF;"></span></a>
</div>
<!-- 页头 -->
<div id="user-header">
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
	<!-- 头像、昵称、个性签名部分开始 -->
	<div class="user-top">
		<div class="user-top-con">
			<img class="user-img" src="images/user-top-img.png">
			<span class="user-nam">YBQ</span>
			<span class="user-sign">这位同学很懒，木有签名的说~</span>
		</div>
	</div>
	<!-- 头像、昵称、个性签名部分结束 -->
</div>
<!-- 主体开始 -->
<div id="book-user-main">
	<!-- 左侧栏开始 -->
	<div class="user-main-l">
		<ul>
			<li>
				<a href="#">
					<i></i>
					<span>个人信息</span>
					<b></b>
				</a>
			</li>
			<li>
				<a href="#">
					<i></i>
					<span class="show">我的图书</span>
					<b></b>
				</a>
			</li>
			<li>
				<a href="#">
					<i></i>
					<span>我的借阅</span>
					<b></b>
				</a>
			</li>
			<li>
				<a href="#">
					<i></i>
					<span>上传</span>
					<b></b>
				</a>
			</li>
		</ul>
	</div>
	<!-- 左侧栏结束 -->
	<!-- 右侧栏开始 -->
	<div class="user-book-main-r">
		<div class="user-main-rt">
			我的图书
		</div>
		<div class="user-book-main-rm">
			<ul>
				<li>
					<a href="#">
						<img src="images/book-3.jpg">
						<div class="user-book-mask">
						<button>查看详情</button>
						</div>
					</a>
					<div class="user-book-shop-nb">
						<span class="us-bk-all user-shum">书名:中华上下五千年</span>
						<span class="us-bk-all user-zuozhe">作者:方卿</span>
						<span class="us-bk-all user-chuban">出版社:北京教育出版社</span>
						<span class="us-bk-all user-riq">上传日期<a href="">2017年8月10号</a></span>
						<span class="us-bk-all user-jh">借还状态:<a href="">已被借</a></span>
						<span class="us-bk-all user-jyr">
							借阅人:<a href="">未知</a>
							<a class="us-bk-del" href="javascript:;">删除</a>
						</span>
					</div>
				</li>
				<li>
					<a href="#">
						<img src="images/book-3.jpg">
						<div class="user-book-mask">
						<button>查看详情</button>
						</div>
					</a>
					<div class="user-book-shop-nb">
						<span class="us-bk-all user-shum">书名:中华上下五千年</span>
						<span class="us-bk-all user-zuozhe">作者:方卿</span>
						<span class="us-bk-all user-chuban">出版社:北京教育出版社</span>
						<span class="us-bk-all user-riq">上传日期<a href="">2017年8月10号</a></span>
						<span class="us-bk-all user-jh">借还状态:<a href="">已被借</a></span>
						<span class="us-bk-all user-jyr">
							借阅人:<a href="">未知</a>
							<a class="us-bk-del" href="javascript:;">删除</a>
						</span>
					</div>
				</li>
				<li>
					<a href="#">
						<img src="images/book-3.jpg">
						<div class="user-book-mask">
						<button>查看详情</button>
						</div>
					</a>
					<div class="user-book-shop-nb">
						<span class="us-bk-all user-shum">书名:中华上下五千年</span>
						<span class="us-bk-all user-zuozhe">作者:方卿</span>
						<span class="us-bk-all user-chuban">出版社:北京教育出版社</span>
						<span class="us-bk-all user-riq">上传日期<a href="">2017年8月10号</a></span>
						<span class="us-bk-all user-jh">借还状态:<a href="">已被借</a></span>
						<span class="us-bk-all user-jyr">
							借阅人:<a href="">未知</a>
							<a class="us-bk-del" href="javascript:;">删除</a>
						</span>
					</div>
				</li>
				<li>
					<a href="#">
						<img src="images/book-3.jpg">
						<div class="user-book-mask">
						<button>查看详情</button>
						</div>
					</a>
					<div class="user-book-shop-nb">
						<span class="us-bk-all user-shum">书名:中华上下五千年</span>
						<span class="us-bk-all user-zuozhe">作者:方卿</span>
						<span class="us-bk-all user-chuban">出版社:北京教育出版社</span>
						<span class="us-bk-all user-riq">上传日期<a href="">2017年8月10号</a></span>
						<span class="us-bk-all user-jh">借还状态:<a href="">已被借</a></span>
						<span class="us-bk-all user-jyr">
							借阅人:<a href="">未知</a>
							<a class="us-bk-del" href="javascript:;">删除</a>
						</span>
					</div>
				</li>
			<!-- </ul>
			<ul> -->
				<li>
					<a href="#">
						<img src="images/book-3.jpg">
						<div class="user-book-mask">
						<button>查看详情</button>
						</div>
					</a>
					<div class="user-book-shop-nb">
						<span class="us-bk-all user-shum">书名:中华上下五千年</span>
						<span class="us-bk-all user-zuozhe">作者:方卿</span>
						<span class="us-bk-all user-chuban">出版社:北京教育出版社</span>
						<span class="us-bk-all user-riq">上传日期<a href="">2017年8月10号</a></span>
						<span class="us-bk-all user-jh">借还状态:<a href="">已被借</a></span>
						<span class="us-bk-all user-jyr">
							借阅人:<a href="">未知</a>
							<a class="us-bk-del" href="javascript:;">删除</a>
						</span>
					</div>
				</li>
				<li>
					<a href="#">
						<img src="images/book-3.jpg">
						<div class="user-book-mask">
						<button>查看详情</button>
						</div>
					</a>
					<div class="user-book-shop-nb">
						<span class="us-bk-all user-shum">书名:中华上下五千年</span>
						<span class="us-bk-all user-zuozhe">作者:方卿</span>
						<span class="us-bk-all user-chuban">出版社:北京教育出版社</span>
						<span class="us-bk-all user-riq">上传日期<a href="">2017年8月10号</a></span>
						<span class="us-bk-all user-jh">借还状态:<a href="">已被借</a></span>
						<span class="us-bk-all user-jyr">
							借阅人:<a href="">未知</a>
							<a class="us-bk-del" href="javascript:;">删除</a>
						</span>
					</div>
				</li>
				<li>
					<a href="#">
						<img src="images/book-3.jpg">
						<div class="user-book-mask">
						<button>查看详情</button>
						</div>
					</a>
					<div class="user-book-shop-nb">
						<span class="us-bk-all user-shum">书名:中华上下五千年</span>
						<span class="us-bk-all user-zuozhe">作者:方卿</span>
						<span class="us-bk-all user-chuban">出版社:北京教育出版社</span>
						<span class="us-bk-all user-riq">上传日期<a href="">2017年8月10号</a></span>
						<span class="us-bk-all user-jh">借还状态:<a href="">已被借</a></span>
						<span class="us-bk-all user-jyr">
							借阅人:<a href="">未知</a>
							<a class="us-bk-del" href="javascript:;">删除</a>
						</span>
					</div>
				</li>
				<li>
					<a href="#">
						<img src="images/book-3.jpg">
						<div class="user-book-mask">
						<button>查看详情</button>
						</div>
					</a>
					<div class="user-book-shop-nb">
						<span class="us-bk-all user-shum">书名:中华上下五千年</span>
						<span class="us-bk-all user-zuozhe">作者:方卿</span>
						<span class="us-bk-all user-chuban">出版社:北京教育出版社</span>
						<span class="us-bk-all user-riq">上传日期<a href="">2017年8月10号</a></span>
						<span class="us-bk-all user-jh">借还状态:<a href="">已被借</a></span>
						<span class="us-bk-all user-jyr">
							借阅人:<a href="">未知</a>
							<a class="us-bk-del" href="javascript:;">删除</a>
						</span>
					</div>
				</li>
			</ul>
		<div class="user-book-page">
		<div class="user-book-pages">
				<a href="">&lt;</a>
				<a href="">1</a>
				<a href="">2</a>
				<a href="">3</a>
				<a href="">4</a>
				<a href="">5</a>
				<span>...</span>
				<a href="">20</a>
				<a href="">&gt;</a>
			</div>
		</div>
		</div>
	</div>
	<!-- 右侧栏结束 -->
</div>
<!-- 主体结束 -->
<!-- 页尾 -->
<div id="footer">
	<p id="footer_p">&#169;2017All Rights Reserved</p>
</div>
</body>
</html>
