package net.skhu.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@RequestMapping(value="register",method=RequestMethod.GET)
	public String test(Model model) 
	{
		List<Department> departments = departmentMapper.findAll();
		model.addAttribute("student",new Student());
		model.addAttribute("departments",departments);
		return "member/register";
	}
	
	@RequestMapping(value="register", method=RequestMethod.POST)
	public String membership(Model model,Student student)
	{
		studentMapper.insert(student);
		return "redirect:../login.jsp";
	}
	
	@RequestMapping(value="identify", method = RequestMethod.POST)
	@ResponseBody
	public int duplicationIdentify(@RequestParam("id") int studentId)
	{
		return studentMapper.loginCheck(studentId);
	}

}
