<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>

<div align="right">
<a href="HomeUserLogin.jsp"class="waves-effect"><i class="fa fa-power-off"></i><span class="hide-menu"><font color=purple> <b>Logout</b></font></span></a>
</div>
<body background="image/8.jpg">
<jsp:include page="right.jsp"/>
<iframe src="AdminMenu.jsp"  width="400" height="700" ></iframe>
<iframe src="right.jsp" width="920" height="700" name="right"></iframe>

</body>
</html>