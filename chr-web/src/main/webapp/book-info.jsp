<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="cn.yubo.chr.domain.User"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="keywords" content="南航书院,共享图书,昌航人,南昌航空大学">
	<meta name="description" content="南昌航空大学学生共享图书,南航书院">
	<title>图书详情</title>
	<link rel="shortcut icon" href="images/favicon.ico">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">  
	<link rel="stylesheet" type="text/css" href="css/master.css">
	<link rel="stylesheet" type="text/css" href="css/book.css">
	<link rel="stylesheet" type="text/css" href="css/book-infor.css">
	<!--评论部分 -->
	<link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/comment.css">
    
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/loading.js"></script>
	<script src="js/mask.js"></script>
	<script src="http://ajax.microsoft.com/ajax/jQuery/jquery-1.7.2.min.js"></script>
	<script src="js/to-top.js"></script>
	<!-- <script src="js/bookch.js"></script> -->
	<script type="text/javascript">
		function bookch1(photo){
			var img1=document.getElementById('biml-img');
			img1.src="${pageContext.request.contextPath }/${book.photo}";
			
			
		}
		function bookch2(){
			var img2=document.getElementById('biml-img');
			img2.src="images/book-infor-2.jpg";
		}
		function bookch3(){
			var img3=document.getElementById('biml-img');
			img3.src="images/book-infor-3.jpg";
		}
		function bookch4(){
			var img4=document.getElementById('biml-img');
			img4.src="images/book-infor-4.jpg";
		}
		function bookch5(){
			var img5=document.getElementById('biml-img');
			img5.src="images/book-infor-5.jpg";
		}

	</script>
	
	
</head>
<body>
<!-- 加载动画 -->
<!-- <div class="loading"><div class="pic"></div></div>
 --><!-- 回到顶部 -->
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
<div id="book-info-main">
	<div class="book_nav">
		<div class="book-nav-l">
			<div class="book-nav-button">
				<span class="book-nav-ls">
				分类&nbsp;<span class="glyphicon glyphicon-menu-down" style="font-size: 14px"></span>
				</span>
			<div class="book-nav-le">
				<ul>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
				</ul>
				<ul>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
				</ul>
				<ul>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
				</ul>
				<ul>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
					<li><a href="">小说</a></li>
				</ul>
			</div>
			</div>
		</div>
		<div class="book-nav-r">
			<form class="book-nav-rb">
				<input type="text" name="" class="search-text" placeholder="搜索书名或作者名"><input type="submit" name="" class="search-button" value=" ">
			</form>
		</div>
	</div>
	<div class="book-info">
		<div class="book-info-main">
			<div class="biml">
				<div class="biml-t"><img id="biml-img" src="${pageContext.request.contextPath }/${book.photo}"></div>
				<div class="biml-b">
					<ul>
						<li onmouseover="bookch1('${book.photo}')"><img src="${pageContext.request.contextPath }/${book.photo}"></li>
						<li onmouseover="bookch2()"><img src="images/book-infor-2.jpg"></li>
						<li onmouseover="bookch3()"><img src="images/book-infor-3.jpg"></li>
						<li onmouseover="bookch4()"><img src="images/book-infor-4.jpg"></li>
						<li onmouseover="bookch5()"><img src="images/book-infor-5.jpg"></li>
					</ul>
				</div>
			</div>
			<div class="bimr">
			<p class="book-inq">
				
				<span class="book-font">书名:&nbsp;</span><span style="color:#08AF96">${book.name }</span><br><br>
				<span>出版社:</span><span style="color:#08AF96">${book.press }</span><br><br>
				<span>出版日期:</span><span style="color:#08AF96">2017年8月</span><br><br>
				<span>本书介绍:</span><span style="color:#08AF96">&nbsp;${book.description }</span><br><br>
				<span>贡献人:</span><a href="#">${book.user.name }</a><br><br>
				<span>借阅状态:</span><a href="#">可借</a>
			</p>
			</div>
		</div>
	</div>
</div>


