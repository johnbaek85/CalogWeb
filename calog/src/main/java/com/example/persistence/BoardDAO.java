package com.example.persistence;

import java.util.List;

import com.example.domain.BoardVO;
import com.example.domain.SearchCriteria;

public interface BoardDAO {
	
	public List<BoardVO> list(SearchCriteria cri) throws Exception;
	public BoardVO read(int bno) throws Exception;
	public void update(BoardVO vo) throws Exception;
	public void insert(BoardVO vo) throws Exception;
	public void delete(int bno) throws Exception;
	public int count(SearchCriteria cri)throws Exception;
	public void updateView(int bno)throws Exception;
}
