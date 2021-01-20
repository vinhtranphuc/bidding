package com.so.mybatis.mapper;

import java.util.List;

import javax.validation.Valid;

import org.apache.ibatis.annotations.Mapper;

import com.so.mybatis.model.CommentVO;
import com.so.payload.CommentForm;

@Mapper
public interface CommentMapper {

	List<CommentVO> selectCommentsByPostId(String postId);

	void insertComment(@Valid CommentForm commentForm);
}
