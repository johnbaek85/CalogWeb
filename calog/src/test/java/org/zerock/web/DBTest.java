package org.zerock.web;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.domain.BoardVO;
import com.example.domain.SearchCriteria;
import com.example.persistence.BoardDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class DBTest {
	
	@Inject
	private DataSource ds;
	@Inject
	private BoardDAO bdao;
	
	@Test
	public void TestConnection() throws Exception{
		try{
			Connection con = ds.getConnection();
			System.out.println(con.toString());
		}catch(Exception e){
			System.out.println("연결 " + e.toString());
		}
	}
	
	@Test
	public void boardListTest() throws Exception{
		SearchCriteria cri = new SearchCriteria();
		bdao.list(cri);
	}
	
	@Test 
	public void boardReadTest() throws Exception{
		bdao.read(2);
	}
	
	@Test 
	public void boardUpdateTest() throws Exception{
		BoardVO vo = new BoardVO();
		vo.setTitle("수정 테스트");
		vo.setContent("변경내용");
		bdao.update(vo);
	}
	
	@Test
	public void boardInsertTest() throws Exception{
		BoardVO vo = new BoardVO();
		vo.setTitle("삽입데이터");
		vo.setContent("추가 데이터 내용");
		vo.setWriter("admin");
		bdao.insert(vo);
		
	}
	
	@Test public void boardDeleteTest() throws Exception{
		bdao.delete(5);
	}


}
