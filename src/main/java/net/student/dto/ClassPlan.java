package net.student.dto;

import java.util.Date;

public class ClassPlan
{
	int planNo;
	int professorId;
	int classId;
	String classBody;
	Date classDate;

	Lecture lecture;

	public int getPlanNo() {
		return planNo;
	}
	public void setPlanNo(int planNo) {
		this.planNo = planNo;
	}
	public int getProfessorId() {
		return professorId;
	}
	public void setProfessorId(int professorId) {
		this.professorId = professorId;
	}
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public String getClassBody() {
		return classBody;
	}
	public void setClassBody(String classBody) {
		this.classBody = classBody;
	}
	public Date getClassDate() {
		return classDate;
	}
	public void setClassDate(Date classDate) {
		this.classDate = classDate;
	}
	public Lecture getLecture() {
		return lecture;
	}
	public void setLecture(Lecture lecture) {
		this.lecture = lecture;
	}



}
