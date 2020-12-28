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
	
	<%
		if(request.getAttribute("ulist")!=null)
			{
		List<UserInfo1> ulist=(List<UserInfo1>)request.getAttribute("ulist");
		if(ulist.size()>0)
		{
	%>
			<h1><center>ALL USER DETAILS</center></h1>
			<table border="1">
			<tr>
				<th>NAME</th>
				<th>EMAIL ID</th>
				<th>MOBILE NO</th>
				<th>ADDRESS</th>
				<th>PASSWORD</th>
				<th>DOB</th>
				<th>GENDER</th>
				<th>HOBBY</th>
				<th>CITY</th>
				<th>HIGHEST QUALIFICATION</th>
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
				<td><%= userobj.getMobileno() %></td>
				<td><%= userobj.getAddress() %></td>
				<td><%= userobj.getPassword() %></td>
				<td><%= userobj.getDob() %></td>
				<td><%= userobj.getGender() %></td>
				<td><%= userobj.getHobby() %></td>
				<td><%= userobj.getCity() %></td>
				<td><%= userobj.getQualification()%></td>
				<td><%= userobj.getSubject()%></td>
				<td><%= userobj.getScore()%></td>	
				
				<td>
					<form action="DelRecordServlet" method="post">
						<input type="hidden" name="email" value="<%=userobj.getEmail()%>">
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
</div>	

</body>
</html>