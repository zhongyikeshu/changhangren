<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>register</title>
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="css/component2.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
	function register() {
		var psw = $("input[name=password]").val();
		var repsw = $("#repsw").val();
		if(psw!=repsw){
			alert("两次密码不一致");
		}else{
			document.getElementById('registerform').submit();
		}
		
		
	}
</script>
<!--[if IE]>
<script src="js/loginjs/html5.js"></script>
<![endif]-->
</head>
<body>
	<div class="container demo-1">
		<div class="content">
			<div id="large-header" class="large-header">
				<canvas id="demo-canvas"></canvas>
				<div class="logo_box">
					<h3
						style="font-family: 华文行楷, Simsun; color: rgb(160, 173, 183); font-size: 35px">就差你啦</h3>
					<form
						action="${pageContext.request.contextPath}/userAction_register"
						id="registerform" name="registerform" method="post">
						<div class="input_outer">
							<span class="u_user"></span> <input name="phone" class="text"
								style="color: #FFFFFF !important" type="text"
								placeholder="留个手机号">
						</div>
						<div class="input_outer">
							<span class="u_user"></span> <input name="nick" class="text"
								style="color: #FFFFFF !important" type="text"
								placeholder="尊姓...小名(昵称)">
						</div>
						<div class="input_outer">
							<span class="u_user"></span> <input name="address" class="text"
								style="color: #FFFFFF !important" type="text"
								placeholder="公子/千金府邸">
						</div>
						<div class="input_outer">
							<span class="us_uer"></span> <input name="password" class="text"
								style="color: #FFFFFF !important; position: absolute; z-index: 100;"
								value="" type="password" placeholder="通关文牒(密码)">
						</div>
						<div class="input_outer">
							<span class="us_uer"></span> <input id="repsw" class="text"
								style="color: #FFFFFF !important; position: absolute; z-index: 100;"
								value="" type="password" placeholder="请确认文牒">
						</div>
						<div class="mb2">
							<a class="act-but submit" href="javascript:;"
								onclick="register()" style="color: #FFFFFF">注册</a>
						</div>

					</form>
					<div>
						<br> <font color="red"> <s:actionerror />
						</font>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /container -->
	<script src="js/TweenLite.min.js"></script>
	<script src="js/EasePack.min.js"></script>
	<script src="js/rAF.js"></script>
	<script src="js/demo-1.js"></script>
</body>
</html>