package net.skhu.service;

<<<<<<< HEAD
public class CheckService 
{

}
=======
import org.springframework.util.StringUtils;

import net.student.dto.LoginInfo;

public class CheckService
{
		public static String beforeInsert(LoginInfo loginInfo) {
			if(loginInfo.getUserType() == 0 )
				return "교수나 학생 버튼을 입력하세요";
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
		public static String beforeLogin(LoginInfo loginInfo) {
			if(loginInfo.getUserType() == 0 )
				return "교수나 학생 버튼을 입력하세요";

			int i=loginInfo.getId();
		    String s = String.valueOf(i);
			if(StringUtils.isEmpty(s))
				return "학번을 입력하세요";


			s=loginInfo.getPassword();
			if(StringUtils.isEmpty(s))
				return "비밀번호를 입력하세요";

			return null;

		}

	}

>>>>>>> a3385610dbfb6013a6a6d31b0f0cb01b11df14a7
