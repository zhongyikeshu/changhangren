<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>失物招领</title>
	<link rel="shortcut icon" href="images/890.ico">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/lost and found/commen.css">
	<link rel="stylesheet" type="text/css" href="css/lost and found/goods1.css">
	<script src="js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript">
		function sec4b(){
			$('.sec4').toggleClass('f-hide');
		}
		window.onload=function(){
			document.querySelector('#upnew').onclick=function(){
				$('.goodsinfo').toggleClass('hid');
			}
		}
		
		function showPreview1(source) {  
            var file = source.files[0];  
            if(window.FileReader) {  
                var fr = new FileReader();  
                fr.onloadend = function(e) {  
                    document.getElementById("portrait1").src = e.target.result;  
                };  
                fr.readAsDataURL(file);  
            }  
        }  
        function showPreview2(source) {  
            var file = source.files[0];  
            if(window.FileReader) {  
                var fr = new FileReader();  
                fr.onloadend = function(e) {  
                    document.getElementById("portrait2").src = e.target.result;  
                };  
                fr.readAsDataURL(file);  
            }  
        }  
         function showPreview3(source) {  
            var file = source.files[0];  
            if(window.FileReader) {  
                var fr = new FileReader();  
                fr.onloadend = function(e) {  
                    document.getElementById("portrait3").src = e.target.result;  
                };  
                fr.readAsDataURL(file);  
            }  
        }  
         
        //加载更多
        function loadMore(page){
        	//alert();
        	var i = "${pageBean.list[0].lostOrPick}";
        	var url = "";
        	if(i == 0){
        		url = "${pageContext.request.contextPath }/lostAction_findLostMore";
        	}
        	else{
        		url = "${pageContext.request.contextPath }/lostAction_findFoundMore";
        	}
        	//alert();
        	$.ajax({  
                   type: "post",  
                   url: url,  
                   data: "currentPage=" + page,  
                   dataType: "json", 
                   success: function (data) { 
                	   $(".load_more").attr("style","display:none");
                	   getMore(data);
                   }  
               }); 
        	//alert();
        }
        function getMore(data){
        	var total = 0;
        	if(data[0].currentPage!=data[0].totalPage){
        		total = data[0].pageSize;
        	}
        	else{
        		total = data[0].total%data[0].pageSize;
        	}
        	//alert(data[0].list[0].user.head);
        	//alert(total);
        	for(var i = 0;i<total;i++){
        		var mydiv = "<div class='g-wrap'>"+
        		"<div class='n-msgnt n-msgnt-1 n-msgnt-2 j-flag'>"+
        		"<div class='item f-cb'>"+
        		"<!--头像部分（左侧）-->"+
        		"<a href='#' class='ava'><img src='${pageContext.request.contextPath }/"+data[0].list[i].user.head+"'></a>"+
        		"<!--主体(右侧)-->"+
        		"<div class='cont cont-1'>"+
        		"<!--物品关键词-->"+
        		"<div class='titl'>"+data[0].list[i].title+"</div>"+
        		"<!--昵称、发布时间-->"+
        		"<div class='sec1'>"+
        		"<div class='time s-fc3'>"+data[0].list[i].date+"&nbsp;<i class='u-icn u-icn-57'></i></div>"+
        		"<div class='mn'><a href='' class='s-fc7 f-fw1'>"+data[0].list[i].user.nick+"</a></div>"+
        		"</div>"+
        		"<!--发表的内容-->"+
        		"<div class='sec3 f-brk'>"+data[0].list[i].details+"</div>";
        		if(data[0].list[i].image!=""){
        			mydiv = mydiv + "<div class='goodsimg'>"+
				            		"<img src='${pageContext.request.contextPath }/"+data[0].list[i].image+"'>"+
				            		"</div>";
        		}
        		mydiv = mydiv + "<!--评论-->"+
			        		"<div class='sec2'>"+
			        		"<div class='oper'>"+
			        		"<a data-type='reply' href='javascript:void(0)' class='s-fc7' onclick='sec4b()'>回复</a>"+
			        		"</div>"+
			        		"<p class='s-fc4'>我的评论：<a class='s-fc4 f-brk' href=''>我没捡到</a></p>"+
			        		"</div>"+
			        		"<!--小三角-->"+
			        		"<div class='corr u-arr u-arr-3'>"+
			        		"<em class='arrline'>◆</em>"+
			        		"</div>"+
			        		"<!--隐藏的点击回复-->"+
			        		"<div class='sec4 f-hide'>"+
			        		"<div>"+
			        		"<div class='m-cmmtipt f-cb f-pr'>"+
			        		"<div class='u-txtwrap holder-parent f-pr' style='display: block;'>"+
			        		"<textarea class='u-txt area j-flag' placeholder='' id=''></textarea>"+
			        		"</div>"+
			        		"<div class='btns f-cb f-pr'>"+
			        		"<i class='icn u-icn u-icn-36 j-flag' id=''></i>"+
			        		"<i class='icn u-icn u-icn-41 j-flag' id=''></i>"+
			        		"<a class='btn u-btn u-btn-1 j-flag' href='javascript:void(0)' id=''>回复</a>"+
			        		"<span class='zs s-fc4 j-flag'>128</span>"+
			        		"</div></div></div></div></div></div></div>"+
			        		"<div class='u-page j-flag'></div>"+
			        		"</div>";
        		$("#mid-bot").append(mydiv);
        	}
        	//alert();
        	var mydiv = "";
        	if(data[0].currentPage!=data[0].totalPage){
        		var temp = data[0].currentPage+1;
        		mydiv = "<div class='load_more' style='text-align:center;'>"+
    						"<a href='javascript:void(0);' onclick='loadMore("+temp+")' class='glyphicon glyphicon-menu-down' style='font-size:30px;text-decoration:none;'></a>"+
    						"<br><br>"+
    						"</div>";
        	}
        	else{
        		mydiv = "<div class='load_more' style='text-align:center;'>"+
							"<p style='font-size:20px;'>~我是有底线的~</p>"+
							"<br><br>"+
							"</div>";
        	}
        	$("#mid-bot").after(mydiv);
        }
        
        function addLost(){
        	var title = $("#goodsTitle").html();
        	var details = $("#goodsDetails").html();
        	var data = "title="+title+"&details="+details;
        	var url = "${pageContext.request.contextPath }/lostAction_addLost";
        	var formData = new FormData();//初始化一个FormData对象
            formData.append("image", $("#goodsImage")[0].files[0]);//将文件塞入FormData
            formData.append("title", title);
            formData.append("details", details);
            $.ajax({
                url: url,
                type: "post",
                //dataType: "text",
                data: formData,
                processData: false,  // 告诉jQuery不要去处理发送的数据
                contentType: false,   // 告诉jQuery不要去设置Content-Type请求头
                success: function (responseText) {
                	if(responseText=="error"){
                    	window.location.href = "${pageContext.request.contextPath }/userAction_login";
                	}
                	else{
                		alert("上传成功!");
                    	window.location.href = "${pageContext.request.contextPath }/lostAction_findLost";
                	}
                }
            });
        }
        function addFound(){
        	var title = $("#goodsTitle").html();
        	var details = $("#goodsDetails").html();
        	var data = "title="+title+"&details="+details;
        	var url = "${pageContext.request.contextPath }/lostAction_addFound";
        	var formData = new FormData();//初始化一个FormData对象
            formData.append("image", $("#goodsImage")[0].files[0]);//将文件塞入FormData
            formData.append("title", title);
            formData.append("details", details);
            $.ajax({
                url: url,
                type: "post",
                //dataType: "text",
                data: formData,
                processData: false,  // 告诉jQuery不要去处理发送的数据
                contentType: false,   // 告诉jQuery不要去设置Content-Type请求头
                success: function (responseText) {
                	if(responseText=="error"){
                    	window.location.href = "${pageContext.request.contextPath }/userAction_login";
                	}
                	else{
                		alert("上传成功!");
                    	window.location.href = "${pageContext.request.contextPath }/lostAction_findFound";
                	}
                },
            });
        }
	</script>
