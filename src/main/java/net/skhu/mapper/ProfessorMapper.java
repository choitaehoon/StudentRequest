package net.skhu.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProfessorMapper 
{
	int loginCheck(int id);
}
