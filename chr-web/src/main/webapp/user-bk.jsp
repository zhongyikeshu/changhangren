<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		.user-book-main-r{
	width: 960px;
	height: 820px;
	
}
.user-main-rt{
	width: 960px;
	height: 50px;
	color: #000;
	font:700 16px/50px "微软雅黑";
	border-bottom: 1px solid #787d82;
}
.user-book-main-rm{
	width: 960px;
	height:750px;
	/*background-color: red; */
}
.user-book-main-rm ul{
	width: 960px;
	height: 710px;
	padding-left: 0px;
}
.user-book-main-rm ul li{
	position: relative;
	float: left;
	text-align: center;
	overflow: hidden;
	border: 1px solid #888;
	margin-left: 16px;
	margin-top: 10px;
	list-style: none;
	width: 220px;
	height: 340px;
}
.user-book-main-rm ul li img{
	display: inline-block;
	vertical-align: middle;
	border:0;
	transition: transform 1s;
	-webkit-transition: -webkit-transform 1s;
	margin-top: 10px auto;
	width: 200px;
	height: 200px;
}
.user-book-mask{
	width: 218px;
	height: 218px;
	display: none;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 10;
	background-color: #000;
	background: rgba(0,0,0,0.75);
}
.user-book-mask button{
	outline: none; 
	position: absolute;
	top: 89px;
	left: 69px; 
	width: 80px;
	height: 40px;
	background-color: #2D6CDF;
	color: #FFF;
	border-radius:20px;
	border: 1px solid #2D6CDF;
	z-index: 50;
}
.user-book-shop-nb{
	width: 218px;
	height: 120px;
	position: absolute;
	bottom: 0;
}
.us-bk-all{
	position: absolute;
	width: 218px;
	height: 20px;
	font:400 14px/20px "微软雅黑";
	text-align: left;
}
.user-shum{
	top: 0px;
	left: 10px;
}
.user-zuozhe{
	top: 20px;
	left: 10px;
}
.user-chuban{
	top: 40px;
	left: 10px;
}
.user-riq{
	top: 60px;
	left: 10px;
}
.user-jh{
	top: 80px;
	left: 10px;
}
.user-jyr{
	top: 100px;
	left: 10px;
}
.us-bk-del{
	color: red;
	display: inline-block;
	width: 40px;
	height: 20px;
	position: absolute;
	top: 0;
	right: 0;
}
.user-book-main-rm ul li:hover{
	border: 1px solid orange;
	box-shadow:0 0 6px orange;
}
.user-book-main-rm ul li a:hover .user-book-mask{
	display: block;
}
.user-book-main-rm ul li a:hover img{
	transform:scale(1.1)
}
.user-book-page{
	width: 960px;
	height: 40px;
	/*background-color: red;*/
}
.user-book-pages{
	width: 394px;
	height: 40px;
	margin:0 290px;
	/*background-color: blue;*/
}
.user-book-pages a{
	transition: background-color 1s;
	-webkit-transition: background-color 1s;
	margin-left: 0px; 
	display: inline-block; 
	border: 1px solid orange;
	width: 40px;
	height: 40px;
	line-height: 40px;
	text-align: center;
	color: #000;
	font-size: 17px;
	text-decoration: none;
	border-radius: 4px;
}
.user-book-pages span{
	display: inline-block; 
	width: 20px;
	height: 40px;
	line-height: 40px;
	text-align: center;
}
.user-book-pages a:hover{
	background-color: #FFD280;
}
	</style>
		<script src="http://ajax.microsoft.com/ajax/jQuery/jquery-1.7.2.min.js"></script>
	<script type="text/javascript">
		//点击详情
		function xiangqing(){
			window.location.href="${pageContext.request.contextPath }/book-info.jsp";
		}
		function deleteBook(id){
			var deleteId = id;
			
			var f = confirm("确定要删除吗");
			if(f){
				window.location.href="${pageContext.request.contextPath }/bookAction_deleteBook?id="+deleteId; 
			}
			
		}
		function query(page){
			$("#cid").val("${pageBean.cid }");		
			$("#keyWord").val("${pageBean.keyWord }");		
			$("#currentPage").val(page);
		 	$("#pageSize").val("${pageBean.pageSize }"); 
			$("#query3").submit();
		}
	</script>
</head>
<body>
<div class="user-book-main-r">
		<div class="user-main-rt">
			我的图书
		</div>
		<div class="user-book-main-rm">
			<ul>
			
				<c:forEach items="${pageBean.list }" var="book">
				<li>
					<a href="#">
						<img src="${pageContext.request.contextPath }/${book.photo}">
						<div class="user-book-mask">
							<button onclick="xiangqing()">查看详情</button>
						</div>
					</a>
					<div class="user-book-shop-nb">
						<span class="us-bk-all user-shum">书名:${book.name }</span>
						<span class="us-bk-all user-zuozhe">作者:${book.author }</span>
						<span class="us-bk-all user-chuban">出版社:${book.press }</span>
						<span class="us-bk-all user-riq">上传日期<a href="javascript:;">2017年8月10号</a></span>
						<span class="us-bk-all user-jh">借还状态:<a href="javascript:;">已被借</a></span>
						<span class="us-bk-all user-jyr">
							借阅人:<a href="">未知</a>
							<a class="us-bk-del" href="javascript:;" onclick="deleteBook(${book.id })">删除</a>
						</span>
					</div>
				</li>
			</c:forEach>
			</ul>
			
			
		<div class="user-book-page">
		<div class="user-book-pages">
				
					<!-- 上一页 -->
			<c:if test="${pageBean.currentPage==1 }">
				<a href="javascript:void(0)">&lt;</a>
			</c:if>
			<c:if test="${pageBean.currentPage!=1 }">
				<a href="javascript:void(0);" onclick="query(${pageBean.currentPage-1})">&lt;</a>	
			</c:if>
			<!-- 显示每一页 -->
			<c:forEach begin="1" end="${pageBean.totalPage }" var="page">
				<!-- 判断是否是当前页 -->
				<%-- <c:if test="${page==pageBean.currentPage }">
					<a style="color:yellow"   href="javascript:void(0);">${page }</a>
				</c:if>
				<c:if test="${page!=pageBean.currentPage }">
					<a href="${pageContext.request.contextPath}/bookAction_pageQuery?keyWord=${pageBean.keyWord }&cid=${pageBean.cid }&currentPage=${page }">${page }</a>
				</c:if> --%>
				
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
	</div>
	<form id="query3" action="${pageContext.request.contextPath}/bookAction_pageQuery2" method="post">
		<input id="cid" type="hidden" name="cid" value="">
		<input id="keyWord" type="hidden" name="keyWord" value="">
		<input id="currentPage" type="hidden" name="currentPage" value="">
		<input id="pageSize" type="hidden" name="pageSize" value="">
		
	</form>
</body>
</html>