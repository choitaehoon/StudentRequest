package studentR.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import studentR.dto.Department;
import studentR.dto.Student;
import studentR.mapper.DepartmentMapper;
import studentR.mapper.StudentMapper;

@Controller
public class StudentController {

	@Autowired StudentMapper studentMapper;
	@Autowired DepartmentMapper departmentMapper;

	@RequestMapping(value="create", method=RequestMethod.GET)
	public String create(Model model) {
		Student student =new Student();
		List<Department> departments=departmentMapper.findAll();
		model.addAttribute("student", student);
		model.addAttribute("departments", departments);
		return "memeber/register";

	}
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
