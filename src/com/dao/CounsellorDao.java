package com.dao;


import com.dao.DbConnection;
import com.entity.CounsellorBean;
import com.entity.FieldBean;
import com.entity.SpecializationBean;



import java.sql.*;
import java.util.ArrayList;

public class CounsellorDao {
	Connection con = DbConnection.getConnection();

	public boolean insert(CounsellorBean c) {
		boolean b = false;
		try {

			String query = "insert into counsellor(counsellor_name,counsellor_email,counsellor_password,counsellor_mobile,field_id,specialization_id)"
					+ " values(?,?,?,?,?,?)";
			PreparedStatement stmt = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);

			stmt.setString(1, c.getCounsellor_name());
			stmt.setString(2, c.getCounsellor_email());
			stmt.setString(3, c.getCounsellor_password());
			stmt.setString(4, c.getCounsellor_mobile());
			stmt.setInt(5, c.getField_id());
			stmt.setInt(6, c.getSpecialization_id());
			
			int a = stmt.executeUpdate();
			if (a != 0) {
				b = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}

	public ArrayList<FieldBean> getFields() {
		ArrayList<FieldBean> al = new ArrayList<>();

		try {
			String q = "select * from field";
			PreparedStatement p = con.prepareStatement(q);
			ResultSet rs = p.executeQuery();
			while (rs.next()) {
				FieldBean b = new FieldBean();
				b.setField_id(rs.getInt(1));
				b.setField_name(rs.getString(2));
				al.add(b);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public ArrayList<SpecializationBean> getSpecializationByFieldId(int field_id) {
		ArrayList<SpecializationBean> al1 = new ArrayList<SpecializationBean>();
		Connection conn = DbConnection.getConnection();
	
		try {
			String query = "SELECT * from specialization where field_id=" + field_id;
			PreparedStatement stmt = conn.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				SpecializationBean sb = new SpecializationBean();
				sb.setSpecialization_id(Integer.parseInt(rs.getString(1)));
				sb.setSpecialization_name(rs.getString(2));
				sb.setField_id(Integer.parseInt(rs.getString(3)));
				al1.add(sb);
				
				
			}
			
			System.out.println(al1);
			System.out.println("\n");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al1;
	}

	public ArrayList<CounsellorBean> getCounsellorsByFieldId(int field_id) {
		ArrayList<CounsellorBean> al = new ArrayList<CounsellorBean>();

		String query = "SELECT * from counsellor where field_id=" + field_id;
		try {
			PreparedStatement stmt = con.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				CounsellorBean cb = new CounsellorBean();
				cb.setCounsellor_id(Integer.parseInt(rs.getString(1)));
				cb.setCounsellor_name(rs.getString(2));
				cb.setCounsellor_email(rs.getString(3));
				cb.setCounsellor_mobile(rs.getString(5));
				cb.setField_id(Integer.parseInt(rs.getString(6)));
				cb.setSpecialization_id(Integer.parseInt(rs.getString(7)));

				al.add(cb);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return al;
	}

	public CounsellorBean getCounsellorsByCounsellorId(int counsellor_id) {
		CounsellorBean cb = new CounsellorBean();
		String query = "SELECT * from counsellor where counsellor_id=" + counsellor_id;
		try {
			PreparedStatement stmt = con.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				cb.setCounsellor_id(Integer.parseInt(rs.getString(1)));
				cb.setCounsellor_name(rs.getString(2));
				cb.setCounsellor_email(rs.getString(3));
				cb.setCounsellor_mobile(rs.getString(5));
				cb.setField_id(Integer.parseInt(rs.getString(6)));
				cb.setSpecialization_id(Integer.parseInt(rs.getString(7)));
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return cb;

	}
	public SpecializationBean getSpecializationById(int specialization_id) {
		
		Connection conn = DbConnection.getConnection();
		SpecializationBean sb = new SpecializationBean();
		try {
			String query = "SELECT * from specialization where specialization_id=" + specialization_id;
			PreparedStatement stmt = conn.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {

				sb.setSpecialization_id(Integer.parseInt(rs.getString(1)));
				sb.setSpecialization_name(rs.getString(2));
				

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return sb;
	}
	
	public CounsellorBean getByCounsellor_Id(int counsellor_id)
	{
		 
		Connection conn=DbConnection.getConnection();
		String query="SELECT *FROM counsellor where counsellor_id="+counsellor_id;
		CounsellorBean cd=null;
		try
		{
			PreparedStatement stmt = conn.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			if(rs.next())
			{
				cd = new CounsellorBean();
				cd.setCounsellor_id(rs.getInt(1));
				cd.setCounsellor_name(rs.getString(2));
				cd.setCounsellor_email(rs.getString(3));
				cd.setCounsellor_password(rs.getString(4));
				cd.setCounsellor_mobile(rs.getString(5));
				cd.setField_id(rs.getInt(6));
				cd.setSpecialization_id(rs.getInt(7));
				cd.setQualification(rs.getString(8));
				cd.setWork_experience(rs.getString(8));
				cd.setAddress(rs.getString(10));
				cd.setAbout_me(rs.getString(11));
				}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return cd;
	}
	
	public boolean update(CounsellorBean c) {
		boolean b = false;
		try {

			String query = "update counsellor SET counsellor_name=?,counsellor_email=?,counsellor_password=?,counsellor_mobile=?,field_id=?,specialization_id=?,"
					+ "qualification=?,work_experience=?,address=?,about_me=?,profile_pic=? where counsellor_id=?";
			PreparedStatement stmt = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
		
			stmt.setString(1, c.getCounsellor_name());
			stmt.setString(2, c.getCounsellor_email());
			stmt.setString(3, c.getCounsellor_password());
			stmt.setString(4, c.getCounsellor_mobile());
			stmt.setInt(5, c.getField_id());
			stmt.setInt(6, c.getSpecialization_id());
			stmt.setString(7,c.getQualification());
			stmt.setString(8,c.getWork_experience());
			stmt.setString(9,c.getAddress());
			stmt.setString(10,c.getAbout_me());
			stmt.setInt(11,c.getCounsellor_id());
			stmt.setString(12,c.getProfile_pic());
			
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
	public CounsellorBean getCounsellorByEmailandPassword(String email, String password)
	{
		Connection conn=DbConnection.getConnection();
		String query="SELECT * FROM counsellor where counsellor_email=? and counsellor_password=?" ;
		CounsellorBean cd=null;
		try
		{
			PreparedStatement stmt = conn.prepareStatement(query);
			stmt.setString(1, email);
			stmt.setString(2, password);
			ResultSet rs = stmt.executeQuery();
			if(rs.next())
			{
				cd = new CounsellorBean();
				cd.setCounsellor_id(rs.getInt(1));
				cd.setCounsellor_name(rs.getString(2));
				cd.setCounsellor_email(rs.getString(3));
				cd.setCounsellor_password(rs.getString(4));
				cd.setCounsellor_mobile(rs.getString(5));
				cd.setField_id(rs.getInt(6));
				cd.setSpecialization_id(rs.getInt(7));
				cd.setQualification(rs.getString(8));
				cd.setWork_experience(rs.getString(9));
				cd.setAddress(rs.getString(10));
				cd.setAbout_me(rs.getString(11));
				}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return cd;
	}
public FieldBean getFieldById(int field_id) {
		
		Connection conn = DbConnection.getConnection();
		FieldBean sb = new FieldBean();
		try {
			String query = "SELECT * from field where field_id=" + field_id;
			PreparedStatement stmt = conn.prepareStatement(query);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {

				sb.setField_id(Integer.parseInt(rs.getString(1)));
				sb.setField_name(rs.getString(2));
				

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return sb;
	}

	}
	

