<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" type="image/png" sizes="16x16" href="image/3.png">
<title>Home And Login</title>
<link href = "bootstrap4.0/css/bootstrap.min.css" rel="stylesheet"/>
<!-- Bootstrap core CSS -->
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="assets/css/bootstrap-float-label.css" rel="stylesheet" type="text/css">
<link href="assets/css/style.css" rel="stylesheet" type="text/css">
<!-- Font CSS -->
<link href="assets/plugins/roboto-light/Roboto Light.css" rel="stylesheet" type="text/css">
<link href="assets/plugins/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet" type="text/css">
<style>
form
{
width:300px;
height:300px;
margin:auto;
padding:20px;
background:white;
font-size:20px;
font-family:Verdana;
color:black;
}
</style>
<body background= "image1/7.jpg">

<div class="container">
<div align="center">
<br/>
  
<br/>
</div>
</div>

<div class="container mt-5"> 
   <div class="row pt-5">
        <div class="col-lg-4 col-md-4 col-sm-4 col-12 pt-4 pb-5 login">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                    <p><img src="image1/image.png" class="mx-auto d-block"></p>
                    <p class="font-weight-bold text-center mb-0 text-dark">Welcome</p>
                    <p class="text-center text-dark">Admin Login Here</p>
                     <form  action="AdminLoginCheckServlet" method="post" >
                    <div style="color:red font-weight:bold;">
				<%
			if(request.getAttribute("errormsg")!=null)
			out.print(request.getAttribute("errormsg"));
				%>
	   </div>
                    </br>
                        <div class="form-group has-float-label mb-4">
                            <input type="text" name="adminuid" required type="required" placeholder="Admin id"/>
                         <div class="w3-padding w3-xxlarge"><font size = 5 >   <label for="adminuid"> Admin UID<i class="fa fa-user"></i> </label></font></div>
                        </div>
                        <br/>
                        <div class="form-group has-float-label">
                            <input class="form-control" name="adminpass"  required type="password" placeholder="password"/>
                          <div class="w3-padding w3-xxlarge"> <font size = 5 > <label for="password">Password <i class="fa fa-key"></i></label></font></div>
                        </div>
                        <p class="text-center">
                            <button type="submit" class="btn btn-success btn-sm"	><i class="fa fa-sign-in"></i> Login</button>
                        </p>
                    </form>
</body>
</html>