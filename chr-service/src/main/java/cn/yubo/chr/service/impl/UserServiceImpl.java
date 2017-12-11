package cn.yubo.chr.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.yubo.chr.dao.UserDao;
import cn.yubo.chr.domain.User;
import cn.yubo.chr.service.UserService;
@Service
@Transactional
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;
	
	//登录
	public User login(User model) {
		User user = userDao.login(model);
		return user;
	}

	//通过用户名（即手机号）查询数据库返回user，如果有值证明已被注册
	public User findUserByPhone(String phone) {
		User user = userDao.findById(phone);
		return user;
	}

	//保存用户
	public void save(User model) {
		userDao.save(model);
		
	}

}
