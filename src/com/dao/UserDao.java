package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.entity.CounsellorBean;
import com.entity.UserBean;

public class UserDao {
	
		Connection con = DbConnection.getConnection();

		public boolean insert(UserBean c) {
			boolean b = false;
			try {

				String query = "insert into users(user_name,user_email,user_password,user_mobile)"
						+ " values(?,?,?,?)";
				PreparedStatement stmt = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);

				stmt.setString(1, c.getUser_name());
				stmt.setString(2, c.getUser_email());
				stmt.setString(3, c.getUser_password());
				stmt.setString(4, c.getUser_mobile());
				
				int a = stmt.executeUpdate();
				if (a != 0) {
					b = true;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return b;
		}
		public UserBean getUserByEmailandPassword(String email, String password)
		{
			Connection conn=DbConnection.getConnection();
			String query="SELECT * FROM users where user_email=? and user_password=?" ;
			UserBean us=null;
			try
			{
				PreparedStatement stmt = conn.prepareStatement(query);
				stmt.setString(1, email);
				stmt.setString(2, password);
				ResultSet rs = stmt.executeQuery();
				if(rs.next())
				{
					us = new UserBean();
					us.setUser_id(rs.getInt(1));
					us.setUser_name(rs.getString(2));
					us.setUser_email(rs.getString(3));
					us.setUser_password(rs.getString(4));
					us.setUser_mobile(rs.getString(5));
					us.setField_id(rs.getInt(6));
					us.setSpecialization_id(rs.getInt(7));
					us.setUser_qualification(rs.getString(8));
					us.setUser_age(rs.getInt(9));
					us.setDescription(rs.getString(10));
					
					}
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return us;
		}
		
		public boolean update(UserBean ub) {
			boolean b = false;
			try {

				String query = "update users SET user_name=?,user_email=?,user_password=?,user_mobile=?,field_id=?,specialization_id=?,"
						+ "user_qualification=?,user_age=?,description=? where user_id=?";
				PreparedStatement stmt = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
			
				stmt.setString(1, ub.getUser_name());
				stmt.setString(2, ub.getUser_email());
				stmt.setString(3, ub.getUser_password());
				stmt.setString(4, ub.getUser_mobile());
				stmt.setInt(5, ub.getField_id());
				stmt.setInt(6, ub.getSpecialization_id());
				stmt.setString(7,ub.getUser_qualification());
				stmt.setInt(8,ub.getUser_age());
				stmt.setString(9,ub.getDescription());
				stmt.setInt(10,ub.getUser_id());
				
				int a=stmt.executeUpdate();
				
				System.out.println(stmt);
	            if(a!=0)
	            {
	            	b=true;
	            	System.out.println("updated");
	            }
	            else System.out.println("not updated");
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return b;
		}
		public UserBean getByUser_Id(int user_id)
		{
			 
			Connection conn=DbConnection.getConnection();
			String query="SELECT *FROM users where user_id="+user_id;
			UserBean ub=null;
			try
			{
				PreparedStatement stmt = conn.prepareStatement(query);
				ResultSet rs = stmt.executeQuery();
				if(rs.next())
				{
					ub = new UserBean();
					ub.setUser_id(rs.getInt(1));
					ub.setUser_name(rs.getString(2));
					ub.setUser_email(rs.getString(3));
					ub.setUser_password(rs.getString(4));
					ub.setUser_mobile(rs.getString(5));
					ub.setField_id(rs.getInt(6));
					ub.setSpecialization_id(rs.getInt(7));
					ub.setUser_qualification(rs.getString(8));
					ub.setUser_age(rs.getInt(9));
					ub.setDescription(rs.getString(10));
					
					}
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return ub;
		}
}
