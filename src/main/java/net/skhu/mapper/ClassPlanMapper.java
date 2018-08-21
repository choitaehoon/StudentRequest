package net.skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import net.student.dto.ClassPlan;
import net.student.dto.Pagination;

@Mapper
public interface ClassPlanMapper {

	List<ClassPlan> findAll(@Param("classId") int classId,@Param("pagination") Pagination pagination);
//	List<ClassPlan> findAll(HashMap<Integer, Pagination> map);
	List<ClassPlan> findClass(@Param("classId") int classId,@Param("pagination")Pagination pagination);
	List<ClassPlan> findClass(int classId);
	ClassPlan findOne(int planNo);
	void insert(ClassPlan classPlan);
	int count();
}
