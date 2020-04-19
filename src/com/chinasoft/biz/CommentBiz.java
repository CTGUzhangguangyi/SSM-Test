package com.chinasoft.biz;

import java.util.List;

import com.chinasoft.pojo.Comment;

public interface CommentBiz {
	public List<Comment> getCommentsByUid(int uid);
	public List<Comment> getCommentsByPid(int pid);
	public void insertComment(int uid,int pid,String context,int star);
}
