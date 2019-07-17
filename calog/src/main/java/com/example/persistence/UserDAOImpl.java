package com.example.persistence;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO{

	@Inject
	private SqlSession session;
	private static String namespace = "userMapper";
	
	// 로그인
	@Override
	public UserVO read(UserVO vo) throws Exception {
		return session.selectOne(namespace + ".read", vo);
	}

	// 회원가입
	@Override
	public void insert(UserVO vo) throws Exception {
		session.insert(namespace + ".insert", vo);
	}
	
	// 회원수정
	@Override
	public void update(UserVO vo) throws Exception {
		session.update(namespace + ".withdrawal", vo);
	}
	
	// 회원탈퇴
	@Override
	public void withdrawal(int del_check_user_id) throws Exception {
		session.update(namespace + ".update", del_check_user_id);
	}
	
	// 회원 리스트
	@Override
	public void list(UserVO vo) throws Exception {
		session.selectList(namespace + ".list", vo);
	}
	
	
	
	
	
}
