package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.CounsellorDao;
import com.entity.CounsellorBean;

/**
 * Servlet implementation class UpdateCounsellorServlet
 */
public class UpdateCounsellorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCounsellorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int counsellor_id = Integer.parseInt(request.getParameter("counsellor_id"));
		CounsellorDao cd = new CounsellorDao();
		cd.getByCounsellor_Id(counsellor_id);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		CounsellorBean cb = (CounsellorBean)session.getAttribute("loggedInCounsellor");
		int counsellor_id = Integer.parseInt(request.getParameter("c_id"));
		System.out.println(counsellor_id+"dhjasflha");
		String counsellor_name = request.getParameter("counsellor_name");
		String counsellor_email = request.getParameter("counsellor_email");
		String counsellor_password = request.getParameter("password");
		String counsellor_mobile = request.getParameter("counsellor_mobile");
		int field_id = Integer.parseInt(request.getParameter("field_id"));
		int specialization_id = Integer.parseInt(request.getParameter("specialization_id"));
		String qualification = request.getParameter("qualification");
		String work_experience = request.getParameter("work_experience");
		String address = request.getParameter("address");
		String about_me = request.getParameter("about_me");
		System.out.println(about_me);
		
		
		cb.setCounsellor_id(counsellor_id);
		cb.setCounsellor_name(counsellor_name);
		cb.setCounsellor_email(counsellor_email);
		cb.setCounsellor_password(counsellor_password);
		cb.setCounsellor_mobile(counsellor_mobile);
		cb.setField_id(field_id);
		cb.setSpecialization_id(specialization_id);
		cb.setQualification(qualification);
		cb.setWork_experience(work_experience);
		cb.setAddress(address);
		cb.setAbout_me(about_me);
		
		CounsellorDao cd = new CounsellorDao();
		cd.update(cb);
		
		response.sendRedirect("viewprofile.jsp");
		
		
		//	doGet(request, response);
	}

}
