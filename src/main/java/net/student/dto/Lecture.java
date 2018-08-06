package net.student.dto;

import java.sql.Time;
import java.util.Date;

public class Lecture {
	int classId;
	String className;
	String professorName;
	int planNo;
	int roomId;
	String body;
	Time startClass;
	Time endClass;
	Date classDate;


	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}

	public int getPlanNo() {
		return planNo;
	}
	public void setPlanNo(int planNo) {
		this.planNo = planNo;
	}
	public int getRoomId() {
		return roomId;
	}
	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}
	public String getProfessorName() {
		return professorName;
	}
	public void setProfessorName(String professorName) {
		this.professorName = professorName;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public Time getStartClass() {
		return startClass;
	}
	public void setStartClass(Time startClass) {
		this.startClass = startClass;
	}
	public Time getEndClass() {
		return endClass;
	}
	public void setEndClass(Time endClass) {
		this.endClass = endClass;
	}
	public Date getClassDate() {
		return classDate;
	}
	public void setClassDate(Date classDate) {
		this.classDate = classDate;
	}



}
