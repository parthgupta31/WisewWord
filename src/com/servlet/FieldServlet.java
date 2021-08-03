package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sound.midi.Soundbank;

import com.dao.CounsellorDao;
import com.entity.FieldBean;
import com.entity.SpecializationBean;

/**
 * Servlet implementation class FieldServlet
 */
public class FieldServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FieldServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	 if(request.getParameter("field_id")==null)
		{
			CounsellorDao cd=new CounsellorDao();
			String field="";
			ArrayList<FieldBean> al = (ArrayList<FieldBean>)cd.getFields();
			
			if(request.getParameter("index")==null)
			{
				field = "<option value='0'>Select Field</option>";
				for(int i=0;i<al.size();i++)
				{
					field +="<option value='"+al.get(i).getField_id()+"'>"+al.get(i).getField_name()+"</option>";
					
				}
			}
			else
			{
				field= "";
				for(int i=0;i<al.size();i++)
				{
					/* <li id="field"><a href="   #   "> Drop Down 1 </a></li> */
					
					field +="<li> <a href='DashboardServlet?id="+al.get(i).getField_id()+"'>"+al.get(i).getField_name()+"</a></li>";
					
				}
			}
		
		
			
			
			response.getWriter().append(field);
		}
		else
		{
			int field_id=Integer.parseInt(request.getParameter("field_id"));
			System.out.println(field_id);
			CounsellorDao cd=new CounsellorDao();
			String specialization = "<option value='0'>Select specialization</option>";
			ArrayList<SpecializationBean> al = (ArrayList<SpecializationBean>)cd.getSpecializationByFieldId(field_id);
			System.out.println(al);
			for(int i=0;i<al.size();i++)
			{
				specialization +="<option value='"+al.get(i).getSpecialization_id()+"'>"+al.get(i).getSpecialization_name()+"</option>";
			}
			System.out.println("success");
			response.getWriter().append(specialization);


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
