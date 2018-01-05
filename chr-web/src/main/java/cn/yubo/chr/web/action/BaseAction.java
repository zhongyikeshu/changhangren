package cn.yubo.chr.web.action;

import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.DetachedCriteria;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.yubo.chr.domain.User;
import cn.yubo.chr.utils.PageBean;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import net.sf.json.util.CycleDetectionStrategy;

public class BaseAction<T> extends ActionSupport implements ModelDriven<T>{
	protected T model;
	protected PageBean pageBean = new PageBean();
	protected DetachedCriteria detachedCriteria = null;
	public void setPage(int page) {
		pageBean.setCurrentPage(page);
	}
	public void setPageSize(int pageSize) {
		pageBean.setPageSize(pageSize);	
	}
	public void setCid(String cid) {
		pageBean.setCid(cid);
	}
	public void setKeyWord(String keyWord){
		pageBean.setKeyWord(keyWord);
	}
	public void setCurrentPage(int currentPage){
		pageBean.setCurrentPage(currentPage);
	}
	public void java2Json(Object o,String[] excludes){
		JsonConfig jsonConfig = new JsonConfig();
		//指定哪些属性不需要转json
		jsonConfig.setExcludes(excludes);
		String json = JSONObject.fromObject(o,jsonConfig).toString();
		ServletActionContext.getResponse().setContentType("text/json;charset=utf-8");
		try {
			ServletActionContext.getResponse().getWriter().print(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public void java2Json(List list,String[] excludes){
		JsonConfig jsonConfig = new JsonConfig();
		//指定哪些属性不需要转json
		jsonConfig.setExcludes(excludes);
		jsonConfig.setIgnoreDefaultExcludes(false); //设置默认忽略
		jsonConfig.setCycleDetectionStrategy(CycleDetectionStrategy.LENIENT);
		String json = JSONArray.fromObject(list,jsonConfig).toString();
		System.out.println(json);
		ServletActionContext.getResponse().setContentType("text/json;charset=utf-8");
		try {
			ServletActionContext.getResponse().getWriter().print(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public BaseAction(){
		ParameterizedType genericSuperclass = (ParameterizedType) this.getClass().getGenericSuperclass();
		Type[] actualTypeArguments = genericSuperclass.getActualTypeArguments();
		Class<T> entityClass = (Class<T>) actualTypeArguments[0];
		detachedCriteria = DetachedCriteria.forClass(entityClass);
		pageBean.setDetachedCriteria(detachedCriteria);
		//通过反射创建对象
		try {
			model = entityClass.newInstance();
		} catch (InstantiationException e) {
			
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			
			e.printStackTrace();
		}
	}
	
	public void toJson(Object object, String[] excludes){
		JsonConfig jsonConfig = new JsonConfig();
		//指定哪些属性不需要转json
		jsonConfig.setExcludes(excludes);
		jsonConfig.setIgnoreDefaultExcludes(false); //设置默认忽略
		jsonConfig.setCycleDetectionStrategy(CycleDetectionStrategy.LENIENT);
		JSONArray jsonArray = JSONArray.fromObject(pageBean,jsonConfig);
		String json = jsonArray.toString();
		System.out.println(json);
		ServletActionContext.getResponse().setContentType("text/json;charset=utf-8");
		try {
			ServletActionContext.getResponse().getWriter().print(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	public T getModel() {
		
		return model;
	}
	
}
