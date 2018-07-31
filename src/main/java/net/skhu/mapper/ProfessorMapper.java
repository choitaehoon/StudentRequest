package net.skhu.mapper;

import org.apache.ibatis.annotations.Mapper;

import net.student.dto.LoginInfo;

@Mapper
public interface ProfessorMapper 
{
	void insert(LoginInfo loginInfo);
	int loginCheck(int id);
	LoginInfo password(LoginInfo loginInfo);
<<<<<<< HEAD
=======
	LoginInfo login(LoginInfo loginInfo);
>>>>>>> c3d01d9cc78dadb339b75fd048116a2bafe125f0
}
