package net.skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.student.dto.LoginInfo;
import net.student.dto.Professor;

@Mapper
public interface ProfessorMapper
{
	List<Professor> findAll();
	void insert(LoginInfo loginInfo);
	int loginCheck(int id);
	LoginInfo password(LoginInfo loginInfo);
	LoginInfo login(LoginInfo loginInfo);
	LoginInfo turnOver(int login);
}
