package net.student.dto;

import java.sql.Timestamp;

public class ClassPlan
{
	int planNo;
	String title;
	int professorId;
	int classId;
	String planBody;
	Timestamp classDate;

	Lecture lecture;

	public int getPlanNo() {
		return planNo;
	}
	public void setPlanNo(int planNo) {
		this.planNo = planNo;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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

	public String getPlanBody() {
		return planBody;
	}
	public void setPlanBody(String planBody) {
		this.planBody = planBody;
	}

	public Timestamp getClassDate() {
		return classDate;
	}
	public void setClassDate(Timestamp classDate) {
		this.classDate = classDate;
	}
	public Lecture getLecture() {
		return lecture;
	}
	public void setLecture(Lecture lecture) {
		this.lecture = lecture;
	}


	@Override
	public String toString()
	{
		return lecture.className+" "+lecture.professorName;
	}

}
