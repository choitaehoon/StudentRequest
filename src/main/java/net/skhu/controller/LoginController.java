package net.skhu.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.skhu.mapper.DepartmentMapper;
import net.skhu.mapper.ProfessorMapper;
import net.skhu.mapper.StudentMapper;
import net.skhu.service.CheckService;
import net.student.dto.Department;
import net.student.dto.LoginInfo;
@Controller
@RequestMapping("/member")
public class LoginController
{
	@Autowired
	private StudentMapper studentMapper;
	@Autowired
	private DepartmentMapper departmentMapper;
	@Autowired
	private ProfessorMapper professorMapper;

	@RequestMapping(value="register",method=RequestMethod.GET)
	public String membership(Model model)
	{
		List<Department> departments = departmentMapper.findAll();
		model.addAttribute("LoginInfo",new LoginInfo());
		model.addAttribute("departments",departments);
		return "member/register";
	}

	@RequestMapping(value="register", method=RequestMethod.POST)
	public String membership(Model model,LoginInfo loginInfo)
	{

		String message =CheckService.beforeInsert(loginInfo);
		List<Department> departments = departmentMapper.findAll();

		if(message == null)
		{
			if(loginInfo.getUserType() == 1) //교수테이블에 삽입
				professorMapper.insert(loginInfo);
			else if(loginInfo.getUserType() == 2)//학생 테이블에 삽입
				studentMapper.insert(loginInfo);
			return "redirect:../login.jsp";
		}
		else
		{
			model.addAttribute("error",message);
			model.addAttribute("LoginInfo", loginInfo);
		    model.addAttribute("departments", departments);
			return "member/register";
		}
	}

	@RequestMapping(value="identify", method = RequestMethod.POST)
	@ResponseBody
	public int duplicationIdentify(@RequestParam("id") int id, @RequestParam("userType") int userType)
	{
		if(userType == 0) //버튼을 안눌었다면
			return 123; //에러 내용
		if(userType == 1) //교수 테이블 검사
			return professorMapper.loginCheck(id);
		else //학생 테이블 검사
			return studentMapper.loginCheck(id);
	}

	@RequestMapping("paswrdFind")
	public String paswrdFind(Model model,LoginInfo loginInfo)
	{
		return "member/paswrdFind";
	}

	
	@RequestMapping(value="paswrdFind", method = RequestMethod.GET)
	public String passwordFind(Model model)
	{
		model.addAttribute("loginInfo",new LoginInfo());
		return "member/paswrdFind";
	}
	
	@RequestMapping(value="paswrdFind", method = RequestMethod.POST)
	public String passwordFind(Model model, @ModelAttribute("LoginInfo") LoginInfo loginInfo)
	{
		if(loginInfo.getUserType() == 1)
			model.addAttribute("loginInfo",professorMapper.password(loginInfo));
		else
			model.addAttribute("loginInfo",studentMapper.password(loginInfo));
		return "member/paswrdFind";
	}
	
	@RequestMapping(value="login", method = RequestMethod.GET)
	public String goLoin()
	{
		return "redirect:../login.jsp";
	}

}
