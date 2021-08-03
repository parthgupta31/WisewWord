package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dao.CounsellorDao;
import com.entity.CounsellorBean;
import com.service.CounsellorService;

/**
 * Servlet implementation class CounsellorServlet
 */
public class CounsellorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CounsellorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(request.getParameter("name")==null)
		{   CounsellorBean c=new CounsellorBean();
			CounsellorDao dao = new CounsellorDao();
;			ArrayList al=dao.getFields();
			getServletContext().setAttribute("field", al);
			ArrayList al1=dao.getSpecializationByFieldId(Integer.parseInt(request.getParameter("field")));
			//System.out.println(d.getState());
			getServletContext().setAttribute("specialization", al1);
			response.sendRedirect("csignup.jsp");
		}
		else {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		int specialization_id = Integer.parseInt(request.getParameter("specialization"));
		int field_id = Integer.parseInt(request.getParameter("field"));
		
		CounsellorBean c = new CounsellorBean();
		c.setCounsellor_name(name);
		c.setCounsellor_email(email);
		c.setCounsellor_password(password);
		c.setCounsellor_mobile(phone);
		c.setSpecialization_id(specialization_id);
		c.setField_id(field_id);
		System.out.println(c);
		
		CounsellorService cs = new CounsellorService();
		cs.saveCounsellor(c);
		}
	}
}
