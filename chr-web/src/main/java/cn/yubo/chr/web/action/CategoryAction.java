package cn.yubo.chr.web.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.yubo.chr.domain.Category;
import cn.yubo.chr.service.CategoryService;
@Controller
@Scope("prototype")
public class CategoryAction extends BaseAction<Category>{
	@Autowired
	private CategoryService categoryService;
	public String findCategory(){
		List<Category> list = categoryService.findCategory();
		this.java2Json(list, new String[]{"books"});
		return NONE;
	} 
}
