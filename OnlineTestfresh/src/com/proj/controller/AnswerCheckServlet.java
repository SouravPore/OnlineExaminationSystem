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
@WebServlet("/AnswerCheckServlet")
public class AnswerCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	static int i=1,marks=0,p=1;
	
        public AnswerCheckServlet() {
        super();
        
    }
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println(i + "   "+p+"   "+marks);
		String option,answer;

		if(i==1)
		{
			p=p+1;
			option=request.getParameter("option");
			answer=request.getParameter("answer");	
			System.out.println(option+" "+answer);
			if(option.equalsIgnoreCase(answer))
			{
				if(p<=6)
				{
				marks=marks+2;
				i=i+1;
				RequestDispatcher rd=request.getRequestDispatcher("MediumQuestion.jsp");
				rd.forward(request, response);
				}
			}
			else
			{
				if(p<=6)
				{
				RequestDispatcher rd=request.getRequestDispatcher("LowQuestion.jsp");
				rd.forward(request, response);
				}
			}
		}
	    if(i==2)
		{
			p=p+1;
			option=request.getParameter("option");
			answer=request.getParameter("answer");
			System.out.println(option+" "+answer);
			if(option.equalsIgnoreCase(answer))
			{
				
				if(p<=6)
				{
				marks=marks+4;
				i=i+1;
				RequestDispatcher rd=request.getRequestDispatcher("HighQuestion.jsp");
				rd.forward(request, response);
				}
			}
			else
			{
				if(p<=6)
				{
				i=i-1;	
				RequestDispatcher rd=request.getRequestDispatcher("LowQuestion.jsp");
				rd.forward(request, response);
				}
			}
		
		}
		if(i==3)
		{
			p=p+1;
			
			option=request.getParameter("option");
			answer=request.getParameter("answer");
			System.out.println(option+" "+answer);
			if(option.equalsIgnoreCase(answer))
			{
				
				if(p<=6)
				{	
				marks=marks+6;
				RequestDispatcher rd=request.getRequestDispatcher("HighQuestion.jsp");
				rd.forward(request, response);
				}
			}
			else
			{
				if(p<=6)
				{
				i=i-1;
				RequestDispatcher rd=request.getRequestDispatcher("MediumQuestion.jsp");
			    rd.forward(request, response);
				}
			}
		}
		if(p==7)
		{
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		String subject=(String)session.getAttribute("subject");
		UserDBLogic daoobj=new UserDBLogic();
		daoobj.insertMarks(marks,email,subject);
		p=1;
	

		request.setAttribute("score", marks);
		RequestDispatcher rd=request.getRequestDispatcher("Final.jsp");
		rd.forward(request, response);
		marks=0;
		i=1;
		
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
