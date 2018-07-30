package net.skhu.mapper;

import org.apache.ibatis.annotations.Mapper;

import net.student.dto.LoginInfo;

@Mapper
public interface ProfessorMapper 
{
	void insert(LoginInfo loginInfo);
	int loginCheck(int id);
	LoginInfo password(LoginInfo loginInfo);
	LoginInfo login(LoginInfo loginInfo);
}
