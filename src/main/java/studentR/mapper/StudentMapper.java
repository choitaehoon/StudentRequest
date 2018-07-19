package studentR.mapper;

import org.apache.ibatis.annotations.Mapper;

import studentR.dto.Student;

@Mapper
public interface StudentMapper {

    void insert(Student student);
    void update(Student student);

}