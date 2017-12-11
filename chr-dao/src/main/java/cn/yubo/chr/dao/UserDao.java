package cn.yubo.chr.dao;

import cn.yubo.chr.domain.User;

public interface UserDao extends BaseDao<User>{

	User login(User model);

}
