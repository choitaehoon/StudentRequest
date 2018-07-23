package studentR.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import studentR.dto.Department;

@Mapper
public interface DepartmentMapper {

	List<Department> findAll();


}
