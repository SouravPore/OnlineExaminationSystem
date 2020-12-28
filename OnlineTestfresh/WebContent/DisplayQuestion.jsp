<%@page import="java.util.List"%>
<%@page import="com.proj.model.Question"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" type="image/png" sizes="16x16" href="assets/image/favicon.png">
<title>Insert title here</title>
<link href="bootstrap4.0/css/bootstrap.min.css" rel="stylesheet"/>
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="assets/css/bootstrap-float-label.css" rel="stylesheet" type="text/css">
<link href="assets/css/style.css" rel="stylesheet" type="text/css">
<!-- Font CSS -->
<link href="assets/plugins/roboto-light/Roboto Light.css" rel="stylesheet" type="text/css">
<link href="assets/plugins/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet" type="text/css">
</head>
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #4CAF50;
  color: white;
}
</style>
<body background="image1/10.jpg">
<form action="DisplayQuestionServlet" method="post">
	<div class="container">
 
	
	
	<%
		if(request.getAttribute("ulist")!=null)
			{
		List<Question> ulist=(List<Question>)request.getAttribute("ulist");
		if(ulist.size()>0)
		{
	%>
			<h1><center>ALL QUESTIONS</center></h1>
			<table border="1">
			<tr>
				<th>QID</th>
				<th>SUBJECT</th>
				<th>LEVEL</th>
				<th>QUESTION</th>
				<th>OPT1</th>
				<th>OPT2</th>
				<th>OPT3</th>
				<th>OPT4</th>
				<th>ANSWER</th>
				</tr>
	
	<%
			for(Question userobj:ulist)
			{
		%>
			<tr>
				<td><%= userobj.getQid() %></td>
				<td><%= userobj.getSubject() %></td>
				<td><%= userobj.getLevel() %></td>
				<td><%= userobj.getQuestion() %></td>
				<td><%= userobj.getOpt1() %></td>
				<td><%= userobj.getOpt2() %></td>
				<td><%= userobj.getOpt3() %></td>
				<td><%= userobj.getOpt4() %></td>
				<td><%= userobj.getAnswer() %></td>
				
				
				<td>
					<form action="DelQuestionservlet" method="post">
						<input type="hidden" name="qid" value="<%=userobj.getQid()%>">
						<input type="submit" value="DELETE"	class="btn btn-danger">					
					</form>
				</td>
			</tr>
	<% 			
			}
	%>
		</table>
	<% 
			}
			else
			{
	%>
			<h2 style="color: red;">NO RECORD FOUND</h2>
	<% 
			}
		}
	%>
	
	
	</div>
</form>
</body>
</html>