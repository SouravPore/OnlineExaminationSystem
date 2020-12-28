<%@page import="com.proj.model.UserInfo1"%>
<%@page import="java.util.List"%>
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
<link href="bootstrap4.0/css/bootstrap.min.css" rel="stylesheet"/>
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="assets/css/bootstrap-float-label.css" rel="stylesheet" type="text/css">
<link href="assets/css/style.css" rel="stylesheet" type="text/css">
<!-- Font CSS -->
<link href="assets/plugins/roboto-light/Roboto Light.css" rel="stylesheet" type="text/css">
<link href="assets/plugins/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet" type="text/css">
</head>
<style>
table{
border-collapse: collapse;
width: 100% ;
}
th,td {
		text-align:left;
		padding:8px;
}
tr{
		backgroud-color:#f2f2f2
}

th{
		background-color: #4CAF50;
		color:white;
}
</style>
<body  background="image1/10.jpg">
<div class="container">
<div align="center">
	
	
<form action="SearchUserServlet">
<fieldset>
 <font size=6 color=green >   <label for="email">Email: </label> </font> 
   <input type="email" id="email" name="email" autofocus="autofocus" required="required" placeholder="Enter Email"/> 
	<br/> 
	<br/>
</fieldset>
<p class="text-center">
  <button type="submit" value="SEARCH" onclick="return checkBoxValidation()" class="btn btn-success btn-sm"><i class="fa fa-search"></i> Search</button>
                        </p>
	
</form>
<br/>
<br/>
	<%
		if(request.getAttribute("ulist")!=null)
			{
		List<UserInfo1> ulist=(List<UserInfo1>)request.getAttribute("ulist");
		if(ulist.size()>0)
		{
	%>
			<h1>SEARCHED USER DETAILS</h1>
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
				<td><%= userobj.getScore()%></td>		
				
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