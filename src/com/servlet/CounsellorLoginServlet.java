package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.CounsellorDao;
import com.entity.CounsellorBean;
import com.entity.FieldBean;
import com.entity.SpecializationBean;
import com.service.CounsellorService;

/**
 * Servlet implementation class CounsellorLoginServlet
 */
public class CounsellorLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CounsellorLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String counsellor_email = request.getParameter("email");
		String counsellor_password = request.getParameter("password");
		CounsellorService cs =new CounsellorService();
		CounsellorBean cb = cs.ValidCounsellor(counsellor_email,counsellor_password);
		
		try
		{
			CounsellorDao cd = new CounsellorDao();
			ArrayList<FieldBean> fields = cd.getFields();
			FieldBean fieldById = cd.getFieldById(cb.getField_id());
			SpecializationBean specializationById = cd.getSpecializationById(cb.getSpecialization_id());
			HttpSession session = request.getSession();
			session.setAttribute("Field", fields);
			session.setAttribute("FieldName", fieldById);
			session.setAttribute("SpecializationName",specializationById);
			session.setAttribute("loggedInCounsellor",cb);
			response.sendRedirect("schedule.jsp");
		}
		catch(Exception e)
		{
			
			//session.setAttribute("errorMsg", "Invalid login credentials");
			request.setAttribute("errorMsg", "Invalid login credentials");
			RequestDispatcher rd = request.getRequestDispatcher("clogin.jsp");
			//response.sendRedirect("clogin.jsp");
			rd.include(request, response);
		}
		
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
