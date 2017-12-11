package cn.yubo.chr.utils;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.yubo.chr.domain.User;



public class ChrUtils {
	//获取session
	public static HttpSession getSession(){
		return ServletActionContext.getRequest().getSession();
	}
	//获取User对象
	public static User getUser(){
		
		return (User) getSession().getAttribute("user");
		
	}
}
