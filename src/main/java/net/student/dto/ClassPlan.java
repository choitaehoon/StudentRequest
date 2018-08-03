package net.student.dto;

import java.sql.Timestamp;

public class ClassPlan 
{
	int planNo;
	int professorId;
	int classId;
	int classBody;
	Timestamp classDate;
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
	public int getClassBody() {
		return classBody;
	}
	public void setClassBody(int classBody) {
		this.classBody = classBody;
	}
	public Timestamp getClassDate() {
		return classDate;
	}
	public void setClassDate(Timestamp classDate) {
		this.classDate = classDate;
	}
	
}
