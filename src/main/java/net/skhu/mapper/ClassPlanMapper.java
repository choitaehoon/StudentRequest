package net.skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.student.dto.ClassPlan;

@Mapper
public interface ClassPlanMapper {

	List<ClassPlan> findAll();
	ClassPlan findClass(int classId);
}
