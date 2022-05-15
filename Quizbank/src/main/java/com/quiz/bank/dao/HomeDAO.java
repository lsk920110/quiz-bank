package com.quiz.bank.dao;

import com.quiz.bank.vo.QuizVO;
import com.quiz.bank.vo.TestCategory;

public interface HomeDAO {

	void registQuiz(QuizVO params);

	void registTestCategory(TestCategory params);

}
