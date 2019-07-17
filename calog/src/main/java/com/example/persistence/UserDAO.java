package com.example.persistence;

import java.util.ArrayList;

import com.example.domain.UserVO;
import com.mysql.jdbc.Connection;

public interface UserDAO {
	
	// �α���
	public UserVO read(UserVO vo)throws Exception;
	
	// ȸ������
	public void insert(UserVO vo)throws Exception;
	
	// ȸ������
	public void update(UserVO vo)throws Exception;
	
	// ȸ��Ż��
	public void withdrawal(int del_check_user_id)throws Exception;

	// ȸ�� ����Ʈ
	public void list(UserVO vo) throws Exception;

	

	
	

}
