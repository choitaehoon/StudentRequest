package net.skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.student.dto.Quiz;

@Mapper
public interface QuizMapper 
{
	List<Quiz> findAll();
}
