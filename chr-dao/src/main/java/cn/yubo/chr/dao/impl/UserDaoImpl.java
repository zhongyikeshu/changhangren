package cn.yubo.chr.dao.impl;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

import cn.yubo.chr.dao.UserDao;
import cn.yubo.chr.domain.User;
import cn.yubo.chr.utils.ChrUtils;
@Repository
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao{

	
	public User login(User user) {
		String hql = "From User u where u.phone = ? and u.password = ?";
		List<User> list = (List<User>) this.getHibernateTemplate().find(hql,user.getPhone(),user.getPassword());
		if(list != null && list.size() > 0){
			return list.get(0);
		}
		return null;
		
	}

}
