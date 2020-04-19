package com.chinasoft.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.chinasoft.pojo.Ordermessage;

@Repository
@Transactional
public interface OrderMapper {
	public  List<Ordermessage>showAllOrder();
	public List<Ordermessage> showALLOrderByUid(int uid);
}
