package com.quiz.bank.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.quiz.bank.service.HomeService;
import com.quiz.bank.vo.QuizVO;
import com.quiz.bank.vo.ResultVO;
import com.quiz.bank.vo.TestCategory;


@Controller
public class HomeController {
	
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired HomeService homeService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value="/registQuizPage")
	public ModelAndView registQuizPage() {
		ModelAndView mav = new ModelAndView("registQuizPage");
		return mav;
	}
	
	@RequestMapping(value="/registCategoryPage")
	public ModelAndView registCategoryPage() {
		ModelAndView mav = new ModelAndView("registCategoryPage");
		return mav;
	}
	
	
	
	@RequestMapping(value="/registQuiz", method = RequestMethod.POST)
	@ResponseBody
	public ResultVO registQuiz(@RequestBody QuizVO params) {
		logger.info("도착{},{}",params.getQuiz_content());
		homeService.registQuiz(params);
		
		
		return new ResultVO("성공");
	}
	
	
	@RequestMapping(value="/registTestCategory" , method = RequestMethod.POST)
	@ResponseBody
	public ResultVO registTestCategory(@RequestBody TestCategory params) {
		homeService.registTestCategory(params);
		
		
		return null;
	}
	
}
