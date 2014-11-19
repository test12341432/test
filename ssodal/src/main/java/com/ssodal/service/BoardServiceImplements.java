package com.ssodal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssodal.bean.BoardBean;
import com.ssodal.dao.BoardDAO;



@Service
public class BoardServiceImplements implements BoardService {
	
	@Autowired
	private BoardDAO boardDAO;

	@Override
	public List<BoardBean> handlerList() {
		return boardDAO.handlerList();
	}//end of Override method handlerList

	@Override
	public void handlerWrite(BoardBean boardBean) {
		boardDAO.handlerWrite(boardBean);
	}//end of Override method handlerWrite

	@Override
	public void handlerHit(int board_no) {
		boardDAO.handlerHit(board_no);
	}//end of method handlerHit

	@Override
	public BoardBean handlerContent(int board_no) {
		return boardDAO.handlerContent(board_no);
	}//end of method handlerContent

	@Override
	public String handlerPassword(int board_no) {
		return boardDAO.handlerPassword(board_no);
	}//end of Override method handlePassword

	@Override
	public void handlerDelete(int board_no) {
		boardDAO.handlerDelete(board_no);
	}//end of Override method handlerDelete
	
}//end of class BoardServiceImplements









