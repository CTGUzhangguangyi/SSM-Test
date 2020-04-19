package com.chinasoft.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chinasoft.biz.OrderBiz;
import com.chinasoft.dao.OrderMapper;
import com.chinasoft.pojo.Ordermessage;
@Service
@Transactional
public class OrderBizImpl implements OrderBiz {
	@Autowired
	OrderMapper om;
	public  List<Ordermessage>showAllOrder()
			{
		
		return om.showAllOrder();
			}
	@Override
	public List<Ordermessage> showALLOrderByUid(int uid) {
		// TODO Auto-generated method stub
		return om.showALLOrderByUid(uid);
	}
	
}
