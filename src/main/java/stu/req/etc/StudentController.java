package stu.req.etc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import studentR.dto.Student;
import studentR.mapper.StudentMapper;

@Controller
@RequestMapping("/member")
public class StudentController
{
	@Autowired
	private StudentMapper studentMapper;
	
	
	@RequestMapping("register")
	public String test(Model model,Student student) 
	{
		System.out.println("실행되나 확인하는 메소드");
		studentMapper.insert(student);
		return "redirect:paswrdFind";
	}

}
