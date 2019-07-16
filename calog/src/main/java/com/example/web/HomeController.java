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
	
	
	
	//Main ������ ������
	
	
	//ȸ�� �α��� �� ȸ�� ������
	@RequestMapping(value = "/main/user_data", method = RequestMethod.GET)
	public String userData() {
		return "main/user_data";
	}
	
	
	
	//�������� ������
	//�Խñ� �ۼ������� �̵�
	@RequestMapping(value = "/notice/insert", method = RequestMethod.GET)
	public String insertGet() {
		return "notice/insert";
	}
	//�Խñ� �ۼ� �� ������ ����
	@RequestMapping(value = "/notice/insert", method = RequestMethod.POST)
	public String insertPost() {
		return "redirect:/noticeboard";		//�����Խ��� �̹��� �ε�����
	}
	
	
	//�Խñ� ��ȸ
	@RequestMapping(value = "/notice/read", method = RequestMethod.GET)
	public String read() {
		return "notice/read";
	}
	
	
	//�Խñ� ���� �������� �̵�
	@RequestMapping(value = "/notice/update", method = RequestMethod.GET)
	public String updqteGet() {
		return "notice/update";
	}
	
	//�Խñ� ���� �� ���������� ����
	@RequestMapping(value = "/notice/update", method = RequestMethod.POST)
	public String updatePost() {
		return "notice/read";
	}
	
	//�Խñ� ����
	@RequestMapping(value = "/notice/delete", method = RequestMethod.POST)
	public String delete() {
		return "redirect:/noticeboard";			//�����Խ��� �̹��� �ε�����
	}
}
