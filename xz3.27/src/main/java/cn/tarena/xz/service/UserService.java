package cn.tarena.xz.service;

import cn.tarena.xz.pojo.User;

public interface UserService {
	//根据用户名和密码去数据库中查询用户
		public User findUserByUP(String userName,String pwd);
		
		public String countUserId();

		public void saveUser(String userIdcount, String userName, String pwd, String name, String sex, String phone);

}
