package com.entity;

public class FieldBean {
	private int field_id;
	private String field_name;
	public int getField_id() {
		return field_id;
	}
	public String getField_name() {
		return field_name;
	}
	public void setField_id(int field_id) {
		this.field_id = field_id;
	}
	public void setField_name(String field_name) {
		this.field_name = field_name;
	}
	@Override
	public String toString() {
		return "FieldBean [field_id=" + field_id + ", field_name=" + field_name + "]";
	}

}
