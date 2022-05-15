package com.quiz.bank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.bank.dao.HomeDAO;
import com.quiz.bank.vo.QuizVO;
import com.quiz.bank.vo.TestCategory;

@Service
public class HomeService {

	@Autowired HomeDAO homeDAO;
	
	public void registQuiz(QuizVO params) {
		homeDAO.registQuiz(params);		
	}

	public void registTestCategory(TestCategory params) {
		homeDAO.registTestCategory(params);
	}

	
	
}
