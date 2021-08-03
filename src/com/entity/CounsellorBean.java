package com.entity;

public class CounsellorBean {

	private int counsellor_id;
	private String counsellor_name;
	private String counsellor_email;
	private String counsellor_password;
	private String counsellor_mobile;
	private int field_id;
	private int specialization_id;
	private String qualification;
	private String work_experience;
	private String address;
	private String about_me;
	private String profile_pic; 
	public String getProfile_pic() {
		return profile_pic;
	}
	public void setProfile_pic(String profile_pic) {
		this.profile_pic = profile_pic;
	}
	public int getCounsellor_id() {
		return counsellor_id;
	}
	public String getCounsellor_name() {
		return counsellor_name;
	}
	public String getCounsellor_email() {
		return counsellor_email;
	}
	public String getCounsellor_password() {
		return counsellor_password;
	}
	public String getCounsellor_mobile() {
		return counsellor_mobile;
	}
	public int getField_id() {
		return field_id;
	}
	public int getSpecialization_id() {
		return specialization_id;
	}
	public String getQualification() {
		return qualification;
	}
	public String getWork_experience() {
		return work_experience;
	}
	public String getAddress() {
		return address;
	}
	public String getAbout_me() {
		return about_me;
	}
	public void setCounsellor_id(int counsellor_id) {
		this.counsellor_id = counsellor_id;
	}
	public void setCounsellor_name(String counsellor_name) {
		this.counsellor_name = counsellor_name;
	}
	public void setCounsellor_email(String counsellor_email) {
		this.counsellor_email = counsellor_email;
	}
	public void setCounsellor_password(String counsellor_password) {
		this.counsellor_password = counsellor_password;
	}
	public void setCounsellor_mobile(String counsellor_mobile) {
		this.counsellor_mobile = counsellor_mobile;
	}
	public void setField_id(int field_id) {
		this.field_id = field_id;
	}
	public void setSpecialization_id(int specialization_id) {
		this.specialization_id = specialization_id;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public void setWork_experience(String work_experience) {
		this.work_experience = work_experience;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "CounsellorBean [counsellor_id=" + counsellor_id + ", counsellor_name=" + counsellor_name
				+ ", counsellor_email=" + counsellor_email + ", counsellor_password=" + counsellor_password
				+ ", counsellor_mobile=" + counsellor_mobile + ", field_id=" + field_id + ", specialization_id="
				+ specialization_id + ", qualification=" + qualification + ", work_experience=" + work_experience
				+ ", address=" + address + ", about_me=" + about_me + "]";
	}
	public void setAbout_me(String about_me) {
		this.about_me = about_me;
	}
	
	}
	
