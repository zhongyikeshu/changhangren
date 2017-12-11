package cn.yubo.chr.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.yubo.chr.dao.CategoryDao;
import cn.yubo.chr.domain.Category;
import cn.yubo.chr.service.CategoryService;
@Service
@Transactional
public class CategoryServiceImpl implements CategoryService{
	@Autowired
	private CategoryDao categoryDao;
	
	public List<Category> findCategory() {
		List<Category> list = categoryDao.findAll();
		return list;
	}

	
}
