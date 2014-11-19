package com.ssodal.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssodal.bean.ContentsBean;
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
	/*------------------------- Detail -------------------------*/
}
