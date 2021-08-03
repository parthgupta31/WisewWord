package com.entity;

public class SpecializationBean {
	private int specialization_id;
	private String specialization_name;
	private int field_id;
	public int getSpecialization_id() {
		return specialization_id;
	}
	public String getSpecialization_name() {
		return specialization_name;
	}
	public int getField_id() {
		return field_id;
	}
	public void setSpecialization_id(int specialization_id) {
		this.specialization_id = specialization_id;
	}
	public void setSpecialization_name(String specialization_name) {
		this.specialization_name = specialization_name;
	}
	public void setField_id(int field_id) {
		this.field_id = field_id;
	}
	@Override
	public String toString() {
		return "SpecializationBean [specialization_id=" + specialization_id + ", specialization_name="
				+ specialization_name + ", field_id=" + field_id + "]";
	}

}
