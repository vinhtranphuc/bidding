package com.so.mybatis.mapper;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

@Resource
public interface TagMapper {

	List<Map<String, Object>> selectTags();
	
	List<Map<String, Object>> selectTagsByPostId(String postId);
	
	void insertIgnoreTag(Map<String, Object> tagPrm);

	void deleteTagsUnused();
}
