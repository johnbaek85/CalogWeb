package com.example.persistence;

import com.example.domain.UserVO;

public interface UserDAO {
	
	// 로그인
	public UserVO read(UserVO vo)throws Exception;
	
	// 회원가입
	public void insert(UserVO vo)throws Exception;
	
	// 회원수정
	public void update(UserVO vo)throws Exception;
	
	// 회원탈퇴
	public void withdrawal(int del_check_user_id)throws Exception;

	// 회원 리스트
	public void list(UserVO vo) throws Exception;

	

	
	

}
