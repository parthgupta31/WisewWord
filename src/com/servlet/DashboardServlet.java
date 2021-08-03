package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.CounsellorBean;
import com.entity.SpecializationBean;
import com.service.CounsellorService;

/**
 * Servlet implementation class DashboardServlet
 */
public class DashboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DashboardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int field_id = Integer.parseInt(request.getParameter("id"));
		CounsellorService cs = new CounsellorService();
		ArrayList<CounsellorBean> al = cs.getCounsellorByFieldId(field_id);
		getServletContext().setAttribute("counsellors", al);
		System.out.println(al.get(0).toString());
		ArrayList<SpecializationBean> speclist = new ArrayList();
		for(CounsellorBean cb:al)
		{
			SpecializationBean sb = cs.getSpecializationById(cb.getSpecialization_id());
			speclist.add(sb);
		}
		getServletContext().setAttribute("specialization", speclist);
		 
		response.sendRedirect("dashboard.jsp");
		
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
