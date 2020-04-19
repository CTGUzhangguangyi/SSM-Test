package com.chinasoft.biz;

import java.util.List;

import com.chinasoft.pojo.Ordermessage;

public interface OrderBiz {
	List<Ordermessage>showAllOrder();
	List<Ordermessage>showALLOrderByUid(int uid);
}
