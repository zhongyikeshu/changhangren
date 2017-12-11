package cn.yubo.chr.web.action;


import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.hibernate.criterion.Restrictions;
import org.hibernate.sql.ordering.antlr.NodeSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;


import cn.yubo.chr.domain.Book;
import cn.yubo.chr.domain.Message;
import cn.yubo.chr.domain.Node;
import cn.yubo.chr.domain.User;
import cn.yubo.chr.service.BookService;
import cn.yubo.chr.utils.ChrUtils;
import cn.yubo.chr.utils.MessagesUtils;
import cn.yubo.chr.utils.NodesUtils;
import cn.yubo.chr.utils.PageBean;
@Controller
@Scope("prototype")
public class BookAction extends BaseAction<Book>{
	@Autowired
	private BookService bookService;
	public String findAllList(){
		//查询数据库，将所有图书信息返回，并用json写回页面
		int currentPage = pageBean.getCurrentPage();
		int pageSize = pageBean.getPageSize();
		if(currentPage == 0) 
			pageBean.setCurrentPage(1);
		if(pageSize == 0)
			pageBean.setPageSize(20);
		//未被逻辑删除的
		detachedCriteria.add(Restrictions.eq("deleted", "0"));
		pageBean.setKeyWord("");
		bookService.pageQuery(pageBean);
		ChrUtils.getSession().setAttribute("pageBean", pageBean);		
		return "bookList";
	}
	//通过分类Id分类查询图书列表
	public  String bookListByCid(){
		//查询数据库，将此分类下图书信息返回，并用json写回页面
		
		//将pageBean值初始化，当前页 1， 每页显示数目 20， 关键字设置为空，
		int currentPage = pageBean.getCurrentPage();
		int pageSize = pageBean.getPageSize();
		if(currentPage == 0) 
			pageBean.setCurrentPage(1);
		if(pageSize == 0)
			pageBean.setPageSize(20);
		//未被逻辑删除
		detachedCriteria.add(Restrictions.eq("deleted", "0"));
		pageBean.setKeyWord("");
		bookService.pageQuery(pageBean);
		ChrUtils.getSession().setAttribute("pageBean", pageBean);		
		return "bookList";
	}
	public String bookListByKeyWord(){
		//查询数据库，将此关键字下图书信息返回，并用json写回页面
		
		//将pageBean值初始化，当前页 1， 每页显示数目 20， 分类设置为空
		int currentPage = pageBean.getCurrentPage();
		int pageSize = pageBean.getPageSize();
		if(currentPage == 0) 
			pageBean.setCurrentPage(1);
		if(pageSize == 0)
			pageBean.setPageSize(20);
		//未被逻辑删除
		detachedCriteria.add(Restrictions.eq("deleted", "0"));
		pageBean.setCid("");
		bookService.pageQuery(pageBean);
		ChrUtils.getSession().setAttribute("pageBean", pageBean);		
		return "bookList";
	}
	public String pageQuery(){
		//查询数据库，将此关键字,此分类下图书信息返回，并用json写回页面
		int pageSize = pageBean.getPageSize();
		if(pageSize == 0)
			pageBean.setPageSize(20);
		//未被逻辑删除
		detachedCriteria.add(Restrictions.eq("deleted", "0"));
		bookService.pageQuery(pageBean);
		ChrUtils.getSession().setAttribute("pageBean", pageBean);		
		return "bookList";
		
	}
	//查询我上传的图书信息
	public String myBook(){
		User user = ChrUtils.getUser();
		int currentPage = pageBean.getCurrentPage();
		int pageSize = pageBean.getPageSize();
		if(currentPage == 0) 
			pageBean.setCurrentPage(1);
		if(pageSize == 0)
			pageBean.setPageSize(8);
		//未被逻辑删除
		detachedCriteria.add(Restrictions.eq("deleted", "0"));
		pageBean.setKeyWord("");
		pageBean.setUser(user);
		bookService.pageQuery(pageBean);
		ChrUtils.getSession().setAttribute("pageBean", pageBean);		
		return "myBookList";
	}
	//查询当前用户上传 的书籍
	public String pageQuery2(){
		User user = ChrUtils.getUser();
		int pageSize = pageBean.getPageSize();
		if(pageSize == 0)
			pageBean.setPageSize(20);
		//未被逻辑删除
		detachedCriteria.add(Restrictions.eq("deleted", "0"));
		pageBean.setUser(user);
		bookService.pageQuery(pageBean);
		ChrUtils.getSession().setAttribute("pageBean", pageBean);		
		return "myBookList";
	}
	//删除图书
	public String deleteBook(){
		//逻辑删除
		bookService.deleteBook(model.getId());
		System.out.println("删除成功");
		PageBean pageBean1 = (PageBean) ChrUtils.getSession().getAttribute("pageBean");
		//为pageBean初始化赋值
		pageBean.setCurrentPage(pageBean1.getCurrentPage());
		pageBean.setPageSize(pageBean1.getPageSize());
		pageBean.setUser(pageBean1.getUser());
		//未被逻辑删除
		detachedCriteria.add(Restrictions.eq("deleted", "0"));
		bookService.pageQuery(pageBean);
		System.out.println("分页成功");
		ChrUtils.getSession().setAttribute("pageBean", pageBean);
		return "myBookList";
	}
	private String bookid;
	
	public void setBookid(String bookid) {
		this.bookid = bookid;
	}
	public String findInfoById(){
		//点击查看详情，通过bookid查询book详情，返回到book-info.jsp页面
		Book book = bookService.findInfoById(bookid);
		
		//接下来是ＴＭＤ最难搞的多级评论输出
		
		 Set messages = book.getMessages();
		 List<Message> list =new ArrayList<Message>(messages);
		 
		 Collections.sort(list, new Comparator<Message>() {

			@Override
			public int compare(Message m1, Message m2) {
				long t = m1.getMessageTime().getTime()-m2.getMessageTime().getTime();
			    if(t>0){
			    	 return 1;
			     }else if(t<0){
			    	 return -1;
			     }else{
			    	 return 0;
			     }
			}     
	       });  
		for(int i=0;i<list.size();i++){
			Integer messageNum = list.get(i).getMessageNum();
			System.out.println(messageNum);
		}
			  	
		
		List<Message> result = MessagesUtils.getConvertNode(list);
		ChrUtils.getSession().setAttribute("book", book);
		for(int i=0;i<result.size();i++){
			Integer messageNum = result.get(i).getMessageNum();
			System.out.println(messageNum);
		}
		
		ChrUtils.getSession().setAttribute("result", result);
		return "bookInfo";
	}
	
}