<!--评论-->
<div class="commentAll">
    <!--添加评论区域 begin-->
    <div class="reviewArea clearfix">
        <textarea class="content comment-input" placeholder="书友评论&hellip;" onkeyup="keyUP(this)"></textarea>
        <a href="javascript:;" class="plBtn">评论</a>
       
    </div>
    <!--添加评论区域 end-->
    <!--评论列表区域 begin-->
    <div class="comment-show">
     	<c:forEach items="${result }" var="comment">
    	<c:if test="${comment.message==null }">
        <div class="comment-show-con clearfix">
            <div class="comment-show-con-img pull-left"><img src="${comment.user.head }" alt=""></div>
            <div class="comment-show-con-list pull-left clearfix">
                <div class="pl-text clearfix">
                    <a href="#" class="comment-size-name">${comment.user.nick } : </a>
                  	 
                    <span class="my-pl-con">&nbsp;${comment.messageContent }</span>
                </div>
                <div class="date-dz">
                    <span class="date-dz-left pull-left comment-time">${comment.messageTime }</span>
                    <div class="date-dz-right pull-right comment-pl-block">
                        <a href="javascript:;" class="removeBlock">删除</a>
                        <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">
                        	回复     
                        	<!--  隐藏域为此评论的唯一标识 -->
                    		<input type="hidden" id="commentNumber" name="commentNumber" value="${comment.messageNum }" /> 
                        	                  
                        </a>
                        <span class="pull-left date-dz-line">|</span>
                        <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a>
                    </div>
                </div>
                <!-- 评论回复区域 -->
                <div class="hf-list-con">
                	<c:forEach items="${result }" var="comment1">
    				<c:if test="${comment1.message!=null}">
    				<c:if test="${comment1.rootNumber==comment.rootNumber }">
               
                	<div class="all-pl-con">
                		<div class="pl-text hfpl-text clearfix">
                			<a href="#" class="comment-size-name">${comment1.user.nick} : </a>
                			<span class="my-pl-con">回复<a href="#" class="atName">@${comment1.message.user.nick }</a> : ${comment1.messageContent }</span>
                		</div>
                		<div class="date-dz">
                			 <span class="date-dz-left pull-left comment-time">2017-12-01 11:51:10.0</span> 
                			 <div class="date-dz-right pull-right comment-pl-block"> 
                			 	<a href="javascript:;" class="removeBlock">删除</a> 
                			 	<a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">
                			 		回复
                			 		<!--  隐藏域为此评论的唯一标识 -->
                    				<input type="hidden" id="commentNumber" name="commentNumber" value="${comment1.messageNum }" /> 
                			 		
                			 	</a> 
                			 	<span class="pull-left date-dz-line">|</span> 
                			 	<a href="javascript:;" class="date-dz-z pull-left">
                			 		<i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)
                			 	</a> 
                			 </div> 
                		</div>
                	</div>
                
               	   </c:if>
                   </c:if>
                   </c:forEach>
                </div>
                <!-- 评论回复区域end -->
            </div>
        </div>
     </c:if>
     </c:forEach>
    </div>
    <!--评论列表区域 end-->
 </div>
      
       
        
    
    




<script type="text/javascript" src="js/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="js/jquery.flexText.js"></script>
<!--textarea高度自适应-->
<script type="text/javascript">
    $(function () {
        $('.content').flexText();
    });
</script>
<!--textarea限制字数-->
<script type="text/javascript">
    function keyUP(t){
        var len = $(t).val().length;
        if(len > 139){
            $(t).val($(t).val().substring(0,140));
        }
    }
