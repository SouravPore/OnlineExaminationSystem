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
  width: 80%;
}

th, td {
  text-align: left;
  padding: 5px;
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
	
	

<br/>
	<%
		if(request.getAttribute("user")!=null)
			{
		UserInfo1 userobj=(UserInfo1)request.getAttribute("user");
		
	%>
			
			<table border="1">
			<tr>
				<th>NAME</th>
				<td><%= userobj.getFullname() %></td>
				</tr>
				<tr>
				<th>EMAIL ID</th>
				<td><%= userobj.getEmail() %></td>
				</tr>
				<tr>
				<th>MOBILE NO</th>
				<td><%= userobj.getMobileno() %></td>
				</tr>
				<tr>
				<th>ADDRESS</th>
				<td><%= userobj.getAddress() %></td>
				</tr>
				<tr>
				<th>PASSWORD</th>
				<td><%= userobj.getPassword() %></td>
				</tr>
				<tr>
				<th>DOB</th>
				<td><%= userobj.getDob() %></td>
				</tr>
				<tr>
				<th>GENDER</th>
				<td><%= userobj.getGender() %></td>
				</tr>
				<tr>
				<th>HOBBY</th>
				<td><%= userobj.getHobby() %></td>
				</tr>
				<tr>
				<th>CITY</th>
				<td><%= userobj.getCity() %></td>
				</tr>
				<tr>
				<th>HIGHEST QUALIFICATION</th>
				<td><%= userobj.getQualification()%></td>
				</tr>
			
	
	
	
		</table>
	<% 
			
		}
	%>
	
	
	</div>
</div>	
</body>
</html>