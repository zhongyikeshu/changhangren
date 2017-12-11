<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
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
	margin-left: 40px;
	margin-top: 24px;
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
			个人信息
		</div>
		<form class="user-main-rm" action="" method="post">
			<div class="user-main-rmc">
				<span>姓名</span>
				<input type="text" name="username" readonly="readonly"  value="${user.name }">
			</div>
			<div class="user-main-rmc">
				<span>昵称</span>
				<input type="text" name="username" readonly="readonly" value="${user.nick }" >
			</div>
			<div class="user-main-rmc">
				<span>学号</span>
				<input type="text" name="username" readonly="readonly" value="${user.stuid }" >
			</div>
			<div class="user-main-rmc">
				<span>学院  | 专业</span>
				<input type="text" name="username" readonly="readonly"value="${user.college } | ${user.major }" >
			</div>
			
			<div class="user-main-rmc">
				<span>个性签名</span>
				<input type="text" name="username" readonly="readonly" value="${user.word }" >
			</div>
			<div class="user-main-rmc">
				<input id="user-main-rmcs" type="submit" name="username" value="确定更改" >
			</div>
		</form>
	</div>
</body>
</html>