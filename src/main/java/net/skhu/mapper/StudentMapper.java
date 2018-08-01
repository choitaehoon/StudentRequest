package net.skhu.mapper;

import org.apache.ibatis.annotations.Mapper;

import net.student.dto.LoginInfo;
import net.student.dto.Student;

@Mapper
public interface StudentMapper
{
    void insert(LoginInfo loginInfo);
    void update(LoginInfo loginInfo);
    int loginCheck(int id);
    LoginInfo turnOver(int id);
    LoginInfo login(LoginInfo loginInfo);
    LoginInfo password(LoginInfo loginInfo);
}