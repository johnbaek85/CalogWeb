package com.example.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private JavaMailSender mailsender;

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

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	@RequestMapping(value = "/contact")
	public String contact() {
		return "/contact";
	}

	// mailSending 코드
	@RequestMapping(value = "/mailSending")
	public String mailSending(HttpServletRequest request) {

		String setfrom = "sendercalog@gmail.com"; // rootcontext에 등록된..
		String tomail = "toki42ver@naver.com"; // 받는 사람 이메일 - 어차피 calog
		String title = request.getParameter("title"); // 제목
		String name = request.getParameter("yourname");
		String content = "보낸 사람 메일 주소 : <" + request.getParameter("yourmail") + ">" + "\n" + "보낸 사람 이름 : " + name
				+ "\n\n\n" + request.getParameter("content"); // 내용

		try {
			MimeMessage message = mailsender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하거나 하면 정상작동을 안함
			messageHelper.setTo(tomail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용

			mailsender.send(message);
		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return "redirect:/contact";
	}

	@RequestMapping(value = "/about-us", method = RequestMethod.GET)
	public String about() {
		return "about-us";
	}

	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String notice() {
		return "notice";
	}

	@RequestMapping(value = "/main/user-data", method = RequestMethod.GET)
	public String userData() {
		return "main/user-data";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/notice/insert", method = RequestMethod.GET)
	public String insert() {
		return "notice/insert";
	}

	@RequestMapping(value = "/notice/read", method = RequestMethod.GET)
	public String read() {
		return "notice/read";
	}
}
