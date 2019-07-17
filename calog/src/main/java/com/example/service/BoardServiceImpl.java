package com.example.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.BoardVO;
import com.example.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {
	@Inject
	BoardDAO dao;
	
	@Transactional
	@Override
	public BoardVO read(int bno) throws Exception {
		dao.updateView(bno);
		return dao.read(bno);
	}

}
