package net.skhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.skhu.mapper.LectureMapper;
import net.skhu.mapper.ProfessorMapper;
import net.skhu.mapper.StudentMapper;
import net.student.dto.Lecture;
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
		}
		return "page/check";
	}

	@RequestMapping(value= {"main","find"})
	public String mainGo(Model model,@RequestParam("id") int id, @RequestParam("userType") int userType
			,@RequestParam("test") int test,@RequestParam("datea") String date)
	{
		if(userType == 1)
		{
			model.addAttribute("test",test);
			model.addAttribute("loginInfo",professorMapper.turnOver(id));
		}
		else
		{
			model.addAttribute("test",test);
			model.addAttribute("loginInfo",studentMapper.turnOver(id));
			List<Lecture> lecture =lectureMapper.findDate(date);
			model.addAttribute("lecture", lecture);
		}
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

	@RequestMapping("question")
	public String question(Model model,@RequestParam("classId") int classId,@RequestParam("id") int id,
			@RequestParam("userType") int userType)
	{
		if(userType == 1)
			model.addAttribute("loginInfo",professorMapper.turnOver(id));
		else {
		   model.addAttribute("loginInfo",studentMapper.turnOver(id));
		}

		model.addAttribute("classId",classId);
		Lecture lecture =lectureMapper.findOne(classId);
		model.addAttribute("lecture", lecture);
		return "page/question";
	}

	@RequestMapping("classPlan")
	public String classPlan(Model model,@RequestParam("id") int id, @RequestParam("userType") int userType)
	{
		if(userType == 1)
			model.addAttribute("loginInfo",professorMapper.turnOver(id));
		else {
		   model.addAttribute("loginInfo",studentMapper.turnOver(id));
		}

		List<Lecture> lecture = lectureMapper.findAll();
		model.addAttribute("lecture", lecture);
		return "page/classPlan";
	}

}
