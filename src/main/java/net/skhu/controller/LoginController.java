package net.skhu.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.skhu.mapper.DepartmentMapper;
import net.skhu.mapper.ProfessorMapper;
import net.skhu.mapper.StudentMapper;
import net.skhu.service.StudentService;
import net.student.dto.Department;
import net.student.dto.LoginInfo;
import net.student.dto.Student;
@Controller
@RequestMapping("/member")
public class LoginController
{
	@Autowired
	StudentMapper studentMapper;
    @Autowired
    DepartmentMapper departmentMapper;
    @Autowired
    ProfessorMapper professorMapper;
    @Autowired
    StudentService studentService;


	@RequestMapping(value="register", method=RequestMethod.GET)
    public String create(Model model) {
//        Student student = new Student();
		LoginInfo loginInfo =new LoginInfo();
        List<Department> departments = departmentMapper.findAll();
        model.addAttribute("loginInfo", loginInfo);
        model.addAttribute("departments", departments);
        return "member/register";
    }

	@RequestMapping(value="register", method=RequestMethod.POST)
	public String register(Model model,LoginInfo loginInfo)
	{
		String message =studentService.beforeInsert(loginInfo);
		List<Department> departments = departmentMapper.findAll();

		if(message ==null) {
			if(loginInfo.getUserType()==1)
		      studentMapper.insert(loginInfo);
			else
			  professorMapper.insert(loginInfo);
		    return "redirect:../login.jsp";
		}else {
			model.addAttribute("error",message);
			model.addAttribute("loginInfo", loginInfo);
		    model.addAttribute("departments", departments);
		}
		return "member/register";



	}

	@RequestMapping("paswrdFind")
	public String paswrdFind(Model model,Student student)
	{
		return "member/paswrdFind";
	}


}
