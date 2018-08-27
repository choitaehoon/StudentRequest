package net.student.dto;

import java.util.Date;

public class SolveQuiz 
{
	int studentId;
	int quizId;
	int count;
	double average;
	Date quizDate;
	
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public int getQuizId() {
		return quizId;
	}
	public void setQuizId(int quizId) {
		this.quizId = quizId;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public double getAverage() {
		return average;
	}
	public void setAverage(double average) {
		this.average = average;
	}
	public Date getQuizDate() {
		return quizDate;
	}
	public void setQuizDate(Date quizDate) {
		this.quizDate = quizDate;
	}
	
}
