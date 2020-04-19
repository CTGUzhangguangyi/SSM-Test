package com.chinasoft.biz;

import java.util.List;

import com.chinasoft.pojo.Comment;
import com.chinasoft.pojo.Product;

public interface ProductBiz {
	List<Product> showAllProduct();
	void  deleteByPid(int pid);
	public int Phonetype(String ptype);
	public List<Comment> getProductByPid(int pid); 
	public Product getAProductByPid(int pid);
	
}
