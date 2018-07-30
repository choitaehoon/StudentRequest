package net.skhu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.mapper.ProfessorMapper;
import net.skhu.mapper.StudentMapper;
import net.student.dto.LoginInfo;

@Controller
<<<<<<< HEAD
@RequestMapping("/page")
public class PageController 
=======
@RequestMapping("page")
public class PageController
>>>>>>> 156d679f34acae5a9cd002c9c1c765003eab21b9
{
	@Autowired
	private StudentMapper studentMapper;
	@Autowired
	private ProfessorMapper professorMapper;

	@RequestMapping("check")
	public String test(Model model, @ModelAttribute("LoginInfo") LoginInfo loginInfo)
	{

		if(loginInfo.getUserType() == 1)
			model.addAttribute("loginInfo",professorMapper.login(loginInfo));
		else
			model.addAttribute("loginInfo",studentMapper.login(loginInfo));
		return "page/check";

	}
}
