package com.ssodal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssodal.bean.ContentsBean;
import com.ssodal.dao.ContentsDAO;

@Service
public class ContentsServiceImpl implements ContentsService {

	@Autowired
	private ContentsDAO contDAO;

	@Override
	public ContentsBean showInfo(int i) {
		return this.contDAO.showI(i);
	}
}
