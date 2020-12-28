<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap4.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
	<div align="center">
	 
		<form action="UserLoginCheckServlet" method="post">
		<h2>USER LOGIN</h2>
		<div style="color:red font-weight:bold;">
		<%
			if(request.getAttribute("errormsg")!=null)
			out.print(request.getAttribute("errormsg"));
		%>
	   </div>
			
			<table>
				<tr>
					<th>USER LOGIN ID</th>
					<td><input type="email" name="email"></td>				
				</tr>
				
				<tr>
					<td></td>
					<td></td>
				</tr>
				
				<tr>
					<th>USER PASSWORD</th>
					<td><input type="password" name="password"></td>
				</tr>
				
				<tr>
				<td></td>
				<td><input type="submit" value="LOGIN"></td>
				</tr>	
			</table>
		</form>
	</div>
</div>
</body>
</html>