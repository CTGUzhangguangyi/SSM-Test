package com.chinasoft.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.chinasoft.pojo.Comment;

@Repository
@Transactional
public interface CommentMapper {
	List<Comment> getCommentsByUid(int uid);
	public List<Comment> getCommentsByPid(int pid) ;
	public void insertComment(@Param("uid")int uid,@Param("pid")int pid,@Param("context")String context,@Param("star")int star);
}
