package com.example.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact() {
		return "contact";
	}
	
	@RequestMapping(value = "/about_us", method = RequestMethod.GET)
	public String about() {
		return "about_us";
	}
	
	@RequestMapping(value = "/noticeboard", method = RequestMethod.GET)
	public String notice() {
		return "noticeboard";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	
	
	//Main 폴더내 페이지
	
	
	//회원 로그인 시 회원 데이터
	@RequestMapping(value = "/main/user_data", method = RequestMethod.GET)
	public String userData() {
		return "main/user_data";
	}
	
	
	
	//공지사항 페이지
	//게시글 작성페이지 이동
	@RequestMapping(value = "/notice/insert", method = RequestMethod.GET)
	public String insertGet() {
		return "notice/insert";
	}
	//게시글 작성 후 데이터 삽입
	@RequestMapping(value = "/notice/insert", method = RequestMethod.POST)
	public String insertPost() {
		return "redirect:/noticeboard";		//공지게시판 이미지 로딩오류
	}
	
	
	//게시글 조회
	@RequestMapping(value = "/notice/read", method = RequestMethod.GET)
	public String read() {
		return "notice/read";
	}
	
	
	//게시글 수정 페이지로 이동
	@RequestMapping(value = "/notice/update", method = RequestMethod.GET)
	public String updqteGet() {
		return "notice/update";
	}
	
	//게시글 수정 후 수정데이터 삽입
	@RequestMapping(value = "/notice/update", method = RequestMethod.POST)
	public String updatePost() {
		return "notice/read";
	}
	
	//게시글 삭제
	@RequestMapping(value = "/notice/delete", method = RequestMethod.POST)
	public String delete() {
		return "redirect:/noticeboard";			//공지게시판 이미지 로딩오류
	}
}
