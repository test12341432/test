package com.ssodal.bean;

public class SeatBean {

	private int content_no;
	private String id;
	private int content_seat_class;
	private String seat_date;
	private int seat_row;
	private int seat_line;
	private int selected_seat;
	public int getSelected_seat() {
		return selected_seat;
	}
	public void setSelected_seat(int selected_seat) {
		this.selected_seat = selected_seat;
	}
	
	public int getContent_no() {
		return content_no;
	}
	public void setContent_no(int content_no) {
		this.content_no = content_no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getContent_seat_class() {
		return content_seat_class;
	}
	public void setContent_seat_class(int content_seat_class) {
		this.content_seat_class = content_seat_class;
	}
	public String getSeat_date() {
		return seat_date;
	}
	public void setSeat_date(String seat_date) {
		this.seat_date = seat_date;
	}
	public int getSeat_row() {
		return seat_row;
	}
	public void setSeat_row(int seat_row) {
		this.seat_row = seat_row;
	}
	public int getSeat_line() {
		return seat_line;
	}
	public void setSeat_line(int seat_line) {
		this.seat_line = seat_line;
	}
	
}
