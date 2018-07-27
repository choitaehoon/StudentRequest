package net.skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.student.dto.Department;

@Mapper
public interface DepartmentMapper 
{
	List<Department> findAll();
}
