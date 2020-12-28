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
</head>
<body background= "image1/Prep-test.png">
<div class="container">
<div align="center">
<br/>

<br/>
</div>
</div>
<form action="UserLoginCheckServlet" method="post">
<br/>
<br/>
<br/>
<br/>


<div class="container">
<div style="color:red font-weight:bold;">
		<%
			if(request.getAttribute("errormsg")!=null)
			out.print(request.getAttribute("errormsg"));
		%>
	   </div>
	   </div>
<!-- Page Content -->
<div class="container mt-5"> 
    <!-- Portfolio Item Row -->
    <div class="row pt-5">
        <div class="col-lg-4 col-md-4 col-sm-4 col-12 pt-4 pb-5 login">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                    <p><img src="image1/image.png" class="mx-auto d-block" height=80 width =150></p>
                    <p class="font-weight-bold text-center mb-0 text-dark">Welcome</p>
                    <p class="text-center text-dark">To our Examination Portal</p>
                    <form class="mt-5" method="post" action="UserLogin" autocomplete="on">
                        <div class="form-group has-float-label mb-4">
                        <font size = 5 ><label for="username"> User ID </label></font>
                            <input class="form-control" name="email" required type="text" placeholder="username"/>
                            
                        </div>
                        <br/>
                        <div class="form-group has-float-label">
                         <font size = 5 > <label for="password">Password</label></font>
                            <input class="form-control" name="password"  required type="password" placeholder="password"/>
                         
                        </div>
                        <p class="text-center">
                            <button type="submit" class="btn btn-success btn-sm"><i class="fa fa-sign-in"></i><a href="UserAfterLoginNew.jsp"> Login </a></button>
                        </p>
                    </form>
                   
                     <p class="text-center text-muted"><small>Don't have an account?<a href="UserRegistration.jsp"> Sign up</a></small></p>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row --> 
</div>
<!-- /.container --> 




</body>
</html>
