package net.skhu.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import net.student.dto.SolveQuiz;

@Mapper
public interface SolveQuizMapper 
{
	List<SolveQuiz> bring(@Param("studentId") int studentId, @Param("quizDate") Date quizDate);
}
