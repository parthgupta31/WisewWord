package com.entity;

public class UserBean {
	
		private int user_id;
		private String user_name;
		private String user_email;
		private String user_password;
		private String user_mobile;
		private int field_id;
		private int specialization_id;
		private String user_qualification;
		private int user_age;
		private String description;
		public int getUser_id() {
			return user_id;
		}
		public String getUser_name() {
			return user_name;
		}
		public String getUser_email() {
			return user_email;
		}
		public String getUser_password() {
			return user_password;
		}
		public String getUser_mobile() {
			return user_mobile;
		}
		public void setUser_id(int user_id) {
			this.user_id = user_id;
		}
		public void setUser_name(String user_name) {
			this.user_name = user_name;
		}
		public void setUser_email(String user_email) {
			this.user_email = user_email;
		}
		public void setUser_password(String user_password) {
			this.user_password = user_password;
		}
		public void setUser_mobile(String user_mobile) {
			this.user_mobile = user_mobile;
		}
		public int getField_id() {
			return field_id;
		}
		public int getSpecialization_id() {
			return specialization_id;
		}
		public String getUser_qualification() {
			return user_qualification;
		}
		public int getUser_age() {
			return user_age;
		}
		public String getDescription() {
			return description;
		}
		public void setField_id(int field_id) {
			this.field_id = field_id;
		}
		public void setSpecialization_id(int specialization_id) {
			this.specialization_id = specialization_id;
		}
		public void setUser_qualification(String user_qualification) {
			this.user_qualification = user_qualification;
		}
		public void setUser_age(int user_age) {
			this.user_age = user_age;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		@Override
		public String toString() {
			return "UserBean [user_id=" + user_id + ", user_name=" + user_name + ", user_email=" + user_email
					+ ", user_password=" + user_password + ", user_mobile=" + user_mobile + ", field_id=" + field_id
					+ ", specialization_id=" + specialization_id + ", user_qualification=" + user_qualification
					+ ", user_age=" + user_age + ", description=" + description + "]";
		}
	
		
		

}
