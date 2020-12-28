<%@page import="com.proj.model.UserInfo1"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap4.0/css/bootstrap.min.css" rel="stylesheet"/>
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

<div class="container">
<div align="center">
	<h1>SCORE BOARD</h1>
	<%
		if(request.getAttribute("ulist")!=null)
		{
		List<UserInfo1> ulist=(List<UserInfo1>)request.getAttribute("ulist");
		if(ulist.size()>0)
		{
	%>
			
			<table border="1">
			<tr>
				<th>NAME</th>
				<th>EMAIL ID</th>
				<th>TEST SUBJECT</th>
				<th>TEST SCORE</th>
			</tr>
	
	<%
			for(UserInfo1 userobj:ulist)
			{
				
		%>
			<tr>
				<td><%= userobj.getFullname() %></td>
				<td><%= userobj.getEmail() %></td>
				<td><%= userobj.getSubject()%></td>
				<td><%= userobj.getScore()%></td>		
				
			</tr>
	<% 			
			}
	%>
		</table>
	<% 
		}
			
		}
	%>
	
	
	</div>
</div>	

</body>
</html>