package com.chinasoft.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.chinasoft.pojo.Comment;
import com.chinasoft.pojo.Product;
@Repository
@Transactional
public interface ProductMapper {
	public List<Product> showAllProduct();
	public void  deleteByPid(int pid);
	public int selectByPtype(String ptype);
	public List<Comment> getProductByPid(@Param("pid")int pid);
	public Product getAProductByPid(@Param("pid")int pid);
}
