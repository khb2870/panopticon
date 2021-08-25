package net.daum.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.daum.vo.User_InfoVO;

@Repository
public class User_InfoDAOImpl implements User_InfoDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertUser_Info(User_InfoVO ui) {
		
		this.sqlSession.insert("ui_in",ui);
	}//회원 가입

	@Override
	public int loginUser_Info(User_InfoVO ui) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectOne("ui_login",ui);
	}

	@Override
	public List<User_InfoVO> getUser_InfoList(User_InfoVO ui) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectList("ui_info",ui);
	}

	
}
