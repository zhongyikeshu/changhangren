package cn.yubo.chr.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.yubo.chr.domain.Borrow;
import cn.yubo.chr.domain.User;
import cn.yubo.chr.service.BorrowService;
import cn.yubo.chr.utils.ChrUtils;
@Controller
@Scope("prototype")
public class BorrowAction extends BaseAction<Borrow>{
	@Autowired
	private BorrowService borrowService;
	
	
	public String jyBook(){
		User user = ChrUtils.getUser();
		pageBean.setCurrentPage(1);
		pageBean.setPageSize(8);
		pageBean.setKeyWord("");
		pageBean.setUser(user);
		borrowService.pageQuery(pageBean);
		ChrUtils.getSession().setAttribute("pageBean", pageBean);		
		return "jieyue";
	} 
}
