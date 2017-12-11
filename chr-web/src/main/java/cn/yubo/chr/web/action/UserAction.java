package cn.yubo.chr.web.action;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.yubo.chr.domain.User;
import cn.yubo.chr.service.UserService;
@Controller
@Scope("prototype")
public class UserAction extends BaseAction<User>{
	@Autowired
	private UserService userService;
	public String login(){
		
		User user = userService.login(model);
		if(user != null){
			//将user对象放入session对象 ，跳转到首页
			ServletActionContext.getRequest().getSession().setAttribute("user", user);
			return "index";
		}else{
			//登陆失败，设置错误信息，跳转到登录页面
			this.addActionError("用户名或密码错误");
			return "login";
		}
	}
	//登录
	public String register(){
		//先通过用户名（即手机号）查询数据库返回user，如果有值证明已被注册
		String phone = model.getPhone();
		User user = userService.findUserByPhone(phone);
		
		if(user!=null){
			this.addActionError("手机号已被注册");
			return "register";
		}
		userService.save(model);
		return "login";
	
	}
	//退出登录
	public String logout(){
		ServletActionContext.getRequest().getSession().invalidate();
		return "login";
	}
	
}
