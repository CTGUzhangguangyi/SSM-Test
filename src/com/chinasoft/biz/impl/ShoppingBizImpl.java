package com.chinasoft.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chinasoft.biz.ShoppingBiz;
import com.chinasoft.dao.ShoppingMapper;
import com.chinasoft.dao.UsersMapper;
import com.chinasoft.pojo.Shoppingcart;
@Service
@Transactional
public class ShoppingBizImpl implements ShoppingBiz {

	
	@Autowired
	private ShoppingMapper sm;
	
	
	public ShoppingMapper getSm() {
		return sm;
	}


	public void setSm(ShoppingMapper sm) {
		this.sm = sm;
	}


	@Override
	public void addproducttoShopcart(int uid,int pnumber, int pid) {
		// TODO Auto-generated method stub
		sm.insertIntoShopping(uid,pnumber, pid);
	}


	@Override
	public boolean ajustisHasProBypidAnduid(int uid, int pid) {
		// TODO Auto-generated method stub
		   String tee=sm.selectFromShoppingByuidAndpid(uid, pid);
		  if(tee==null)
		  {
			  return false;
		  }
		  else{
			  return true;
		  }
		
	}


	@Override
	public void addproductNumberplusone(int uid, int pid) {
		// TODO Auto-generated method stub
		sm.updateShoppingPNumberByuidAndpid(uid, pid);
	}


	@Override
	public boolean ajustShopCartIsEmpty(int uid) {
		// TODO Auto-generated method stub
		String te=sm.selectFromShoppingByuidToCountpid(uid);
		if("0".equals(te))
		{
			return true;
		}
		else
		return false;
	}
	
	@Override
	public List<Shoppingcart> getProductByUid(int uid) {
		// TODO Auto-generated method stub
		return sm.getProductByUid(uid);
	}

	@Override
	public void updateNumberByUidAndPid(int uid, int pid,int offset) {
		// TODO Auto-generated method stub
		sm.updateNumberByUidAndPid(uid,pid,offset);
	}

	@Override
	public void deleteByUidAndPid(int uid, int pid) {
		// TODO Auto-generated method stub
		System.out.println("++++++++++"+uid+pid);
		sm.deleteByUidAndPid(uid, pid);
	}
	
	

}
