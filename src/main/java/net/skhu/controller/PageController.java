package net.skhu.controller;

<<<<<<< HEAD
import java.util.List;
=======
import java.text.SimpleDateFormat;
>>>>>>> 1eea7cd222095377d40f0747dd5e96a2b7c908ef

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

<<<<<<< HEAD
import net.skhu.mapper.LectureMapper;
import net.skhu.mapper.ProfessorMapper;
import net.skhu.mapper.StudentMapper;
import net.student.dto.Lecture;
=======
import net.skhu.mapper.ProfessorMapper;
import net.skhu.mapper.StudentMapper;
import net.student.dto.ClassPlan;
>>>>>>> 1eea7cd222095377d40f0747dd5e96a2b7c908ef
import net.student.dto.LoginInfo;

@Controller
@RequestMapping("page")
public class PageController
{
	@Autowired
	private StudentMapper studentMapper;
	@Autowired
	private ProfessorMapper professorMapper;
	@Autowired
	private LectureMapper lectureMapper;

	@RequestMapping(value="check", method=RequestMethod.POST)
	public String test(Model model, @ModelAttribute("LoginInfo") LoginInfo loginInfo)
	{
		if(loginInfo.getUserType() == 1)
			model.addAttribute("loginInfo",professorMapper.login(loginInfo));
		else {
		   model.addAttribute("loginInfo",studentMapper.login(loginInfo));
		   List<Lecture> lecture =lectureMapper.findAll();
		   model.addAttribute("lecture", lecture);
		}

		return "page/check";
	}
<<<<<<< HEAD


	@RequestMapping("main")
=======
	
	@RequestMapping(value= {"main","find"})
>>>>>>> 1eea7cd222095377d40f0747dd5e96a2b7c908ef
	public String mainGo(Model model,@RequestParam("id") int id, @RequestParam("userType") int userType)
//			,@RequestParam("datea") ClassPlan date)
	{
		if(userType == 1)
			model.addAttribute("loginInfo",professorMapper.turnOver(id));
		else
			model.addAttribute("loginInfo",studentMapper.turnOver(id));
//		System.out.println(new SimpleDateFormat("yyyy-MM-dd").format(date.getClassDate()));
		return "page/check";
	}

	@RequestMapping(value="lectureRegister", method=RequestMethod.GET)
	public String lectureR(Model model,@RequestParam("id") int id, @RequestParam("userType") int userType)
	{
		model.addAttribute("id",id);
		model.addAttribute("userType",userType);
		return "page/lectureRegister";
	}
	
}
