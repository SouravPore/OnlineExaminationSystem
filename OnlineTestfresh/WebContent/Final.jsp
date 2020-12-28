<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap4.0/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body  background="image1/18.jpg">
<%
int score=(int)request.getAttribute("score"); 
%>
	<div class="container">
		<div align="center">
		<br/>
		<br/>
		<h1><font size =7 color=white face="comic sans ms ">Your examination is completed!!!!!! </font></h1>
		<br/>
		<br/>
		<img src= "image1/17.gif" height=300 width=250 >
		<br/>
		<p><font size =6 color=white face="comic sans ms " >You have scored:<%=score %></font></p>
		
		
		</div>
	</div>
</body>
</html>