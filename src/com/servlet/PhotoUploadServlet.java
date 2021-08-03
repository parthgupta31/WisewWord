package com.servlet;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.entity.CounsellorBean;
import java.util.*;

/**
 * Servlet implementation class PhotoUploadServlet
 */
public class PhotoUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private final String UPLOAD_DIRECTORY = "C:/Users/nivem/eclipse-workspace/WiseWords/WebContent/assets/counsellorPic";

    /**
     * @see HttpServlet#HttpServlet()
     */
    public PhotoUploadServlet() {
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
	
			  
		   	
		  
		        //process only if its multipart content
		        if(ServletFileUpload.isMultipartContent(request)){
		            try {
		                List<FileItem> multiparts = new ServletFileUpload(
		                                         new DiskFileItemFactory()).parseRequest((RequestContext) request);
		              
		                for(FileItem item : multiparts){
		                    if(!item.isFormField()){
		                        String name = new File(item.getName()).getName();
		                        item.write( new File(UPLOAD_DIRECTORY + File.separator + name));
		                    }
		                }
		           
		               //File uploaded successfully
		               request.setAttribute("message", "File Uploaded Successfully");
		            } catch (Exception ex) {
		               request.setAttribute("message", "File Upload Failed due to " + ex);
		            }          
		         
		        }else{
		            request.setAttribute("message",
		                                 "Sorry this Servlet only handles file upload request");
		        }
		    
		        request.getRequestDispatcher("/result.jsp").forward(request, response);
		     
		 


	}
}