</head>
<body>
	<!-- 加载动画 -->
	<!-- <div class="loading"><div class="pic"></div></div> -->
	<!--顶部导航栏开始-->
	<div id="ban">
		<div class="banlog"><img src="images/2330.png" alt="昌航人" title="昌航人"></div>
		<div class="bannav">
			<ul>
				<li><a href="#">首页</a></li>
				<li><a href="#">关于</a></li>
				<li><a href="#">联系</a></li>
				<li><a href="#">我的</a></li>
				<li><a href="#">退出</a></li>
			</ul>
		</div>
	</div>
	<!--顶部导航栏结束-->
	<!--页面头部开始-->
	<div id="header">
		<div class="header-mid">
			<span>失物招领</span>
			<div class="hmc"><img src="images/line.png"></div>
		</div>
	</div>
	<!--页面头部结束-->
	<!--分类、搜索开始-->
	<div id="mid-top">
		<a href="${pageContext.request.contextPath }/lostAction_findLost"><button class="btn btn1" onmouseover="this.style.color='#FFF';">失物</button></a>
		<a href="${pageContext.request.contextPath }/lostAction_findFound"><button class="btn btn2" onmouseover="this.style.color='#FFF';">招领</button></a>
		<button class="btn upload" onmouseover="this.style.color='#FFF';" id="upnew">
			<span class="glyphicon glyphicon-plus"></span>
		</button>
		<!--上传内容开始-->
		<div class="goodsinfo hid">
			<div id="goodsTitle" class="gootit" contenteditable="true" data-text="请输入物品名称"></div>
			<div id="goodsDetails" class="goocon" contenteditable="true" data-text="请输入物品详情、丢失或拾得地址、时间等"></div>
			<div class="gooimgs">
				<div class="imgone">
					<label>
						<input id="goodsImage" type="file" name="file" onchange="showPreview1(this)" style="left:-9999px;position:absolute;" />
						<span>添加图片</span> 
					</label> 
    				<img id="portrait1" src="" style="width: auto;height: 110px;max-width: 100%;"> 
				</div>
			</div>
			<div class="dooup">
				<button onclick="addLost()">失物</button>
				<button onclick="addFound()">招领</button>
			</div>
		</div>
		<!--上传内容结束-->
		<div class="sea">
			<input class="seac" type="text" name="" placeholder="输入物品名称">
			<span class="glyphicon glyphicon-search"></span>
		</div>
	</div>
	<!--分类、搜索结束-->
	<!--失物或招领主体开始-->
	<div id="mid-bot">
		<c:forEach items="${pageBean.list }" var="lost">
			<!--丢失一-->
			<div class="g-wrap">
				<div class="n-msgnt n-msgnt-1 n-msgnt-2 j-flag">
					<div class="item f-cb">
						<!--头像部分（左侧）-->
						<a href="#" class="ava"><img src="${pageContext.request.contextPath }/${lost.user.head}"></a>
						<!--主体(右侧)-->
						<div class="cont cont-1">
							<!--物品关键词-->
							<div class="titl">${lost.title }</div>
							<!--昵称、发布时间-->
							<div class="sec1">
								<div class="time s-fc3">${lost.date }&nbsp;<i class="u-icn u-icn-57"></i></div>
								<div class="mn"><a href="" class="s-fc7 f-fw1">${ lost.user.nick}</a></div>
							</div>
							<!--发表的内容-->
							<div class="sec3 f-brk">${lost.details }</div>
							<!--物品图片-->
							<c:if test="${lost.image!=null }">
								<div class="goodsimg">
									<img src="${pageContext.request.contextPath }/${lost.image }">
								</div>
							</c:if>
							<!--评论-->
							<div class="sec2">
								<div class="oper">
									<a data-type="reply" href="javascript:void(0)" class="s-fc7" onclick="sec4b()">回复</a>
								</div>
								<p class="s-fc4">我的评论：<a class="s-fc4 f-brk" href="">我没捡到</a></p>
							</div>
							<!--小三角-->
							<div class="corr u-arr u-arr-3">
								<em class="arrline">◆</em>
							</div>
							<!--隐藏的点击回复-->
							<div class="sec4 f-hide">
								<div>
									<div class="m-cmmtipt f-cb f-pr">
										<div class="u-txtwrap holder-parent f-pr" style="display: block;">
											<textarea class="u-txt area j-flag" placeholder="" id=""></textarea>
										</div>
										<div class="btns f-cb f-pr">
											<i class="icn u-icn u-icn-36 j-flag" id=""></i>
											<i class="icn u-icn u-icn-41 j-flag" id=""></i>
											<a class="btn u-btn u-btn-1 j-flag" href="javascript:void(0)" id="">回复</a>
											<span class="zs s-fc4 j-flag">128</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="u-page j-flag"></div>
			</div>
		</c:forEach>
		
	</div>
	
	<!-- 加载更多 -->
	<div class="load_more" style="text-align:center;">
		<c:if test="${pageBean.currentPage!=pageBean.totalPage }">
			<a href="javascript:void(0);" onclick="loadMore(${pageBean.currentPage+1})" class="glyphicon glyphicon-menu-down" style="font-size:30px;text-decoration:none;"></a>
		</c:if>
		<c:if test="${pageBean.currentPage==pageBean.totalPage }">
			<p style="font-size:20px;">~我是有底线的~</p>
		</c:if>
		<br><br>
	</div>
	
	<!--失物或招领主体结束-->
	<!--底部开始-->
	<div id="footer">
    	<div class="inner clearfix">
    	    <div class="footer_part tl">
    	        <h3>SecPluse</h3>
    	        <ul>
    	            <li><a target="_blank" href="/aboutus#about_Us">关于我们</a></li>
    	            <li><a target="_blank" href="/aboutus#join_Us">加入我们</a></li>
    	            <li><a target="_blank" href="/aboutus#contact_Us">联系我们</a></li>
    	        </ul>
    	    </div>
    	    <div class="footer_part tc">
    	        <h3>关注我们</h3>
    	        <ul>
    	            <li class="qrcode">
    	                <a target="_blank" href="javascript:void:(0)">官方微信</a>
    	                <!-- <img src="https://www.secpulse.com/wp-content/themes/secpulse2017/img/qrcode.jpg" alt="安全脉搏"> -->
    	                <div class="triangle"></div>
    	            </li>
    	            <li><a target="_blank" href="https://weibo.com/311057789">新浪微博</a></li>
    	            <li><a target="_blank" href="https://zhuanlan.zhihu.com/secpulse">知乎专栏</a></li>
    	        </ul>
    	    </div>
    	   <!--  <div class="footer_part tr">
    	        <h3 style="margin-right:70px;">支持单位</h3>
    	        <img src="https://www.secpulse.com/wp-content/themes/secpulse2017/img/logo_footer.png" alt="安识科技">
    	    	</div> -->
    	</div>
    	<div class="inner_bot"><p>©2013-2017 安全脉搏  赣ICP备16016474号</p></div>
	</div>
	<!--底部结束-->
</body>
</html>