package com.ssodal.bean;

public class SeatBean {

	private int content_no;
	private String id;
	private int content_seat_class;
	private int seat_date;
	private String seat_location;
	private int seat_row;
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
	public int getSeat_date() {
		return seat_date;
	}
	public void setSeat_date(int seat_date) {
		this.seat_date = seat_date;
	}
	public String getSeat_location() {
		return seat_location;
	}
	public void setSeat_location(String seat_location) {
		this.seat_location = seat_location;
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
	private int seat_line;
}
