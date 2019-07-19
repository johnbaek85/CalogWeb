package com.example.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.domain.UserVO;
import com.example.persistence.UserDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Inject
	UserDAO dao;
	
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
	
	@RequestMapping(value = "/about-us", method = RequestMethod.GET)
	public String about() {
		return "about-us";
	}
	
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String notice() {
		return "notice";
	}
	
	@RequestMapping(value = "/main/admin-data", method = RequestMethod.GET)
	public String uadminData(UserVO vo, HttpSession session) {
		return "./main/admin-data";
	
	}
	
	@RequestMapping(value = "/main/user-data", method = RequestMethod.GET)
	   public String userDataPost(UserVO vo, HttpSession session) {

	      String user_id;
	      if (session.getAttribute("user_id") == null) {
	         user_id = "";
	      } else {
	         user_id = (String) session.getAttribute("user_id");
	      }

	      if (user_id.equals("")) {
	         return "/login"; // 로그인이 안된경우

	      } else if (user_id.equals("admin")) {
	         return "./main/admin-data"; // 관리자로 로그인한 경우

	      } else {
	         return "./main/user-data"; // 일반유저
	      }

	      /*
	       * UserVO vo3 = null; try{ vo3 = udao.read(vo); } catch (Exception e){
	       * e.printStackTrace(); }
	       * 
	       * if(vo3 == null){ return "/login"; }else{
	       * session.setAttribute("user_id", vo.getUser_id()); return
	       * "/main/user-data"; }
	       */
	   }
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}	
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(UserVO vo, HttpSession session) {
		UserVO vo2 = null;
		try {
			vo2 = dao.read(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (vo2 == null) {
			return "/login";
		} else {
			session.setAttribute("user_id", vo.getUser_id());
			if (vo.getUser_id().equals("admin")) {
				return "/main/admin-data";
			}
			return "/main/user-data";
		}

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout( HttpSession session) {
		session.removeAttribute("user_id");
		return "/home";
	}	
	
	@RequestMapping(value = "/loginchange", method = RequestMethod.GET)
	public String loginchange(){
		
		return "loginchange";
	}
	
	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public String memberList(){
		
		return "memberList";
	}
}