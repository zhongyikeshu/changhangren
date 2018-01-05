package cn.yubo.chr.dao.impl;


import java.io.File;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.junit.Test;
import org.springframework.stereotype.Repository;

import cn.yubo.chr.dao.LostDao;
import cn.yubo.chr.domain.Lost;
import cn.yubo.chr.domain.User;
import cn.yubo.chr.utils.PageBean;

@Repository
public class LostDaoImpl extends BaseDaoImpl<Lost> implements LostDao{

	
	public void lostPageQuery(PageBean pageBean) {
		int currentPage = pageBean.getCurrentPage();
		int pageSize = pageBean.getPageSize();
		User user = pageBean.getUser();
		String keyWord = pageBean.getKeyWord();//关键字
		String cid = pageBean.getCid();//分类Id
		DetachedCriteria detachedCriteria = pageBean.getDetachedCriteria();
		
		//设置初始参数：关键词 分类
		if(StringUtils.isNotBlank(cid)){
			detachedCriteria.add(Restrictions.eq("category.cid", cid));
		}
		if(StringUtils.isNotBlank(keyWord)){
			detachedCriteria.add(Restrictions.like("name", "%"+keyWord+"%"));	
		}
		if(user!=null){
			detachedCriteria.add(Restrictions.eq("user", user));
		}
		
		//查询total---总数据量
		detachedCriteria.add(Restrictions.eq("lostOrPick", 0));//丢失
		detachedCriteria.addOrder(Order.desc("date"));//日期降序
		detachedCriteria.setProjection(Projections.rowCount());//指定hibernate框架发出sql的形式----》select count(*) from bc_staff;
		List<Long> countList = (List<Long>) this.getHibernateTemplate().findByCriteria(detachedCriteria);
		Long count = countList.get(0);
		pageBean.setTotal(count.intValue());
		pageBean.setTotalPage((int) Math.ceil(1.0*pageBean.getTotal()/pageSize));
		
		
		//查询rows---当前页需要展示的数据集合
		detachedCriteria.setProjection(null);//指定hibernate框架发出sql的形式----》select * from bc_staff;
		
		//指定hibernate封装对象的方式，用于多表关联时
		detachedCriteria.setResultTransformer(DetachedCriteria.ROOT_ENTITY);
		
		int firstResult = (currentPage - 1) * pageSize;
		int maxResults = pageSize;
		List list = this.getHibernateTemplate().findByCriteria(detachedCriteria, firstResult, maxResults);
		pageBean.setList(list);
		
	}

	public void foundPageQuery(PageBean pageBean) {
		int currentPage = pageBean.getCurrentPage();
		int pageSize = pageBean.getPageSize();
		User user = pageBean.getUser();
		String keyWord = pageBean.getKeyWord();//关键字
		String cid = pageBean.getCid();//分类Id
		DetachedCriteria detachedCriteria = pageBean.getDetachedCriteria();
		
		//设置初始参数：关键词 分类
		if(StringUtils.isNotBlank(cid)){
			detachedCriteria.add(Restrictions.eq("category.cid", cid));
		}
		if(StringUtils.isNotBlank(keyWord)){
			detachedCriteria.add(Restrictions.like("name", "%"+keyWord+"%"));	
		}
		if(user!=null){
			detachedCriteria.add(Restrictions.eq("user", user));
		}
		
		//查询total---总数据量
		detachedCriteria.add(Restrictions.eq("lostOrPick", 1));//拾取
		detachedCriteria.addOrder(Order.desc("date"));//日期降序
		detachedCriteria.setProjection(Projections.rowCount());//指定hibernate框架发出sql的形式----》select count(*) from bc_staff;
		List<Long> countList = (List<Long>) this.getHibernateTemplate().findByCriteria(detachedCriteria);
		Long count = countList.get(0);
		pageBean.setTotal(count.intValue());
		pageBean.setTotalPage((int) Math.ceil(1.0*pageBean.getTotal()/pageSize));
		
		
		//查询rows---当前页需要展示的数据集合
		detachedCriteria.setProjection(null);//指定hibernate框架发出sql的形式----》select * from bc_staff;
		
		//指定hibernate封装对象的方式，用于多表关联时
		detachedCriteria.setResultTransformer(DetachedCriteria.ROOT_ENTITY);
		
		int firstResult = (currentPage - 1) * pageSize;
		int maxResults = pageSize;
		List list = this.getHibernateTemplate().findByCriteria(detachedCriteria, firstResult, maxResults);
		pageBean.setList(list);
	}

	
	
}
