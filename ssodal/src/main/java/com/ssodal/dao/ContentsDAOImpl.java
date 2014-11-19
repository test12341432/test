package com.ssodal.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssodal.bean.ContentsBean;

@Repository
public class ContentsDAOImpl implements ContentsDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public ContentsBean showI(int i) {
		return this.sqlSession.selectOne("contents_cont",i);
	}

}
