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
	
	// �α���
	@Override
	public UserVO read(UserVO vo) throws Exception {
		return session.selectOne(namespace + ".read", vo);
	}

	// ȸ������
	@Override
	public void insert(UserVO vo) throws Exception {
		session.insert(namespace + ".insert", vo);
	}
	
	// ȸ������
	@Override
	public void update(UserVO vo) throws Exception {
		session.update(namespace + ".withdrawal", vo);
	}
	
	// ȸ��Ż��
	@Override
	public void withdrawal(int del_check_user_id) throws Exception {
		session.update(namespace + ".update", del_check_user_id);
	}
	
	// ȸ�� ����Ʈ
	@Override
	public void list(UserVO vo) throws Exception {
		session.selectList(namespace + ".list", vo);
	}
	
	
	
	
	
}
