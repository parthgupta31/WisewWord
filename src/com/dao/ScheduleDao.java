package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import com.entity.CounsellorBean;
import com.entity.ScheduleBean;

public class ScheduleDao {
	Connection con = DbConnection.getConnection();

	public boolean insertSchedule(ScheduleBean scb) {
		boolean b = false;
		try {

			String query = "insert into schedule(counsellor_id,day,start_time,end_time,day_shift,status,date,patients_count)"
					+ " values(?,?,?,?,?,?,?,?)";
			PreparedStatement stmt = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);

			stmt.setInt(1, scb.getCounsellor_id());
			stmt.setString(2,scb.getDay());
			stmt.setString(3, scb.getStart_time());
			stmt.setString(4, scb.getEnd_time());
			stmt.setString(5, scb.getDay_shift());
			stmt.setString(6, scb.getStatus());
			stmt.setString(7, scb.getDate());
			stmt.setInt(8, scb.getPatients_count());
			
			int a = stmt.executeUpdate();
			if (a != 0) {
				b = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}

}
