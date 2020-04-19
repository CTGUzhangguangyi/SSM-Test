package com.chinasoft.biz;

import java.util.List;

import com.chinasoft.pojo.Shoppingcart;
import com.chinasoft.pojo.Users;

public interface ShoppingBiz {
	public void  addproducttoShopcart(int uid,int pnumber,int pid);
	public void  addproductNumberplusone(int uid,int pid);
	public boolean ajustisHasProBypidAnduid(int uid,int pid);
	
	/*判断该用户购物车是否为空*/
	public boolean ajustShopCartIsEmpty(int uid);
	
	List<Shoppingcart> getProductByUid(int uid);
	void updateNumberByUidAndPid(int uid,int pid,int offset);
	void deleteByUidAndPid(int uid,int pid);
	
}
