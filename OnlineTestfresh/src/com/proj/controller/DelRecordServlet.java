package com.proj.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.proj.dao.UserDBLogic;
import com.proj.model.UserInfo1;


@WebServlet("/DelRecordServlet")
public class DelRecordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
        public DelRecordServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		UserInfo1 userobj=new UserInfo1();
		userobj.setEmail(request.getParameter("email"));
		//String email=request.getParameter("email");
		UserDBLogic daoobj=new UserDBLogic();
		boolean f=daoobj.UserRegDelete(userobj);
		//boolean f=daoobj.UserRegDelete(email);
		if(f)
		{
			System.out.println("record deleted");
			response.sendRedirect("DisplayAllUserServlet");
		}
			
		else
			System.out.println("record not deleted");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
