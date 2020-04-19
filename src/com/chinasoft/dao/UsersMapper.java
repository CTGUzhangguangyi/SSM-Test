package com.chinasoft.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.chinasoft.pojo.Users;

@Repository
@Transactional
public interface UsersMapper {
	public Users selectByUsernameAndPassword(@Param("name") String username,@Param("pwd") String password);

	public void insertUsers(Users u);
	
	public Users selectByUsername(String username);
	
	public  Users getUserById(@Param("uid")int uid);
	
	public void updateUser(@Param("username")String username,@Param("phone")String phone,@Param("email")String email,@Param("address")String address,@Param("uid")int uid);
	public void updateUserPassword(@Param("password")String password, @Param("uid") int uid);
}
