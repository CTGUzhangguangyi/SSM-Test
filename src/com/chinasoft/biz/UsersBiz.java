package com.chinasoft.biz;

import com.chinasoft.pojo.Users;

public interface UsersBiz {
	public Users chechLogin(String username,String password);
	
	public void UserSignin(Users u);

	public Users UserSigninAjust(String username);
	
	public  Users getUserById(int uid);
	
	void updateUser(String username,String phone,String email,String address,int uid);
	
	void updateUserPassword(String password,int uid);
}
