package cn.yubo.chr.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

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
	
	//返回ID
	public static String getUUID(){
		return UUID.randomUUID().toString();
	}
	
	//获取当前时间
	public static String getCurrentDate(){
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss aa");
		return sdf.format(date);
	}
}
