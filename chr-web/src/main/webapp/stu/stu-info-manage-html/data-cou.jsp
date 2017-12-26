<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

ul li {
	list-style: none;
}

form {
	display: inline-block;
	width: 400px;
	height: 160px;
	margin-left: 20px;
	margin-top: 10px;
}

#main-container {
	width: 960px;
	margin: 0 auto;
	padding-top: 12px;
	padding-bottom: 12px;
}

#main-box-top {
	width: 960px;
	height: 5px;
	background-image: url(../../images/stu-info-manage-img/box_t.png);
}

#main-box-middle {
	width: 952px;
	margin: 0px;
	padding: 0px;
	border-right: 4px #eceff1 solid;
	border-left: 4px #eceff1 solid;
}

#main-box-bottom {
	width: 960px;
	height: 5px;
	background-image: url(../../images/stu-info-manage-img/box_b.png);
}

#center-top {
	width: 900px;
	height: 180px;
}

#center-top span {
	
}

#center-left ul {
	list-style: none;
	margin: 5px 0 0 8px;
	padding: 0;
}

#center-left ul li {
	line-height: 30px;
	font-size: 14px;
}

#center-left ul li .on {
	background-image: url(../../images/stu-info-manage-img/smenu.png);
}

#center-left ul li a {
	color: #313131;
	padding-left: 36px;
	float: left;
	display: block;
	width: 108px;
	margin: 2px 0;
}

#center-bottom {
	width: 900px;
	height: 180px;
}

.bgwhite {
	background-color: #FFF;
}

.clear {
	margin: 0;
	height: 0;
	clear: both;
	font-size: 0;
	line-height: 0;
	overflow: hidden;
}
</style>
</head>
<body>
	<div id="main-container">
		<div id="main-box-top"></div>
		<div id="main-box-middle">
			<div id="center-top">
				<h4>按学生</h4>
				<form action="" method="post">
					<ul>
						<li>学号 <input type="text" name=""></li>
						<li>姓名 <input type="text" name=""></li>
						<li><input type="submit" name="" value="查询"></li>
					</ul>
				</form>
				<form action="" method="post">
					<ul>
						<li>总成绩 <input type="text" name=""></li>
						<li>平均成绩 <input type="text" name=""></li>
						<li><input type="submit" name="" value="总成绩添加至学生表"></li>
					</ul>
				</form>
			</div>
			<hr>
			<div id="center-bottom">
				<h4>按课程</h4>
				<form action="" method="post">
					<ul>
						<li>课程名 <input type="text" name=""></li>
						<li><input type="submit" name="" value="查询"></li>
					</ul>
				</form>
				<form action="" method="post">
					<ul>
						<li>平均成绩 <input type="text" name=""></li>
						<li>选课人数 <input type="text" name=""></li>
						<li><input type="submit" name="" value="选课人数添加至课程表"></li>
					</ul>
				</form>
			</div>
			<div class="clear"></div>
		</div>
		<div id="main-box-bottom"></div>
	</div>
</body>
</html>