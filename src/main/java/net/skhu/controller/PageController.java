package net.skhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.skhu.mapper.ClassPlanMapper;
import net.skhu.mapper.LectureMapper;
import net.skhu.mapper.ProfessorMapper;
import net.skhu.mapper.StudentMapper;
import net.student.dto.ClassPlan;
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
	@Autowired
	private ClassPlanMapper classPlanMapper;

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

	//날짜에 맞은 수업 찾기위해
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

	//수업등록
	@RequestMapping(value="lectureRegister", method=RequestMethod.GET)
	public String lectureR(Model model,@RequestParam("id") int id, @RequestParam("userType") int userType)
	{
		model.addAttribute("id",id);
		model.addAttribute("userType",userType);
		return "page/lectureRegister";
	}


	//질문페이지
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

	//진도계획 페이지
	@RequestMapping(value="classPlan",method=RequestMethod.GET)
	public String classPlan(Model model,@RequestParam("id") int id, @RequestParam("userType") int userType)
	{
		if(userType == 1)
			model.addAttribute("loginInfo",professorMapper.turnOver(id));
		else
		   model.addAttribute("loginInfo",studentMapper.turnOver(id));
		return "page/classPlan";
	}


	@RequestMapping(value="classPlan",method=RequestMethod.POST)
	public String classPlan(Model model,@RequestParam("id") int id, @RequestParam("userType") int userType,@RequestParam("test") int test,
			@RequestParam("datea") String date)
	{
		if(userType == 1) {
			model.addAttribute("test",test);
			model.addAttribute("loginInfo",professorMapper.turnOver(id));
		}
		else {
			model.addAttribute("test",test);
		   model.addAttribute("loginInfo",studentMapper.turnOver(id));
		}

		List<Lecture> lecture =lectureMapper.findDate(date);
		model.addAttribute("lecture", lecture);
		return "page/classPlan";
	}

	//진도계획 게시판리스트페이지
	@RequestMapping("planBoard")
	public String board(Model model,@RequestParam("classId") int classId,@RequestParam("id") int id,
			@RequestParam("userType") int userType,@RequestParam("professorName") String professorName)
	{
		if(userType == 1)
			model.addAttribute("loginInfo",professorMapper.turnOver(id));
		else {
		   model.addAttribute("loginInfo",studentMapper.turnOver(id));
		}

		model.addAttribute("classId",classId);
		List<ClassPlan> classPlan = classPlanMapper.findC(classId);
//		List<ClassPlan> classPlan = classPlanMapper.findClass(classId);
		model.addAttribute("classPlan",classPlan);


		List<Lecture> lecture = lectureMapper.findByPname(professorName);
		model.addAttribute("lecture",lecture);
		model.addAttribute("professorName",professorName);

//		System.out.println(classPlan.get(0).getLecture().getProfessorName().toString());
		return "page/planBoard";
	}


	//진도계획 게시판 세부내용 페이지


	//퀴즈페이지
	@RequestMapping("quiz")
	public String quiz(Model model,@RequestParam("id") int id, @RequestParam("userType") int userType)
	{

		if(userType == 1)
			model.addAttribute("loginInfo",professorMapper.turnOver(id));
		else
		   model.addAttribute("loginInfo",studentMapper.turnOver(id));

		return "page/quiz";
	}
}
