package com.ssodal.action;


import java.util.ArrayList;
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
	public ModelAndView select_result(@RequestParam("seat_code") int seat_code)throws Exception {
		ModelAndView seatResult = new ModelAndView("seat/select_result");
		//seat_code는 vip인지 R석인지 S석인지 판단하는 기준이 된다.
		int content_code=3;//완성된 코드는 콘텐츠 정보인 콘텐츠 코드도 같이 넘어와야한다. 여기서는 미리선언

		ContentsBean seat_check=this.contService.showInfo(content_code);//컨텐츠 테이블에 등록된 총좌석수를 뽑아오기
		List<SeatBean> selected_seat = this.contService.seat_info(content_code);//다른 사용자가 예매한 좌석정보 전체를 좌석테이블에서 불러옴
		/*좌석 등급: 1은 vip, 2는 R석, 3은 S석, 4는 A석 */
		if(seat_code == 1){
			List<SeatBean> seatList=new ArrayList<SeatBean>();
			int max=seat_check.getViptotal();//총좌석
			seatResult.addObject("max",max);
			int row =1;//행
			int line=1;//열
			for(int i=1;max>=i;i++){
				SeatBean seatSet = new SeatBean();
				if((row == seat_check.getVip_line())){//열 증가
					seatSet.setSeat_line(line);//열을 넣고
					line=line+1;//열을 1개 증가
					seatSet.setSeat_row(row);//행넣고
					row=1;//행 초기화
				}else{
					seatSet.setSeat_row(row);//행을 넣었음
					seatSet.setSeat_line(line);//열을 넣엇음
					row++;//행만 증가
				}
				seatList.add(seatSet);
			}//열과 행증가 for문
			seatResult.addObject("s_seat",selected_seat);
			seatResult.addObject("vipLine",seat_check.getVip_line());
			seatResult.addObject("seatList",seatList);
		}else if(seat_code == 2){//R석일때
			int max=seat_check.getRtotal();
			seatResult.addObject("test",max);//잊지말고 바꿀것
		}else if(seat_code == 3){//S석일때
			int max=seat_check.getStotal();
			seatResult.addObject("test",max);//잊지말고 바꿀것
		}else if(seat_code ==4){//A석일때
			int max=seat_check.getAtotal();
			seatResult.addObject("test",max);//잊지말고 바꿀것	
		}
		//변수하나라도 넘기지 않거나 활용하지 않으면 ajax가 제대로 작동하지 않는듯
		//null이 허용 되는 경우는 웹페이지에서 넘어오는 값뿐이다. DB에서는 null값이 넘어오면 에러남

		seatResult.addObject("seat",seat_code);
		//seat.addObject("seat",);
		return seatResult;
	}
	/*------------------------- select_result ---------------------*/

	/*------------------------- Detail -------------------------*/
}
