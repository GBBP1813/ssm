package cn.tarena.xz.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.xz.mapper.UserMapper;
import cn.tarena.xz.pojo.User;

@Service
public class UserServiceImpl implements UserService {

	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User findUserByUP(String userName, String pwd) {
		// TODO Auto-generated method stub
		
		return userMapper.findUserByUP(userName, pwd);
	}
	
	@Override
	public void saveUser(String userIdcount, String userName, String pwd, String name, String sex, String phone) {
		// TODO Auto-generated method stub
		
		userMapper.saveUser(userIdcount,userName, pwd,  name, sex, phone);
	}

	@Override
	public String countUserId() {
		// TODO Auto-generated method stub
		return userMapper.countUserId();
	}
	
}
