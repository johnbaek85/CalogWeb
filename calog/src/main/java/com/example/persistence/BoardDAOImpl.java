package com.example.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.domain.BoardVO;
import com.example.domain.SearchCriteria;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Inject
	private SqlSession session;
	private static String namespace = "BoardMapper";

	@Override
	public List<BoardVO> list(SearchCriteria cri) throws Exception {
		
		return session.selectList(namespace+".list", cri);
	}

	@Override
	public BoardVO read(int bno) throws Exception {
	
		return session.selectOne(namespace+".read", bno);
	}

	@Override
	public void update(BoardVO vo) throws Exception {
		session.update(namespace+".update", vo);
		
	}

	@Override
	public void insert(BoardVO vo) throws Exception {
		session.insert(namespace+".insert", vo);
		
	}

	@Override
	public void delete(int bno) throws Exception {
		session.delete(namespace+".delete", bno);
		
	}

	@Override
	public int count(SearchCriteria cri) throws Exception {
	
		return session.selectOne(namespace+".count", cri);
	}

	@Override
	public void updateView(int bno) throws Exception {

		session.update(namespace+".updateView",bno);	
	}

}