</script>
<!--点击评论创建评论条-->
<script type="text/javascript">
    $('.commentAll').on('click','.plBtn',function(){
        var myDate = new Date();
        //获取当前年
        var year=myDate.getFullYear();
        //获取当前月
        var month=myDate.getMonth()+1;
        //获取当前日
        var date=myDate.getDate();
        var h=myDate.getHours();       //获取当前小时数(0-23)
        var m=myDate.getMinutes();     //获取当前分钟数(0-59)
        if(m<10) m = '0' + m;
        var s=myDate.getSeconds();
        if(s<10) s = '0' + s;
        var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
       
        //获取输入内容
        var oSize = $(this).siblings('.flex-text-wrap').find('.comment-input').val();
        <%-- var book="<%=session.getAttribute("book")%>";  --%>
    	//获取评论的bookID
        var book_id = '${sessionScope.book.id}';
        <%
			User u = (User)session.getAttribute("user");
        %>
        var user = '<%=u%>';
       
      	if(user!='null'){
      		$.post('${pageContext.request.contextPath }/messageAction_add',{
            	time:now,
            	messageContent:oSize,
            	bookId: book_id
            },function(data){
            			alert("评论成功");
            			 //动态创建评论模块
            	      	 var oHtml = '<div class="comment-show-con clearfix"><div class="comment-show-con-img pull-left"><img src="'+data.head+'" alt=""></div> <div class="comment-show-con-list pull-left clearfix"><div class="pl-text clearfix"> <a href="#" class="comment-size-name">'+data.nick+': </a> <span class="my-pl-con">&nbsp;'+ oSize +'</span> </div> <div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"><a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复<input type="hidden" id="commentNumber" name="commentNumber" value="'+data.messageNum+'" /> </a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div><div class="hf-list-con"></div></div> </div>';
            			 if(oSize.replace(/(^\s*)|(\s*$)/g, "") != ''){
            	        	 $('.plBtn').parents('.reviewArea ').siblings('.comment-show').append(oHtml);
            	        	 $('.plBtn').siblings('.flex-text-wrap').find('.comment-input').prop('value','').siblings('pre').find('span').text('');
            	        }
            		
            	  
            });
      	}else{
      		//未登录
      		var c=window.confirm("您还未登录，是否登录？");
			if(c){
				window.location.href="${pageContext.request.contextPath }/login.jsp";
			} 	
      	} 
        console.log(oSize);
       
    });
</script>
<!--点击回复动态创建回复块-->
<script type="text/javascript">
    $('.comment-show').on('click','.pl-hf',function(){
        //获取父评论唯一标识
          var fathercomment = $(this).find('#commentNumber').val();
    	//获取回复人的名字
        var fhName = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
        //回复@
        var fhN = '回复@'+fhName;
        //var oInput = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.hf-con');
        var fhHtml = '<div class="hf-con pull-left"> <textarea class="content comment-input hf-input" placeholder="" onkeyup="keyUP(this)"></textarea> <a href="javascript:;" class="hf-pl">评论<input type="hidden" id="commentNumber" name="commentNumber" value="'+fathercomment+'" />  </a></div>';
        //显示回复
        if($(this).is('.hf-con-block')){
            $(this).parents('.date-dz-right').parents('.date-dz').append(fhHtml);
            $(this).removeClass('hf-con-block');
            $('.content').flexText();
            $(this).parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding','6px 15px');
            //console.log($(this).parents('.date-dz-right').siblings('.hf-con').find('.pre'))
            //input框自动聚焦
            $(this).parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus().val(fhN);
        }else {
            $(this).addClass('hf-con-block');
            $(this).parents('.date-dz-right').siblings('.hf-con').remove();
        }
    });
