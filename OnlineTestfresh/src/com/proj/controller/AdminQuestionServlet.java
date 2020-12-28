package com.proj.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.proj.dao.UserDBLogic;
import com.proj.model.Question;

@WebServlet("/AdminQuestionServlet")
public class AdminQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AdminQuestionServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		//create model class object
				Question userobj=new Question();
				//read value from query string and store it in servlet variable
				userobj.setQid(request.getParameter("qid"));;
				userobj.setSubject(request.getParameter("subject"));
				userobj.setLevel(request.getParameter("level"));
				userobj.setQuestion(request.getParameter("question"));
				userobj.setOpt1(request.getParameter("opt1")); 
				userobj.setOpt2(request.getParameter("opt2"));
				userobj.setOpt3(request.getParameter("opt3"));
				userobj.setOpt4(request.getParameter("opt4"));
				userobj.setAnswer(request.getParameter("answer"));
				//create object of dao
				UserDBLogic daoobj=new UserDBLogic();
				boolean f=daoobj.AdminQuestionStoreInDB(userobj);
				if(f)
				{
					
					request.setAttribute("successmsg","QUESTION ADDED");
					RequestDispatcher rd=request.getRequestDispatcher("AddQuestion.jsp");
					 rd.forward(request, response);	
				}
				else
					System.out.println("RECORD NOT INSERTED");

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
