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
import com.proj.model.Question;


@WebServlet("/DisplayQuestionServlet")
public class DisplayQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
        public DisplayQuestionServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		UserDBLogic daoobj=new UserDBLogic();
		List<Question> userlist=daoobj.fetchQuestion();
		request.setAttribute("ulist", userlist);
		RequestDispatcher rd=request.getRequestDispatcher("DisplayQuestion.jsp");
		rd.forward(request, response);
	}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				doGet(request, response);
	}

}
