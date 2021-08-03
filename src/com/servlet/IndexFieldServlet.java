package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CounsellorDao;
import com.entity.FieldBean;
import com.entity.SpecializationBean;

/**
 * Servlet implementation class IndexFieldServlet
 */
public class IndexFieldServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public IndexFieldServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int field_id = Integer.parseInt(request.getParameter("field_id"));
		int specialization_id = Integer.parseInt(request.getParameter("specialization_id"));
		CounsellorDao cd = new CounsellorDao();
		String field = "";
		ArrayList<FieldBean> al = (ArrayList<FieldBean>) cd.getFields();
		FieldBean fieldById = cd.getFieldById(field_id);
		field += "<option value='" + fieldById.getField_id() + "'>" + fieldById.getField_name() + "</option>";
	
	
		/*
		 * for(int i=0;i<al.size();i++) { <li id="field"><a href="   #   "> Drop Down 1
		 * </a></li>
		 * 
		 * field
		 * +="<option value='"+al.get(i).getField_id()+"'>"+al.get(i).getField_name()+
		 * "</option>";
		 * 
		 * }
		 */
		response.getWriter().append(field);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
