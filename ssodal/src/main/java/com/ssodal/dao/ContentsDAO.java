package com.ssodal.dao;


import java.util.List;

import com.ssodal.bean.ContentsBean;
import com.ssodal.bean.SeatBean;

public interface ContentsDAO {

	ContentsBean showI(int i);

	List<SeatBean> getSeat(int seat_code);


}
