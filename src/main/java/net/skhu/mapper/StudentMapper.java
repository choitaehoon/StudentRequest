package net.skhu.mapper;

import org.apache.ibatis.annotations.Mapper;

import net.student.dto.LoginInfo;
import net.student.dto.Student;

@Mapper
public interface StudentMapper
{
    void insert(LoginInfo loginInfo);
    void update(Student student);
    int loginCheck(int id);
    LoginInfo password(LoginInfo loginInfo);
<<<<<<< HEAD
=======
    LoginInfo login (LoginInfo loginInfo);
>>>>>>> c3d01d9cc78dadb339b75fd048116a2bafe125f0
}