package com.ssodal.action;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssodal.bean.BoardBean;
import com.ssodal.service.BoardService;



@Controller
public class SsodalAction {
	
	/*------------------------- Board -------------------------*/
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("board_list")
	public ModelAndView handlerBoardList() {
		
		List<BoardBean> list=boardService.handlerList();
		
		ModelAndView modelAndView=new ModelAndView("board/list");
		
		modelAndView.addObject("list",list);
		
		return modelAndView;
		
	}//end of method handlerBoardList
	
	@RequestMapping("board_write")
	public ModelAndView handlerBoardWrite() {
		
		ModelAndView modelAndView=new ModelAndView("board/write");
		
		return modelAndView;
		
	}//end of method handlerBoardWrite
	
	@RequestMapping("board_write_save")
	public ModelAndView handlerBoardSave(@ModelAttribute BoardBean boardBean,HttpServletRequest request) {
		
		boardService.handlerWrite(boardBean);
		
		ModelAndView modelAndView=new ModelAndView("redirect:/board_list.do");
		
		return modelAndView;
		
	}//end of method handlerBoardSave
	
	@RequestMapping("board_content")
	public ModelAndView handlerBoardContent(HttpServletRequest request) {
		
		boardService.handlerHit(Integer.parseInt(request.getParameter("board_no")));
		BoardBean boardBean=boardService.handlerContent(Integer.parseInt(request.getParameter("board_no")));
		String boardContent=boardBean.getBoard_content().replace("\n","<br/>");
		
		ModelAndView modelAndView=new ModelAndView("board/content");
		
		modelAndView.addObject("boardBean",boardBean);
		modelAndView.addObject("boardContent",boardContent);
		
		return modelAndView;
		
	}//end of method handlerBoardContent
	
	@RequestMapping("board_private")
	public void handlerPrivate(HttpServletRequest request,HttpServletResponse response) throws Exception {
		
		PrintWriter printWriter=response.getWriter();
		
		response.setContentType("text/html;charset=utf-8");
		
		String boardPassword=boardService.handlerPassword(Integer.parseInt(request.getParameter("board_no")));
		
		printWriter.println("<script type='text/javascript'>function handler() { if(document.getElementById('password').value=="+boardPassword+") { location.href='board_content.do?board_no="+Integer.parseInt(request.getParameter("board_no"))+"'; } else { history.back(); } }</script>");
		printWriter.println("<input type='hidden' name='password' id='password' />");
		printWriter.println("<script type='text/javascript'>window.open('view/board/private.jsp','','left=500,top=200,width=400,height=60,scrollbars=no,status=no,resizable=no,fullscreen=no,channelmode=no,toolbar=no,menubar=no');</script>");
		
	}//end of method handlerPrivate
	
	@RequestMapping("board_edit")
	public ModelAndView handlerEdit(HttpServletRequest request) {
		
		BoardBean boardBean=boardService.handlerContent(Integer.parseInt(request.getParameter("board_no")));
		String boardContent=boardBean.getBoard_content().replace("\n","<br/>");
		
		ModelAndView modelAndView=new ModelAndView("board/edit");
		
		modelAndView.addObject("boardBean",boardBean);
		modelAndView.addObject("boardContent",boardContent);
		
		return modelAndView;
		
	}//end of method handlerEdit
	
	@RequestMapping("board_delete")
	public void handlerDelete(HttpServletRequest request,HttpServletResponse response) throws Exception {
		
		PrintWriter printWriter=response.getWriter();
		
		BoardBean boardBean=boardService.handlerContent(Integer.parseInt(request.getParameter("board_no")));
		
		if(boardBean.getBoard_private()==1) {
			String boardPassword=boardService.handlerPassword(Integer.parseInt(request.getParameter("board_no")));
			printWriter.println("<script type='text/javascript'>if(window.prompt('you want delete? input password')=="+boardPassword+") { alert('success!'); location.href='board_really_delete.do?board_no="+Integer.parseInt(request.getParameter("board_no"))+"'; } else { alert('not same password'); history.back(); }</script>");
		} else {
			printWriter.println("<script type='text/javascript'>if(window.confirm('really delete?')) { alert('success!'); location.href='board_really_delete.do?board_no="+Integer.parseInt(request.getParameter("board_no"))+"'; } else { alert('got it'); history.back(); }</script>");
		}//end of if else
		
	}//end of method handlerDelete
	
	@RequestMapping("board_really_delete")
	public void handlerReallyDelete(HttpServletRequest request,HttpServletResponse response) throws Exception {
		
		PrintWriter printWriter=response.getWriter();
		
		BoardBean boardBean=boardService.handlerContent(Integer.parseInt(request.getParameter("board_no")));
		
		boardService.handlerDelete(Integer.parseInt(request.getParameter("board_no")));
		
		printWriter.println("<script type='text/javascript'>location.href='board_list.do';</script>");
		/*
		ModelAndView modelAndView=new ModelAndView("redirect:/board_list.do");
		
		return modelAndView;
		*/
	}//end of method handlerDelete
	
	/*------------------------- Board -------------------------*/

	/*------------------------- Board Reply -------------------------*/

	/*------------------------- Board Reply -------------------------*/

	
	
}//end of class SsodalAction









