package cn.yubo.chr.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.yubo.chr.dao.BorrowDao;
import cn.yubo.chr.service.BorrowService;
import cn.yubo.chr.utils.PageBean;

@Service
@Transactional
public class BorrowServiceImpl implements BorrowService{
	
	@Autowired
	private BorrowDao borrowDao;

	public void pageQuery(PageBean pageBean) {
		borrowDao.pageQuery(pageBean);
	}
}