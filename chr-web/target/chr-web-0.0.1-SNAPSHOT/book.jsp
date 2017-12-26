<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="keywords" content="南航书院,共享图书,昌航人,南昌航空大学">
	<meta name="description" content="南昌航空大学学生共享图书,南航书院">
	<title>南航书院</title>
	<link rel="shortcut icon" href="images/favicon.ico">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">  
	<link rel="stylesheet" type="text/css" href="css/master.css">
	<link rel="stylesheet" type="text/css" href="css/book.css">
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/loading.js"></script>
	<script src="js/mask.js"></script>
	<script src="http://ajax.microsoft.com/ajax/jQuery/jquery-1.7.2.min.js"></script>
	<script src="js/to-top.js"></script>
	<script type="text/javascript">
		
		//分类 获取焦点后执行方法 ，使用ajax查询分类
		function findCategoryList(){
			 $.post('${pageContext.request.contextPath }/categoryAction_findCategory',function(data){
				 $("#categoryUl").empty();
				 $("#categoryUl").append("<li><a href='${pageContext.request.contextPath}/bookAction_findAllList'>所有分类</a></li>"); 
				for(var i = 0;i<data.length;i++){
					var cid = data[i].cid;
					var cname = data[i].cname;
					$("#categoryUl").append("<li><a href='${pageContext.request.contextPath}/bookAction_bookListByCid?cid="+cid+"'>"+cname+"</a></li>"); 
				}
			}); 
		}
		//点击详情
		function xiangqing(bookid){
			window.location.href="${pageContext.request.contextPath}/bookAction_findInfoById?bookid="+bookid;
		}
		function query(page){
			
			$("#cid").val("${pageBean.cid }");
			$("#keyWord").val("${pageBean.keyWord }");
			$("#currentPage").val(page);
			$("#query3").submit();
		}
	</script>
	<!-- <script type="text/javascript">
		function book-infor(){
	window.open('book-infor.html','_blank');
}
	</script> -->
</head>
<body>
<!-- 加载动画 -->
<div class="loading"><div class="pic"></div></div>
<!-- 回到顶部 -->
<div id="to_top">
	<a href="#header" style="width: 50px;height: 50px;display: block; cursor: pointer;"><span class="glyphicon glyphicon-arrow-up" style="color: #FFF;"></span></a>
</div>
<!-- 页头 -->
<div id="header_book">
	<!-- 导航栏 -->
	<jsp:include page="header.jsp"></jsp:include>
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
<div id="main_book">
	<div class="book_nav">
		<div class="book-nav-l">
			<div class="book-nav-button">
				<button class="book-nav-ls" onmousemove="findCategoryList()">
				分类&nbsp;<span class="glyphicon glyphicon-menu-down" style="font-size: 14px"></span>
				</button>
				<div class="book-nav-le">
					<ul id="categoryUl">
				
					</ul>
				
				</div>
			</div>
		</div>
		<div class="book-nav-r">
			<form action="${pageContext.request.contextPath }/bookAction_bookListByKeyWord" method="post" class="book-nav-rb">
				<input type="text" name="keyWord" value="${pageBean.keyWord }" class="search-text" placeholder="搜索书名或作者名"><input type="submit" name="" class="search-button" value="">
			</form>
		</div>
	</div>
	<div class="book_shop">
		<ul>
			<c:forEach items="${pageBean.list }" var="book">
				<li>
					<a href="#">
						<img src="${pageContext.request.contextPath }/${book.photo}">
						<div class="book-mask">
							<button onclick="xiangqing('${book.id}')">查看详情</button>
						</div>
					</a>
					<div class="book-shop-nb">
						<span class="shum">书名:${book.name }</span>
						<span class="zuozhe">作者:${book.author }</span>
					<%-- 	<span class="chuban">出版社:${book.press }</span> --%>
						<span class="chuban">分类  :${book.category.cname }</span>
						<span class="gongx">借还状态:<a href="">可借</a></span>
					</div>
				</li>
			
			</c:forEach>
		
		</ul>
	</div>
	<div class="book_page">
		<div class="book-pages">
		
			<!-- 上一页 -->
			<c:if test="${pageBean.currentPage==1 }">
				<a href="javascript:void(0)">&lt;</a>
			</c:if>
			<c:if test="${pageBean.currentPage!=1 }">
				<a href="javascript:void(0);" onclick="query(${pageBean.currentPage-1})">&lt;</a>	
			</c:if>
			<!-- 显示每一页 -->
			<c:forEach begin="1" end="${pageBean.totalPage }" var="page">
				<c:if test="${page==pageBean.currentPage }">
					<a style="color:yellow"   href="javascript:void(0);">${page }</a>
				</c:if>
				<c:if test="${page!=pageBean.currentPage }">
					<a href="javascript:void(0);" onclick="query(${page })">${page }</a>
				</c:if>
			</c:forEach>
	
			<!-- 下一页 -->
			<c:if test="${pageBean.currentPage==pageBean.totalPage }">
				<a href="javascript:void(0)">&gt;</a>
			</c:if>
			<c:if test="${pageBean.currentPage!=pageBean.totalPage }">
				<a href="javascript:void(0);" onclick="query(${pageBean.currentPage+1 })">&gt;</a>	
			</c:if>
			
		
			<!-- <a href="">&lt;</a>
			<a href="">1</a>
			<a href="">2</a>
			<a href="">3</a>
			<a href="">4</a>
			<a href="">5</a>
			<span>...</span>
			<a href="">20</a>
			<a href="">&gt;</a> -->
		</div>
	</div>
</div>
<!-- 页尾 -->
<div id="footer">
	<p id="footer_p">&#169;2017All Rights Reserved</p>
</div>
<form id="query3" action="${pageContext.request.contextPath}/bookAction_pageQuery" method="post">
	<input id="cid" type="hidden" name="cid" value="">
	<input id="keyWord" type="hidden" name="keyWord" value="">
	<input id="currentPage" type="hidden" name="currentPage" value="">
</form>
</body>
</html>
