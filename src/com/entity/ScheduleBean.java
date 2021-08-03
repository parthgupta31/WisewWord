package com.entity;

public class ScheduleBean {
	private int counsellor_id;
	private String day;
	private String start_time;
	private String end_time;
	private String day_shift;
	private String status;
	private String date;
	private int patients_count;
	public int getCounsellor_id() {
		return counsellor_id;
	}
	public String getDay() {
		return day;
	}
	public String getStart_time() {
		return start_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public String getDay_shift() {
		return day_shift;
	}
	public String getStatus() {
		return status;
	}
	public String getDate() {
		return date;
	}
	public int getPatients_count() {
		return patients_count;
	}
	public void setCounsellor_id(int counsellor_id) {
		this.counsellor_id = counsellor_id;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public void setDay_shift(String day_shift) {
		this.day_shift = day_shift;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setPatients_count(int count) {
		this.patients_count = patients_count;
	}
	@Override
	public String toString() {
		return "ScheduleBean [counsellor_id=" + counsellor_id + ", day=" + day + ", start_time=" + start_time
				+ ", end_time=" + end_time + ", day_shift=" + day_shift + ", status=" + status + ", date=" + date
				+ ", patients_count=" + patients_count + "]";
	}

}
