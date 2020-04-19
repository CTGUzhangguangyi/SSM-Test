package com.chinasoft.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chinasoft.biz.ProductBiz;
import com.chinasoft.dao.ProductMapper;
import com.chinasoft.pojo.Comment;
import com.chinasoft.pojo.Product;
@Service
@Transactional
public class ProductBizImpl implements ProductBiz {
	@Autowired
	private ProductMapper pm;
	
	public ProductMapper getPm() {
		return pm;
	}

	public void setPm(ProductMapper pm) {
		this.pm = pm;
	}
	@Override
	public List<Product> showAllProduct(){
		
		return pm.showAllProduct();
	}

	@Override
	public void  deleteByPid(int pid){
		 pm.deleteByPid(pid);
	}

	@Override
	public int Phonetype(String ptype) {
		// TODO Auto-generated method stub
		if(ptype!=null)
		{
			
		return pm.selectByPtype(ptype);
		
		
		}
		else {
			return -1;
		}
	}
	
	@Override
	
	public  List<Comment> getProductByPid(int pid)
	{
		
		return pm.getProductByPid(pid);
	}

	@Override
	public Product getAProductByPid(int pid) {
		// TODO Auto-generated method stub
		return pm.getAProductByPid(pid);
	}
	
	
	
}
