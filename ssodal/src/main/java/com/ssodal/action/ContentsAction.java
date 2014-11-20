package com.ssodal.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ssodal.bean.ContentsBean;
import com.ssodal.bean.SeatBean;
import com.ssodal.service.ContentsService;

@Controller
public class ContentsAction {
	
	@Autowired
	private ContentsService contService;
	/*------------------------- Detail -------------------------*/
	/*------------------------- seatSelect ---------------------*/
	@RequestMapping("seatselect")
	public ModelAndView seat_select(){
		int content_code=3;
		ContentsBean cont=this.contService.showInfo(content_code);
		ModelAndView m = new ModelAndView("seat/seatselect");
		m.addObject("m",cont);
		return m;
	}
	/*------------------------- seatSelect ---------------------*/
	/*------------------------- test ---------------------*/
	@RequestMapping("test")
	public ModelAndView test(){
		ModelAndView m = new ModelAndView("seat/test");
		return m;
	}
	
	/*------------------------- test ---------------------*/
	/*------------------------- select_result ---------------------*/
	@RequestMapping("select_result")
	public ModelAndView select_result(@RequestParam("seat_code") int seat_code){
		int contents_code= 1;//임시로 사용자가 콘텐츠 코드 3번을 선택하였다고 가정
		int maxcount=0;
		ContentsBean seatTotal = this.contService.showInfo(contents_code);
		ModelAndView seat = new ModelAndView("seat/select_result");
		//List<SeatBean> noemty_seat_rowline = this.contService.getSeatinfo(seat_code);//매진좌석 확인
		if(seat_code == 1){//고객이 vip를 선택 했을때
			maxcount = seatTotal.getViptotal();
			seat.addObject("max", maxcount);
		}
		
		
		
		seat.addObject("seat",seat_code);
		return seat;
	}
	/*------------------------- select_result ---------------------*/
	
	/*------------------------- Detail -------------------------*/
}
