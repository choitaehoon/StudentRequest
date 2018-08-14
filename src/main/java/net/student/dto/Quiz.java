package net.student.dto;

import java.util.Date;

public class Quiz 
{
	int quizId;
	String quizBody;
	int answer;
	Date quizDate;
	int join;
	int classId;
	
	public int getQuizId() {
		return quizId;
	}
	public void setQuizId(int quizId) {
		this.quizId = quizId;
	}
	public String getQuizBody() {
		return quizBody;
	}
	public void setQuizBody(String quizBody) {
		this.quizBody = quizBody;
	}
	public int getAnswer() {
		return answer;
	}
	public void setAnswer(int answer) {
		this.answer = answer;
	}
	public Date getQuizDate() {
		return quizDate;
	}
	public void setQuizDate(Date quizDate) {
		this.quizDate = quizDate;
	}
	public int getJoin() {
		return join;
	}
	public void setJoin(int join) {
		this.join = join;
	}
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	
}
