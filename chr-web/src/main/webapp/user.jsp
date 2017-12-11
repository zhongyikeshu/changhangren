<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="keywords" content="南航书院,共享图书,昌航人,南昌航空大学">
	<meta name="description" content="南昌航空大学学生共享图书,南航书院">
	<title>我的</title>
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
	<jsp:include page="header.jsp"></jsp:include>
	<!-- 头像、昵称、个性签名部分开始 -->
	<div class="user-top">
		<div class="user-top-con">
			<c:if test="${empty user }">
				<img class="user-img" src="images/user-top-img.png">
			</c:if>
			<c:if test="${!empty user }">
				<img class="user-img" src="${pageContext.request.contextPath }/${user.head }">
			</c:if>
			
			<span class="user-nam">${user.nick }</span>
			<span class="user-sign">${user.word }</span>
		</div>
	</div>
	<!-- 头像、昵称、个性签名部分结束 -->
</div>
<!-- 主体开始 -->
<div id="user-main">
	<!-- 左侧栏开始 -->
	<div class="user-main-l">
		<ul>
			<li>
				<a href="user-info.jsp" target="iframe-a">
					<i></i>
					<span>个人信息</span>
					<b></b>
				</a>
			</li>
			<li>
				<a href="javascript:void(0);" target="iframe-a">
					<i></i>
					<span>我的消息</span>
					<b></b>
				</a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath }/bookAction_myBook" target="iframe-a">
					<i></i>
					<span>我的图书</span>
					<b></b>
				</a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath }/borrowAction_jyBook" target="iframe-a">
					<i></i>
					<span>我的借阅</span>
					<b></b>
				</a>
			</li>
			<li>
				<a href="user-sc.jsp" target="iframe-a">
					<i></i>
					<span>上传</span>
					<b></b>
				</a>
			</li>
		</ul>
	</div>
	<!-- 左侧栏结束 -->
	<!-- 右侧栏开始 -->
	<div class="umr">
		<iframe src="user-info.jsp" frameborder="0" scrolling="no" name="iframe-a"></iframe>
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
