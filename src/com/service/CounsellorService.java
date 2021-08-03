package com.service;

import java.util.ArrayList;

import com.dao.CounsellorDao;
import com.dao.ScheduleDao;
import com.entity.CounsellorBean;
import com.entity.ScheduleBean;
import com.entity.SpecializationBean;

public class CounsellorService {
	ScheduleDao sd = new ScheduleDao();
	CounsellorDao cd = new CounsellorDao();
	public void saveCounsellor(CounsellorBean c) {
		// TODO Auto-generated method stub
		cd.insert(c);
		
		
	}
	public ArrayList getCounsellorByFieldId(int field_id) {
		// TODO Auto-generated method stub
		return cd.getCounsellorsByFieldId(field_id);
		
	}
	public SpecializationBean getSpecializationById(int specialization_id) {
		return cd.getSpecializationById(specialization_id);
		
	}
	public CounsellorBean ValidCounsellor(String email,String password)
	{
		return cd.getCounsellorByEmailandPassword(email, password);
	}
	public boolean UpdateCounsellorSchedule(ScheduleBean scb)
	{
		return sd.insertSchedule(scb);
	}
}
