package com.ssodal.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssodal.bean.ContentsBean;
import com.ssodal.bean.SeatBean;

@Repository
public class ContentsDAOImpl implements ContentsDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public ContentsBean showI(int i) {
		return this.sqlSession.selectOne("contents_cont",i);
	}

	@Override
	public List<SeatBean> seat_Info(int content_code) {
		return this.sqlSession.selectList("seat_info", content_code);
	}


}
