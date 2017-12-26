function opennew(){
	// 获取页面的高度和宽度
	var sHeight=document.documentElement.scrollHeight;
	var sWidth=document.documentElement.scrollWidth;
	// 可视区域的高度和宽度
	// 如果页面是一个竖向页面，那么可视区域的宽度跟页面宽度一样
	var wHeight=document.documentElement.clientHeight;

	var oMask=document.createElement("div");
		oMask.id="mask";
		oMask.style.height=sHeight+"px";
		oMask.style.width=sWidth+"px";
		document.body.appendChild(oMask);
	var oLogin=document.createElement("div");
		oLogin.id="login1";
		oLogin.innerHTML="<div class='login1con'><div class='login_head'><h4>登录</h4><div id='close' class='glyphicon glyphicon-remove'></div></div><div class='login_con'><input class='login_in1' type='text' name='username'   placeholder='请输入用户名或账号'><input class='login_in2' type='password' name='password' placeholder='请输入密码'><a href='javascript:;' class='login_wj'>忘记密码？</a><input class='login_in3' type='button' name='login' value='登录'><input class='login_in4' id='btnRegsiter1' type='button' name='regsiter' value='立即注册'></div></div>"
		document.body.appendChild(oLogin);
		// 获取login的高度和宽度
	var dHeight=oLogin.offsetHeight;
	var dWidth=oLogin.offsetWidth;
		// 给login的left和top赋值
		oLogin.style.left=(sWidth-dWidth)/2 +"px";
		oLogin.style.top=(wHeight-dHeight)/2 +"px";


		var oClose=document.getElementById("close");
		var oRegsiterclose=document.getElementById("btnRegsiter1");
		oMask.onclick=oClose.onclick=function(){
			document.body.removeChild(oMask);
			document.body.removeChild(oLogin);
		}
		oRegsiterclose.onclick=function(){
			document.body.removeChild(oMask);
			document.body.removeChild(oLogin);
			opennew2();
		}

		
}
 function closebefor(){
 	document.body.removeChild(oMask);
	document.body.removeChild(oLogin);
 }


function opennew2(){
		
	// 获取页面的高度和宽度
	var sHeight=document.documentElement.scrollHeight;
	var sWidth=document.documentElement.scrollWidth;
	// 可视区域的高度和宽度
	// 如果页面是一个竖向页面，那么可视区域的宽度跟页面宽度一样
	var wHeight=document.documentElement.clientHeight;

	var oMask2=document.createElement("div");
		oMask2.id="mask2";
		oMask2.style.height=sHeight+"px";
		oMask2.style.width=sWidth+"px";
		document.body.appendChild(oMask2);
	var oRegsiter=document.createElement("div");
		oRegsiter.id="regsiter1";
		oRegsiter.innerHTML="<div class='regsiter1con'><div class='regsiter_head'><h4>注册</h4><div id='close2' class='glyphicon glyphicon-remove'></div></div><div class='regsiter_con'><input class='regsiter_in1' type='text' name='username'   placeholder='请输入用户名或账号'><input class='regsiter_in2' type='password' name='password' placeholder='请输入密码'><input class='regsiter_in3' type='password' name='password' placeholder='请再次输入密码''><input class='regsiter_in4' type='text' name='phonenum' placeholder='绑定手机号方便找回'><input class='regsiter_in5' type='text' name='yzm' placeholder='请输入验证码'><input class='regsiter_in6' type='button' name='fyzm' value='发送验证码'><input class='regsiter_in7' type='button' name='regsiter' value='立即注册'></div></div>"
		document.body.appendChild(oRegsiter);
		// 获取login的高度和宽度
	var dHeight=oRegsiter.offsetHeight;
	var dWidth=oRegsiter.offsetWidth;
		// 给login的left和top赋值
		oRegsiter.style.left=(sWidth-dWidth)/2 +"px";
		oRegsiter.style.top=(wHeight-dHeight)/2 +"px";


		var oClose=document.getElementById("close2");
		oMask2.onclick=oClose.onclick=function(){
			document.body.removeChild(oMask2);
			document.body.removeChild(oRegsiter);
		}
		
}


window.onload=function(){
	var oBtn=document.getElementById("btnLogin");
	var oBtn2=document.getElementById("btnRegsiter");
		oBtn.onclick=function(){opennew();}
		oBtn2.onclick=function(){opennew2();}
}

