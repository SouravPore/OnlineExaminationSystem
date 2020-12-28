 package com.proj.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.proj.dao.UserDBLogic;
import com.proj.model.UserInfo1;



@WebServlet("/UserRegServlet")
public class UserRegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UserRegServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		
		//create model class object
		UserInfo1 userobj=new UserInfo1();
		//read value from query string and store it in servlet variable
		String fullname=request.getParameter("fullname");
		userobj.setFullname(fullname);
		userobj.setEmail(request.getParameter("email"));
		userobj.setMobileno(request.getParameter("mobileno"));
		userobj.setAddress(request.getParameter("address"));
		userobj.setPassword(request.getParameter("password")); 
		userobj.setDob(request.getParameter("dob"));
		userobj.setGender(request.getParameter("gender"));
		userobj.setHobby(request.getParameter("hobby"));
		userobj.setCity(request.getParameter("city"));
		userobj.setQualification(request.getParameter("qualification"));
		userobj.setMarks(request.getParameter("marks"));
		//create object of dao
		UserDBLogic daoobj=new UserDBLogic();
		boolean f=daoobj.UserRegInfoStoreInDB(userobj);
		if(f)
		{
			
			request.setAttribute("successmsg","THANKS FOR REGISTRATION");
			RequestDispatcher rd=request.getRequestDispatcher("UserRegistration.jsp");
			 rd.forward(request, response);	
		}
		else
			System.out.println("RECORD NOT INSERTED");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
