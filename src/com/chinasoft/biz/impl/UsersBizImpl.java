package com.chinasoft.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chinasoft.biz.UsersBiz;
import com.chinasoft.dao.UsersMapper;
import com.chinasoft.pojo.Users;
@Service
@Transactional
public class UsersBizImpl implements UsersBiz {
	@Autowired
	private UsersMapper um;
	
	public UsersMapper getUm() {
		return um;
	}
	public void setUm(UsersMapper um) {
		this.um = um;
	}
	@Override
	public Users chechLogin(String username, String password) {
		// TODO Auto-generated method stub
		return um.selectByUsernameAndPassword(username, password);
	}
	@Override
	public void UserSignin(Users u) {
		// TODO Auto-generated method stub
		um.insertUsers(u);
	}

	@Override
	public Users UserSigninAjust(String username) {
		// TODO Auto-generated method stub
		return um.selectByUsername(username);
	}
	@Override
	public  Users getUserById(int uid)
	{
		return um.getUserById(uid);
	}
	@Override
	public void updateUser(String username, String phone, String email,
			String address, int uid) {
		// TODO Auto-generated method stub
		um.updateUser(username, phone, email, address, uid);
	}
	@Override
	public void updateUserPassword(String password, int uid) {
		// TODO Auto-generated method stub
		um.updateUserPassword(password, uid);
	}
	
}
