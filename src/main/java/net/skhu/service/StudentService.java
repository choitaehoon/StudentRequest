package net.skhu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import net.skhu.mapper.StudentMapper;
import net.student.dto.LoginInfo;

@Service
public class StudentService
{
	@Autowired
	StudentMapper studentMapper;

	public String beforeInsert(LoginInfo loginInfo) {
		int i=loginInfo.getId();
	    String s = String.valueOf(i);
		if(StringUtils.isEmpty(s))
			return "학번을 입력하세요";

		s=loginInfo.getName();
		if(StringUtils.isEmpty(s))
			return "이름을 입력하세요";



		s=loginInfo.getPassword();
		if(StringUtils.isEmpty(s))
			return "비밀번호를 입력하세요";


		i=loginInfo.getGrade();
		s = String.valueOf(i);
		if(StringUtils.isEmpty(s))
			return "학년을 입력하세요";


		s=loginInfo.getEmail();
		if(StringUtils.isEmpty(s))
			return "이메일을 입력하세요";


		i=loginInfo.getDepartmentId();
		s = String.valueOf(i);
		if(StringUtils.isEmpty(s))
			return "학과를 선택하세요";

		i=loginInfo.getUserType();
		s = String.valueOf(i);
		if(StringUtils.isEmpty(s))
			return "유저타입를 선택하세요";



		return null;

	}

}
