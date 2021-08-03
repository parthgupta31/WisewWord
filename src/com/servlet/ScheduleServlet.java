package com.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ScheduleDao;
import com.entity.ScheduleBean;
import com.service.CounsellorService;

/**
 * Servlet implementation class ScheduleServlet
 */
public class ScheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScheduleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ScheduleBean scb = new ScheduleBean();
		int counsellor_id = Integer.parseInt(request.getParameter("counsellor_id"));
		String day = request.getParameter("day");
		String start_time = request.getParameter("start_time");
		String end_time = request.getParameter("end_time");
		String day_shift = request.getParameter("day_shift");
		String status = request.getParameter("status");
		Date d = new Date();
		String date= d.toString();
		CounsellorService cs = new CounsellorService();
		cs.UpdateCounsellorSchedule(scb);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
