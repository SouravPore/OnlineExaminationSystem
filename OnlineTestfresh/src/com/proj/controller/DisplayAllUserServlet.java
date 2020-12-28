package com.proj.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.proj.dao.UserDBLogic;
import com.proj.model.UserInfo1;


@WebServlet("/DisplayAllUserServlet")
public class DisplayAllUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DisplayAllUserServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		UserDBLogic daoobj=new UserDBLogic();
		List<UserInfo1> userlist=daoobj.fetchAllUser();
		request.setAttribute("ulist", userlist);
		RequestDispatcher rd=request.getRequestDispatcher("DisplayAllUser.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
