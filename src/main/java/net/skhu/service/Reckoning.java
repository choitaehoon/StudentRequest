package net.skhu.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.skhu.mapper.QuizMapper;
import net.student.dto.Quiz;

@Service
public class Reckoning 
{
	public double count(List<Quiz> quiz)
	{
		Iterator<Quiz> it = quiz.iterator();
		int sum = 0;
		int count = 0;
		while(it.hasNext())
		{
//			sum += it.next().; //sql 고친 후 사용하기
			count++;
		}
		return sum/count;
	}
}
