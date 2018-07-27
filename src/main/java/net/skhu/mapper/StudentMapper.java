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
}