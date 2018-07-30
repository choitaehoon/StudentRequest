package net.skhu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.skhu.mapper.ProfessorMapper;
import net.skhu.mapper.StudentMapper;
import net.student.dto.LoginInfo;

@Controller
@RequestMapping("/page")
<<<<<<< HEAD
public class PageController 
{
=======
public class PageController{

>>>>>>> 72df9986e3b2254d46733284f385cb06e26bcc3f
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

	@RequestMapping(value="lecture/lectureRegister", method=RequestMethod.GET)
	public String lectureR(Model model)
	{

		return "page/lecture/lectureRegister";

	}
}
