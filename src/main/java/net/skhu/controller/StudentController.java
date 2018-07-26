package net.skhu.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.ModelAttribute;
=======
>>>>>>> 로그인 구현 완료했고 민섭이하고 한 작업 합치면 로그인 완성
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.skhu.mapper.DepartmentMapper;
<<<<<<< HEAD
=======
import net.skhu.mapper.ProfessorMapper;
>>>>>>> 로그인 구현 완료했고 민섭이하고 한 작업 합치면 로그인 완성
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
<<<<<<< HEAD
=======
	@Autowired
	private ProfessorMapper professorMapper;
>>>>>>> 로그인 구현 완료했고 민섭이하고 한 작업 합치면 로그인 완성
	
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
<<<<<<< HEAD
	public int duplicationIdentify(@RequestParam("id") int studentId, @RequestParam("userType") int userType)
	{
		System.out.println(userType);
		return studentMapper.loginCheck(studentId);
=======
	public int duplicationIdentify(@RequestParam("id") int id, @RequestParam("userType") int userType)
	{
		if(userType == 0) //교수 테이블 검사
			return professorMapper.loginCheck(id);
		else //학생 테이블 검사
			return studentMapper.loginCheck(id);
>>>>>>> 로그인 구현 완료했고 민섭이하고 한 작업 합치면 로그인 완성
	}
	
	@RequestMapping(value="check", method = RequestMethod.POST)
	public String checkIdPassword(@RequestParam("userType") int userType, @RequestParam("studentId") int studentId,
								  @RequestParam("password") String password)
	{
		return "member/test";
	}

}
