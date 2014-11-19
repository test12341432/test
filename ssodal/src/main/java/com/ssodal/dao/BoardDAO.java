package com.ssodal.dao;

import java.util.List;

import com.ssodal.bean.BoardBean;



public interface BoardDAO {
	
	public abstract List<BoardBean> handlerList();

	public abstract void handlerWrite(BoardBean boardBean);

	public abstract void handlerHit(int board_no);

	public abstract BoardBean handlerContent(int board_no);

	public abstract String handlerPassword(int board_no);

	public abstract void handlerDelete(int board_no);
	
}//end of interface BoardDAO









