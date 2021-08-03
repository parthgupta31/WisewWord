package com.userservlet;

import java.io.IOException;
import java.util.ArrayList;

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

/**
 * Servlet implementation class UserProfileServlet
 */
public class UserProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int user_id = Integer.parseInt(request.getParameter("user_id"));
		UserDao ud = new UserDao();
		ud.getByUser_Id(user_id);
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		UserBean ub = (UserBean)session.getAttribute("loggedInUser");
		System.out.println(ub+"yeh userprofileservlet ka he before getting");
		int user_id = Integer.parseInt(request.getParameter("u_id"));
		System.out.println(user_id+"dhjasflha");
		String user_name = request.getParameter("user_name");
		String user_email = request.getParameter("user_email");
		String user_password = request.getParameter("user_password");
		String user_mobile = request.getParameter("user_mobile");
		int field_id = Integer.parseInt(request.getParameter("field_id"));
		int specialization_id = Integer.parseInt(request.getParameter("specialization_id"));
		String user_qualification = request.getParameter("user_qualification");
		int user_age = Integer.parseInt(request.getParameter("user_age"));
		String description = request.getParameter("description");
		
		
		ub.setUser_id(user_id);
		ub.setUser_name(user_name);
		ub.setUser_email(user_email);
		ub.setUser_password(user_password);
		ub.setUser_mobile(user_mobile);
		ub.setField_id(field_id);
		ub.setSpecialization_id(specialization_id);
		ub.setUser_qualification(user_qualification);
		ub.setUser_age(user_age);
		ub.setDescription(description);
		
		UserDao ud = new UserDao();
		ud.update(ub);
		
		System.out.println(ub+"yeh userprofileservlet ka he after getting");
		CounsellorDao cd = new CounsellorDao();
		ArrayList<FieldBean> fields = cd.getFields();
		FieldBean fieldById = cd.getFieldById(ub.getField_id());
		SpecializationBean specializationById = cd.getSpecializationById(ub.getSpecialization_id());
		session.setAttribute("Field", fields);
		session.setAttribute("FieldName", fieldById);
		session.setAttribute("SpecializationName",specializationById);
		session.setAttribute("loggedInUser", ub);
		
		response.sendRedirect("userprofile.jsp");
		
		
		//doGet(request, response);
	}

}
