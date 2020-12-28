<%@page import="com.proj.model.UserInfo1"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="bootstrap4.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body background="image1/12.png">

<%!UserInfo1 userobj;%>
	<%
		userobj=(UserInfo1)session.getAttribute("uinfo");
	%>
	<div class="container">
		<div align="center">
		
		<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	
		
		<h3><p>  <font size =20 color=black face="comic sans ms "> HELLO  <%= userobj.getFullname() %></font></p></h3>
		</div>
	</div>

</body>
</html>