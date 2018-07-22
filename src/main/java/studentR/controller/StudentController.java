package studentR.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import studentR.dto.Student;
import studentR.mapper.StudentMapper;

@Controller
@RequestMapping("/member")
public class StudentController {

	@Autowired StudentMapper studentMapper;

	@RequestMapping(value="create", method=RequestMethod.POST)
    public String create(Model model, Student student) {
        studentMapper.insert(student);
        return "redirect:../login";
    }
	@RequestMapping(value="edit", method=RequestMethod.POST)
    public String edit(Model model, Student student) {
        studentMapper.update(student);
        return "redirect:../login";
    }
}
