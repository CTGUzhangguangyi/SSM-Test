package com.chinasoft.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chinasoft.biz.CommentBiz;
import com.chinasoft.dao.CommentMapper;
import com.chinasoft.pojo.Comment;
@Service
@Transactional
public class CommentBizImpl implements CommentBiz {
	@Autowired 
	CommentMapper cm;
	public List<Comment> getCommentsByUid(int uid){
		
		return cm.getCommentsByUid(uid);
		
	}
	
	@Override
	public List<Comment> getCommentsByPid(int pid) {
		// TODO Auto-generated method stub
		return cm.getCommentsByPid(pid);
	}
	@Override
	public void insertComment(int uid, int pid, String context,int star) {
		// TODO Auto-generated method stub
		cm.insertComment(uid, pid, context,star);
	}
	
}
