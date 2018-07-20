package stu.req.etc;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import studentR.mapper.StudentMapper;

@Controller
@RequestMapping("/")
public class StudentController
{
	@Autowired
	private StudentMapper studentMapper;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
		
		return "home";
	}

}
