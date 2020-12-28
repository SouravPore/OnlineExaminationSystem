package com.proj.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.proj.dao.UserDBLogic;
import com.proj.model.UserInfo1;


@WebServlet("/UserLoginCheckServlet")
public class UserLoginCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UserLoginCheckServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		//System.out.println(email + " " + password);
		UserDBLogic daoobj=new UserDBLogic();
		UserInfo1 userobj=daoobj.userLoginCheck(email, password);
		if(userobj!=null)
		{
			//create new session object
			HttpSession session=request.getSession(true);
			//session.setMaxInactiveInterval(1000);
			session.setAttribute("uinfo",userobj);
			session.setAttribute("email", email);
			System.out.println("VALID");
			response.sendRedirect("UserAfterLoginNew.jsp");
		}
		else
		{
			System.out.println("INVALID");
			request.setAttribute("errormsg", "invalid email or password");
			RequestDispatcher rd=request.getRequestDispatcher("HomeUserLogin.jsp");
			rd.forward(request, response);
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
