package net.skhu.mapper;

import org.apache.ibatis.annotations.Mapper;

<<<<<<< HEAD
=======
import net.student.dto.LoginInfo;
>>>>>>> a3385610dbfb6013a6a6d31b0f0cb01b11df14a7
import net.student.dto.Student;

@Mapper
public interface StudentMapper
{
<<<<<<< HEAD
    void insert(Student student);
    void update(Student student);
    int loginCheck(int id);
=======
    void insert(LoginInfo loginInfo);
    void update(Student student);
    int loginCheck(int id);
    LoginInfo password(LoginInfo loginInfo);
    LoginInfo login (LoginInfo loginInfo);
<<<<<<< HEAD
    LoginInfo turnOver(int id);
=======
>>>>>>> c3d01d9cc78dadb339b75fd048116a2bafe125f0
>>>>>>> a3385610dbfb6013a6a6d31b0f0cb01b11df14a7
>>>>>>> taehoon
}