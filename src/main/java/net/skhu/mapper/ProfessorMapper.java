package net.skhu.mapper;

import org.apache.ibatis.annotations.Mapper;

import net.student.dto.LoginInfo;
import net.student.dto.Professor;

@Mapper
public interface ProfessorMapper {
	Professor findOne(int id);
	void insert(LoginInfo loginInfo);
    void update(Professor professor);
    void delete(int id);
}
