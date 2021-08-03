package com.userservlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.CounsellorDao;
import com.dao.UserDao;
import com.entity.CounsellorBean;
import com.entity.FieldBean;
import com.entity.SpecializationBean;
import com.entity.UserBean;
import com.service.CounsellorService;
import com.service.UserService;

/**
 * Servlet implementation class UserLoginServlet
 */
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user_email = request.getParameter("email");
		String user_password = request.getParameter("password");
		UserService us = new UserService();
		UserBean ub = us.ValidUser(user_email,user_password);
		
		try
		{
			CounsellorDao cd = new CounsellorDao();
			ArrayList<FieldBean> fields = cd.getFields();
			FieldBean fieldById = cd.getFieldById(ub.getField_id());
			SpecializationBean specializationById = cd.getSpecializationById(ub.getSpecialization_id());
			
			ub.getUser_id();
			HttpSession session = request.getSession();
			session.setAttribute("Field", fields);
			session.setAttribute("FieldName", fieldById);
			session.setAttribute("SpecializationName",specializationById);
			session.setAttribute("loggedInUser",ub);
			response.sendRedirect("index.jsp");
		}
		catch(Exception e)
		{
			
			//session.setAttribute("errorMsg", "Invalid login credentials");
			request.setAttribute("errorMsg", "Invalid login credentials");
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			//response.sendRedirect("clogin.jsp");
			rd.include(request, response);
		}
		//doGet(request, response);
	}

}
