package net.skhu.mapper;

import org.apache.ibatis.annotations.Mapper;

import net.student.dto.Student;

@Mapper
public interface StudentMapper
{
    void insert(Student student);
    void update(Student student);
}