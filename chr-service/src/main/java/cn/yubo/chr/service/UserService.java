package cn.yubo.chr.service;

import cn.yubo.chr.domain.User;

public interface UserService {

	User login(User model);

	User findUserByPhone(String phone);

	void save(User model);

}
