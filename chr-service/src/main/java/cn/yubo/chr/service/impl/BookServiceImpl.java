package cn.yubo.chr.service.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.yubo.chr.dao.BookDao;
import cn.yubo.chr.domain.Book;
import cn.yubo.chr.domain.Category;
import cn.yubo.chr.service.BookService;
import cn.yubo.chr.utils.PageBean;
@Service
@Transactional
public class BookServiceImpl implements BookService{
	
	@Autowired
	private BookDao bookDao;
	
	
	public void pageQuery(PageBean pageBean) {
		bookDao.pageQuery(pageBean);
		
	}

	public void deleteBook(Integer id) {
		//逻辑删除
		bookDao.executeUpdate("deleteBookLogicly", id);
	}

	
	public Book findInfoById(String bookid) {
		return bookDao.findById(Integer.parseInt(bookid));
		 
	}



}
