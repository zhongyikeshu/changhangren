package cn.yubo.chr.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.yubo.chr.dao.LostDao;
import cn.yubo.chr.domain.Lost;
import cn.yubo.chr.service.LostService;
import cn.yubo.chr.utils.PageBean;

@Service
@Transactional
public class LostServiceImpl implements LostService{
	
	@Autowired
	private LostDao lostDao;

	public void lostPageQuery(PageBean pageBean) {
		lostDao.lostPageQuery(pageBean);
	}

	@Override
	public List<Lost> findAll() {
		
		return lostDao.findAll();
	}

	@Override
	public void foundPageQuery(PageBean pageBean) {
		lostDao.foundPageQuery(pageBean);
	}

	public void save(Lost lost) {
		lostDao.save(lost);
	}
	
	


}
