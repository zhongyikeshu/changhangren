<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">  
	<style type="text/css">
	.user-main-r{
	width: 960px;
	height: 650px;

}
.user-main-rt{
	width: 960px;
	height: 50px;
	color: #000;
	font:700 16px/50px "微软雅黑";
	border-bottom: 1px solid #787d82;
}

.user-main-rm{
	width: 896px;
	height: 470px;
	margin-left: 30px;
	margin-top: 24px;
}
.user-scimg{
	width: 960px;
	height:200px; 
	margin-bottom: 25px;
}
.user-scimg ul{
	width: 960px;
	height: 200px;
	padding-left: 0px;
}
.user-scimg ul li{
	list-style: none;
	float: left;
	width: 180px;
	height: 200px;
	margin-left: 2px;
	border:1px solid #000;
	line-height: 200px;
	text-align: center;
}
.user-scimg ul li span{
	font-size: 40px;
	font-weight: 200;
}
.user-scimg ul li span:hover{
	cursor: pointer;
}
.user-main-rmc{
	width: 896px;
	height: 61px;
	/*border-bottom: 1px solid #787d82;*/
	margin-bottom: 25px;
}
.user-main-rmc span{
	display: inline-block;
	width: 120px;
	/*height: 20px;*/
	padding: 20px 0;
	line-height: 20px;
	text-align: center;
	background-color: #f3f5f7;
	color: #07111b;
    font-weight: 700;
   /* float: left;*/
}
.user-main-rmc input{
	display: inline-block;
	width: 708px;
	/*float: left;*/
	background:none;  
   	outline:none;  
   	border:0px;
    margin-left: 8px;
    line-height: 20px;
    padding: 20px 0 20px 22px;
    border-bottom: 1px solid #d9dde1;
}
.user-main-rmc #user-main-rmcs{
	width: 836px;
	height: 60px;
	background-color: #f3f5f7;
	margin-left: 0;
	border: 0px;
}	
	</style>
</head>
<body>
	<div class="user-main-r">
		<div class="user-main-rt">
			上传
		</div>
		<form class="user-main-rm" action="" method="post">
			<div class="user-scimg">
				<ul>
					<li><span class="glyphicon glyphicon-plus"></span></li>
					<li><span class="glyphicon glyphicon-plus"></span></li>
					<li><span class="glyphicon glyphicon-plus"></span></li>
					<li><span class="glyphicon glyphicon-plus"></span></li>
					<li><span class="glyphicon glyphicon-plus"></span></li>
				</ul>
			</div>
			<div class="user-main-rmc">
				<span>书名</span>
				<input type="text" name="username"  value="西游记">
			</div>
			<div class="user-main-rmc">
				<span>作者</span>
				<input type="text" name="username"  value="吴承恩" >
			</div>
			<div class="user-main-rmc">
				<span>出版社</span>
				<input type="text" name="username"  value="人民出版社" >
			</div>
			<div class="user-main-rmc">
				<span>图书简介</span>
				<input type="text" name="username"  value="讲述了师徒五人西天取经的故事" >
			</div>
			<!-- <div class="user-main-rmc">
				<span>专业</span>
				<input type="text" name="username"  value="电子信息科学与技术" >
			</div>
			<div class="user-main-rmc">
				<span>个性签名</span>
				<input type="text" name="username"  value="这位同学很懒，木有签名的说~" >
			</div> -->
			<div class="user-main-rmc">
				<input id="user-main-rmcs" type="submit" name="username"  value="上传" >
			</div>
		</form>
	</div>
</body>
</html>