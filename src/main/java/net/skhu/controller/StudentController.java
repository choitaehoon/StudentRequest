package net.skhu.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.skhu.mapper.DepartmentMapper;
import net.skhu.mapper.StudentMapper;
import net.student.dto.Department;
import net.student.dto.Student;
@Controller
@RequestMapping("/member")
public class StudentController
{
	@Autowired
	private StudentMapper studentMapper;
    @Autowired
    private DepartmentMapper departmentMapper;

	@RequestMapping(value="register", method=RequestMethod.GET)
    public String create(Model model) {
        Student student = new Student();
        List<Department> departments = departmentMapper.findAll();
        model.addAttribute("student", student);
        model.addAttribute("departments", departments);
        return "member/register";
    }

	@RequestMapping(value="register", method=RequestMethod.POST)
	public String register(Model model,Student student)
	{
		studentMapper.insert(student);
		return "redirect:../login.jsp";
	}

	@RequestMapping("paswrdFind")
	public String paswrdFind(Model model,Student student)
	{
		return "member/paswrdFind";
	}


}
