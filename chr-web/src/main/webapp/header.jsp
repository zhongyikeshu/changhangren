<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="shortcut icon" href="images/890.ico">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">  
	<link rel="stylesheet" type="text/css" href="css/master.css">
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/loading.js"></script>
	<script src="http://ajax.microsoft.com/ajax/jQuery/jquery-1.7.2.min.js"></script>
	<script src="js/to-top.js"></script>
<title>Insert title here</title>
</head>
<body>
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
						<c:if test="${empty user }">
							<a href="${pageContext.request.contextPath }/login.jsp" class="nav_cl" id="btnLogin">登录</a>&nbsp;
							<a href="${pageContext.request.contextPath }/register.jsp" class="nav_cl" id="btnRegsiter">注册</a>
						</c:if>
						<c:if test="${!empty user }">
							<a href="${pageContext.request.contextPath }/user.jsp" id="btnLogin">我的</a>&nbsp;
							<a href="${pageContext.request.contextPath }/userAction_logout" id="btnRegsiter">退出</a>
						</c:if>
					</div>
				</ul>
			</div>
		</nav>
	</div>
</body>
</html>