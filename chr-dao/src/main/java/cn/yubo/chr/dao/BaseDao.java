package cn.yubo.chr.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import cn.yubo.chr.utils.PageBean;

public interface BaseDao<T> {
	public void save(T t);
	public void delete(T t);
	public void update(T t);
	public void saveOrUpdate(T t);
	public T findById(Serializable id);
	public List<T> findByCriteria(DetachedCriteria detachedCriteria);
	public List<T> findAll();
	public void executeUpdate(String queryName,Object...objs);
	public void pageQuery(PageBean pageBean);
}
