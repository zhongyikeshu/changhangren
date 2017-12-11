package cn.yubo.chr.web.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

import cn.yubo.chr.domain.User;
import cn.yubo.chr.utils.ChrUtils;

public class ChrLoginInterceptor extends MethodFilterInterceptor{


	protected String doIntercept(ActionInvocation invocation) throws Exception {
		User user = ChrUtils.getUser();
		if(user == null){
			//未登录则跳转到登录页面
			return "login";
		}
		//登录则放行
		return invocation.invoke();
	}

}
