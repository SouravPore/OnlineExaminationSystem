package com.proj.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.proj.dao.UserDBLogic;
import com.proj.model.Question;


@WebServlet("/TakeTestServlet")
public class TakeTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
    public TakeTestServlet()
    {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		UserDBLogic daoobj=new UserDBLogic();
		String subject=request.getParameter("subject");
 		List<Question> list=daoobj.fetchQuestionTest(subject);
		List<Question> low=new ArrayList<Question>();
		List<Question> medium=new ArrayList<Question>();
		List<Question> high=new ArrayList<Question>();
		
		for(Question obj:list)
		{
			String level=obj.getLevel();
			if(level.equalsIgnoreCase("Low"))
				low.add(obj);
			else if(level.equalsIgnoreCase("Medium"))
				medium.add(obj);
			else
				high.add(obj);			
		}
		System.out.println(low.size());
		System.out.println(medium.size());
		System.out.println(high.size());
		
		HttpSession session=request.getSession();
		session.setAttribute("subject", subject);
		session.setAttribute("low", low);
		session.setAttribute("medium", medium);
		session.setAttribute("high", high);
		//response.sendRedirect("LowQuestion.jsp");
		RequestDispatcher rd=request.getRequestDispatcher("LowQuestion.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
