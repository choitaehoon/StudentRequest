package net.skhu.mapper;

import org.apache.ibatis.annotations.Mapper;

<<<<<<< HEAD
@Mapper
public interface ProfessorMapper 
{
	int loginCheck(int id);
=======
import net.student.dto.LoginInfo;

@Mapper
public interface ProfessorMapper 
{
	void insert(LoginInfo loginInfo);
	int loginCheck(int id);
	LoginInfo password(LoginInfo loginInfo);
	LoginInfo login(LoginInfo loginInfo);
<<<<<<< HEAD
	LoginInfo turnOver(int login);
=======
>>>>>>> c3d01d9cc78dadb339b75fd048116a2bafe125f0
>>>>>>> a3385610dbfb6013a6a6d31b0f0cb01b11df14a7
>>>>>>> taehoon
}
