package cn.yubo.chr.web.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import com.opensymphony.xwork2.ActionContext;

import cn.yubo.chr.domain.Lost;
import cn.yubo.chr.service.LostService;
import cn.yubo.chr.utils.ChrUtils;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import net.sf.json.util.CycleDetectionStrategy;

@Controller
@Scope("prototype")
public class LostAction extends BaseAction<Lost> {
	private int currentPage;
	@Autowired
	private LostService lostService;

	public LostAction() {
	}

	// 第一次查询丢失
	public String findLost() {

		/*
		 * List<Lost> lostList = lostService.findAll(); //丢失
		 * ChrUtils.getSession().setAttribute("lostList", lostList);
		 * System.out.println(lostList.get(0).getTitle());
		 */
		// 设置初始化
		currentPage = pageBean.getCurrentPage();
		int pageSize = pageBean.getPageSize();
		if (currentPage == 0) {
			pageBean.setCurrentPage(1);
		}
		if (pageSize == 0) {
			pageBean.setPageSize(5);
		}
		lostService.lostPageQuery(pageBean);
		ChrUtils.getSession().setAttribute("lostPageBean", pageBean);
		return "lostList";
	}

	// 加载更多丢失
	
	public void findLostMore() throws IOException {
		System.out.println("ajax");
		System.out.println(currentPage);
		pageBean.setPageSize(5);
		pageBean.setCurrentPage(currentPage);
		lostService.lostPageQuery(pageBean);
		Lost lost = (Lost)pageBean.getList().get(0);
		String[] excludes = {"messages","borrows","books","losts"};
		JsonConfig jsonConfig = new JsonConfig();
		//指定哪些属性不需要转json
		jsonConfig.setExcludes(excludes);
		jsonConfig.setIgnoreDefaultExcludes(false); //设置默认忽略
		jsonConfig.setCycleDetectionStrategy(CycleDetectionStrategy.LENIENT);
		JSONArray jsonArray = JSONArray.fromObject(pageBean.getList().toArray(),jsonConfig);
		String json = jsonArray.toString();
		System.out.println(json);
		ServletActionContext.getResponse().setContentType("text/json;charset=utf-8");
		try {
			ServletActionContext.getResponse().getWriter().print(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	// 第一次查询拾取
	public String findFound() {

		return "lostFound";
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

}