</script>
<!--评论回复块创建-->
<script type="text/javascript">
    $('.comment-show').on('click','.hf-pl',function(){
        var oThis = $(this);
        var myDate = new Date();
        //获取当前年
        var year=myDate.getFullYear();
        //获取当前月
        var month=myDate.getMonth()+1;
        //获取当前日
        var date=myDate.getDate();
        var h=myDate.getHours();       //获取当前小时数(0-23)
        var m=myDate.getMinutes();     //获取当前分钟数(0-59)
        if(m<10) m = '0' + m;
        var s=myDate.getSeconds();
        if(s<10) s = '0' + s;
        var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
        
        //获取输入的所有内容，包括@和对方名字
        var oHfVal = $(this).siblings('.flex-text-wrap').find('.hf-input').val();
        console.log(oHfVal)
        //对方名称
        var atName = $(this).parents('.hf-con').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
        var oAllVal = '回复@'+atName;
        if(oHfVal.replace(/^ +| +$/g,'') == '' || oHfVal == oAllVal){

        }else {
               
                var hfContent;//回复内容
        		var oAt = '';//回复@对方名字:回复内容
                var hfName = '';//回复者名字
                var arr;
                var ohfNameArr;
               
                if(oHfVal.indexOf("@") == -1){
                   	atName = '';
                    hfContent = oHfVal;
                }else {
                    arr = oHfVal.split(':');
                    ohfNameArr = arr[0].split('@');
                    hfContent = arr[1];
                    atName = ohfNameArr[1];
                }

                if(atName == ''){
                    oAt = hfContent;
                }else {
                    oAt = '回复<a href="#" class="atName">@'+atName+'</a> : '+hfContent;
                }
              
                //从session域中获取当前用户的ID
                <%
    			User user = (User)session.getAttribute("user");
           		 %>
            	var user = '<%=user%>';
            	if(user!='null'){
            		  //从session域中获取回复者名字,被回复评论的唯一标识，获得书籍ID
                    	hfName='${sessionScope.user.nick}'; 
                    	var book_id = '${sessionScope.book.id}';
                    	 var fathercomment = $(this).find("#commentNumber").val(); 
                    	alert(fathercomment);
                    	
            		 $.post('${pageContext.request.contextPath }/messageAction_add',{
                     	time:now,
                     	messageContent:hfContent,
                     	bookId: book_id,
                     	fatherMessage:fathercomment
                     	
                     },function(data){
                    	 alert("评论成功");
            			 var oHtml = '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix"><a href="#" class="comment-size-name">'+hfName+' : </a><span class="my-pl-con">'+oAt+'</span></div><div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"> <a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复<input type="hidden" id="commentNumber" name="commentNumber" value="'+data.messageNum+'" /> </a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div></div>';
                         oThis.parents('.hf-con').parents('.comment-show-con-list').find('.hf-list-con').css('display','block').prepend(oHtml) && oThis.parents('.hf-con').siblings('.date-dz-right').find('.pl-hf').addClass('hf-con-block') && oThis.parents('.hf-con').remove();
                         
                         ////
                     });
            	}else{
              		//未登录
              		var c=window.confirm("您还未登录，是否登录？");
        			if(c){
        				window.location.href="${pageContext.request.contextPath }/login.jsp";
        			} 	
              	} 
            	
            	/* 
                $.post('${pageContext.request.contextPath }/messageAction_add',{
                	time:now,
                	messageContent:hfContent,
                	bookId: book_id,
                	fatherMessage:fathercomment
                	
                },function(data){
                		if(data=='null'){
                			var c=window.confirm("您还未登录，是否登录？");
                			if(c){
                				window.location.href="${pageContext.request.contextPath }/login.jsp";
                			} 	
                		}else{
                			alert("评论成功");
                			 var oHtml = '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix"><a href="#" class="comment-size-name">'+hfName+' : </a><span class="my-pl-con">'+oAt+'</span></div><div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"> <a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div></div>';
                             oThis.parents('.hf-con').parents('.comment-show-con-list').find('.hf-list-con').css('display','block').prepend(oHtml) && oThis.parents('.hf-con').siblings('.date-dz-right').find('.pl-hf').addClass('hf-con-block') && oThis.parents('.hf-con').remove();
                        
                		}
                		
                }); */
               
            
                    
                   
        }
    });
</script>
<!--删除评论块-->
<script type="text/javascript">
    $('.commentAll').on('click','.removeBlock',function(){
        var oT = $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con');
        if(oT.siblings('.all-pl-con').length >= 1){
            oT.remove();
        }else {
            $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con').parents('.hf-list-con').css('display','none')
            oT.remove();
        }
        $(this).parents('.date-dz-right').parents('.date-dz').parents('.comment-show-con-list').parents('.comment-show-con').remove();

    })
</script>
<!--点赞-->
<script type="text/javascript">
    $('.comment-show').on('click','.date-dz-z',function(){
        var zNum = $(this).find('.z-num').html();
        if($(this).is('.date-dz-z-click')){
            zNum--;
            $(this).removeClass('date-dz-z-click red');
            $(this).find('.z-num').html(zNum);
            $(this).find('.date-dz-z-click-red').removeClass('red');
        }else {
            zNum++;
            $(this).addClass('date-dz-z-click');
            $(this).find('.z-num').html(zNum);
            $(this).find('.date-dz-z-click-red').addClass('red');
        }
    })
</script>
<!-- 上面是copy的评论源码 -->
<!-- 页尾 -->
<div id="footer">
	<p id="footer_p">&#169;2017All Rights Reserved</p>
</div>
</body>
</html>
