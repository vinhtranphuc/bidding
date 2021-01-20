package com.so.mybatis.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.so.payload.ContactForm;

@Mapper
public interface ContactMapper {

	List<Map<String,Object>> selectContactList(Map<String,Object> params);
	
	void insertContact(ContactForm contactForm);
	
	public void deleteContacts(Map<String, Object> params);
}
