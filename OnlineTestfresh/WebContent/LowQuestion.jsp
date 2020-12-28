<%@page import="java.util.Random"%>
<%@page import="com.proj.model.Question"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Bootstrap core CSS -->
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="assets/css/bootstrap-float-label.css" rel="stylesheet" type="text/css">
<link href="assets/css/style.css" rel="stylesheet" type="text/css">
<!-- Font CSS -->
<link href="assets/plugins/roboto-light/Roboto Light.css" rel="stylesheet" type="text/css">
<link href="assets/plugins/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet" type="text/css">
<link href="bootstrap4.0/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body background="image1/12.png">
<div class="container">
<div align="center">

<br/>
<br/>
<form action="AnswerCheckServlet" method="post">
	<%
		List<Question> low=(List<Question>)session.getAttribute("low");
	    Random r = new Random();
	    int x = r.nextInt(low.size());
		Question obj=low.get(x);
	 	low.remove(x);
	 	session.setAttribute("low", low);
						
	%>
	
	<font size=6>
						<%= obj.getQuestion()%>
						</font>
	<font size=5>
						<br/>
					<p  style="text-align:left;" >		
					<input type="radio" id="opt1" name="option" value=<%=obj.getOpt1() %> required="required"/> <%=obj.getOpt1() %><br/>
					<input type="radio" id="opt2" name="option" value=<%=obj.getOpt2() %> required="required"/> <%=obj.getOpt2() %><br/>
					<input type="radio" id="opt3" name="option" value=<%=obj.getOpt3() %> required="required"/>  <%=obj.getOpt3() %><br/>
					<input type="radio" id="opt4" name="option" value=<%=obj.getOpt4() %> required="required"/>  <%=obj.getOpt4() %><br/>
					<input type="hidden" id="answer" name="answer" value=<%=obj.getAnswer()%>>
			    			</p>
			    			
			  	 		<br/> 
						<br/>

	
	<br/>
	<br/>
	<br/>
	</font>
	<div align="center">
 	
	
	 <p class="text-center">
                            <button type="submit" onclick="return checkBoxValidation()" class="btn btn-success btn-sm"><i class="fa fa-paper-plane-o"></i> SUBMIT </button>       
                            <button type="reset" onclick="return checkBoxValidation()" class="btn btn-success btn-sm"><i class="fa fa-refresh"></i> Reset</button>
                       
                           
                        </p>
	</div> 
	</form>		
</div>
</div>
</body>
</html>