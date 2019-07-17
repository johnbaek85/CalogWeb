package com.example.web;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.domain.BoardVO;
import com.example.domain.SearchCriteria;
import com.example.persistence.BoardDAO;
import com.example.service.BoardService;

@Controller

@RequestMapping("/notice/*")
public class BoardController {
	@Inject
	private BoardDAO dao;
	
	@Inject
	BoardService service;
	
	
	
	//공지사항 게시판
		//새글 작성 페이지로 이동
		@RequestMapping(value = "insert", method = RequestMethod.GET)
		public String insertGet(SearchCriteria cri, Model model) throws Exception{
			model.addAttribute("cri",cri);
			return "notice/insert";
		}
		//새글 작성 후 DB삽입 경로
		@RequestMapping(value = "insert", method = RequestMethod.POST)
		public String insertPost(BoardVO vo) throws Exception{
			dao.insert(vo);
			return "redirect:/noticeboard";		
		}
		
		
		//게시글 읽기
		@RequestMapping(value = "read", method = RequestMethod.GET)
		public void read(int bno, Model model, SearchCriteria cri) throws Exception{
			model.addAttribute("cri",cri);
			model.addAttribute("vo", service.read(bno));
		}
		
		
		//게시글 수정 페이지로 이동
		@RequestMapping(value = "update", method = RequestMethod.GET)
		public String updateGet(BoardVO vo, Model model, SearchCriteria cri) throws Exception{
			model.addAttribute("cri",cri);
			model.addAttribute("vo", vo);
//			System.out.println("update get vo tostirng"+vo.toString());
			
			return "notice/update";
		}
		
		//수정된 데이터 DB에 수정
		@RequestMapping(value = "update", method = RequestMethod.POST)
		public String updatePost(BoardVO vo, SearchCriteria cri, RedirectAttributes rttr) throws Exception {
//			System.out.println("update post vo tostirng"+vo.toString());
			dao.update(vo);
			rttr.addAttribute("searchType",cri.getSearchType());
			rttr.addAttribute("keyword",cri.getKeyword());
			rttr.addAttribute("page",cri.getPage());
			
			
			return "redirect:/noticeboard"; 
		}
		
		//게시글 삭제
		@RequestMapping(value = "delete", method = RequestMethod.POST)
		public String delete(int bno) throws Exception{
			dao.delete(bno);
			return "redirect:/noticeboard";			
		}
	
	
	

}
