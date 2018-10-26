package cn.tarena.xz.mapper;

import org.apache.ibatis.annotations.Param;

import cn.tarena.xz.pojo.User;
public interface UserMapper {

	
	//MyBatis 默认不支持多值传递
	//当必须多值传递时，可以考虑采用以下三种方式处理
	//1.封装成map      2.采用数组形式传递   3.利用@Param注解
	public User findUserByUP(@Param("userName")String username,@Param("pwd")String pwd);
	
	public void saveUser(@Param("userIdcount")String userIdcount,@Param("userName")String userName, @Param("pwd")String pwd, @Param("name")String name, @Param("sex")String sex, @Param("phone")String phone);
	
	public String countUserId();
	
}
