package com.chinasoft.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.chinasoft.pojo.Shoppingcart;

@Repository
@Transactional
public interface ShoppingMapper {
	public void insertIntoShopping(@Param("uid")int uid,@Param("pnumber")int pnumber,@Param("pid")int pid);
	public String selectFromShoppingByuidAndpid(@Param("uid") int uid,@Param("pid") int pid);
	public void updateShoppingPNumberByuidAndpid(@Param("uid") int uid,@Param("pid") int pid);
	public String selectFromShoppingByuidToCountpid(@Param("uid")int uid);
    List<Shoppingcart> getProductByUid(int uid);
    void updateNumberByUidAndPid(@Param("uid")int uid,@Param("pid")int pid,@Param("offset")int offset);
    void deleteByUidAndPid(@Param("uid")int uid,@Param("pid")int pid);
	
	
}
