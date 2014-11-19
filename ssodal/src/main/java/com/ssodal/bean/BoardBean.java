package com.ssodal.bean;



public class BoardBean {
	
	private int board_no;
	private String board_name;
	private String board_title;
	private String board_content;
	private int board_private;
	private String board_password;
	private int board_img;
	private String board_file;
	private int board_hit;
	private int board_comment;
	private int board_layout;
	private String board_date;
	
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public String getBoard_name() {
		return board_name;
	}
	public void setBoard_name(String board_name) {
		this.board_name = board_name;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public int getBoard_private() {
		return board_private;
	}
	public void setBoard_private(int board_private) {
		this.board_private = board_private;
	}
	public String getBoard_password() {
		return board_password;
	}
	public void setBoard_password(String board_password) {
		this.board_password = board_password;
	}
	public int getBoard_img() {
		return board_img;
	}
	public void setBoard_img(int board_img) {
		this.board_img = board_img;
	}
	public String getBoard_file() {
		return board_file;
	}
	public void setBoard_file(String board_file) {
		this.board_file = board_file;
	}
	public int getBoard_hit() {
		return board_hit;
	}
	public void setBoard_hit(int board_hit) {
		this.board_hit = board_hit;
	}
	public int getBoard_comment() {
		return board_comment;
	}
	public void setBoard_comment(int board_comment) {
		this.board_comment = board_comment;
	}
	public int getBoard_layout() {
		return board_layout;
	}
	public void setBoard_layout(int board_layout) {
		this.board_layout = board_layout;
	}
	public String getBoard_date() {
		return board_date;
	}
	public void setBoard_date(String board_date) {
		this.board_date = board_date.substring(0,10);
	}
	
}//end of class BoardBean









