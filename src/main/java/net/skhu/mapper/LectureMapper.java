package net.skhu.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.student.dto.Lecture;

@Mapper
public interface LectureMapper {

	List<Lecture> findAll();
	List<Lecture> findDate(String date);
}
