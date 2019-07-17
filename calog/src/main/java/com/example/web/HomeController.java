package com.example.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.domain.PageMaker;
import com.example.domain.SearchCriteria;
import com.example.persistence.BoardDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}	
	
	
	
	@Inject
	private BoardDAO dao;
	
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact() {
		return "contact";
	}
	
	@RequestMapping(value = "/about_us", method = RequestMethod.GET)
	public String about() {
		return "about_us";
	}
	
	@RequestMapping("/noticeboard")
	public String notice(SearchCriteria cri, Model model) throws Exception{			//board list
		PageMaker pm = new PageMaker();
		pm.setCri(cri);
		pm.setDisplayPageNum(5);
		pm.setTotalCount(dao.count(cri));
		
		model.addAttribute("cri", cri);
		model.addAttribute("pm", pm);
		model.addAttribute("list", dao.list(cri));
		return "noticeboard";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	
	
	//Main 페이지
	
	
	//사용자 로그인 시
	@RequestMapping(value = "/main/user_data", method = RequestMethod.GET)
	public String userData() {
		return "main/user_data";
	}
	
	
	
	
}
