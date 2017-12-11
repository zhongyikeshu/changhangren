package cn.yubo.chr.service;

import java.util.List;

import cn.yubo.chr.domain.Book;
import cn.yubo.chr.domain.Category;
import cn.yubo.chr.utils.PageBean;


public interface BookService {

	

	void pageQuery(PageBean pageBean);

	

	void deleteBook(Integer id);



	Book findInfoById(String bookid);

	

	

	

}
