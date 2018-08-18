package net.skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.student.dto.ClassPlan;

@Mapper
public interface ClassPlanMapper {

	List<ClassPlan> findAll();
	//페이지네이션구현중
//	List<ClassPlan> findClass(@Param("classId") int classId,@Param("pagination") Pagination pagination);
	List<ClassPlan> findClass(int classId);
	ClassPlan findOne(int planNo);
	void insert(ClassPlan classPlan);
	int count();
}
