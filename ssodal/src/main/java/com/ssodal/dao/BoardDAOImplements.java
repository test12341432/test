package com.ssodal.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssodal.bean.BoardBean;



@Repository
public class BoardDAOImplements implements BoardDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<BoardBean> handlerList() {
		return sqlSession.selectList("list");
	}//end of Override method handlerList

	@Override
	public void handlerWrite(BoardBean boardBean) {
		sqlSession.insert("write",boardBean);
	}//end of Override method handlerWrite

	@Override
	public void handlerHit(int board_no) {
		sqlSession.update("hit",board_no);
	}//end of method handlerHit

	@Override
	public BoardBean handlerContent(int board_no) {
		return sqlSession.selectOne("content",board_no);
	}//end of method handlerContent

	@Override
	public String handlerPassword(int board_no) {
		return sqlSession.selectOne("password",board_no);
	}//end of Override method handlerPassword

	@Override
	public void handlerDelete(int board_no) {
		sqlSession.delete("delete",board_no);
	}//end of Override method handlerDelete
	
}//end of class BoardDAOImplements









