package cn.yubo.chr.web.action;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.yubo.chr.domain.Lost;
import cn.yubo.chr.domain.User;
import cn.yubo.chr.service.LostService;
import cn.yubo.chr.utils.ChrUtils;

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
		ChrUtils.getSession().setAttribute("pageBean", pageBean);
		return "lostList";
	}

	// 加载更多丢失
	public void findLostMore() throws IOException {
		pageBean.setPageSize(5);
		pageBean.setCurrentPage(currentPage);
		lostService.lostPageQuery(pageBean);
		String[] excludes = { "messages", "borrows", "books", "losts" };
		toJson(pageBean, excludes);
	}

	// 第一次查询拾取
	public String findFound() {
		currentPage = pageBean.getCurrentPage();
		int pageSize = pageBean.getPageSize();
		if (currentPage == 0) {
			pageBean.setCurrentPage(1);
		}
		if (pageSize == 0) {
			pageBean.setPageSize(5);
		}
		lostService.foundPageQuery(pageBean);
		ChrUtils.getSession().setAttribute("pageBean", pageBean);
		return "lostList";
	}

	// 加载更多丢失
	public void findFoundMore() throws IOException {
		System.out.println(currentPage);
		pageBean.setPageSize(5);
		pageBean.setCurrentPage(currentPage);
		lostService.foundPageQuery(pageBean);
		String[] excludes = { "messages", "borrows", "books", "losts" };
		toJson(pageBean, excludes);
	}

	public void addLost() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setCharacterEncoding("UTF-8");
		// 获取参数
		String title = request.getParameter("title");
		String details = request.getParameter("details");

		System.out.println("request.getContentType(): " + request.getContentType());
		User user = ChrUtils.getUser();
		if(user == null){
			ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
			ServletActionContext.getResponse().getWriter().print("error");
			return;
		}
		Lost lost = new Lost();
		lost.setId(ChrUtils.getUUID());// id
		lost.setUser(user);// foreign key
		lost.setTitle(title);// 标题
		lost.setDetails(details);// 内容
		lost.setLostOrPick(0);// 丢失
		lost.setDate(ChrUtils.getCurrentDate());// 封装时间
		// lost.setImage(image);
		lostService.save(lost);
	}
	
	public void addFound() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setCharacterEncoding("UTF-8");
		// 获取参数
		String title = request.getParameter("title");
		String details = request.getParameter("details");

		System.out.println("request.getContentType(): " + request.getContentType());
		User user = ChrUtils.getUser();
		if(user == null){
			ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
			ServletActionContext.getResponse().getWriter().print("error");
			return;
		}
		Lost lost = new Lost();
		lost.setId(ChrUtils.getUUID());// id
		lost.setUser(user);// foreign key
		lost.setTitle(title);// 标题
		lost.setDetails(details);// 内容
		lost.setLostOrPick(1);// 拾取
		lost.setDate(ChrUtils.getCurrentDate());// 封装时间
		// lost.setImage(image);
		lostService.save(lost);
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

}
