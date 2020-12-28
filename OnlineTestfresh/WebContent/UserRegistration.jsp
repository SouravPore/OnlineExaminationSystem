<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" type="image/png" sizes="16x16" href="assets/image/favicon.png">
<title>ExamTech || SignUp</title>

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
width:700px;
height:1100px;
margin:auto;
padding:10px;
background:white ;
font-size:20px;
font-family:Verdana;
color:black;
}
</style>
</head>

<body background= "image1/6.gif">
<div align="right">
<a href="HomeUserLogin.jsp"class="waves-effect"><i class="fa fa-power-off"></i><span class="hide-menu"> <b><font color="red">Home</font> </b></span></a>
</div>
<form action="UserRegServlet" method="POST">

                <center></p>  <h1>  <p class="font-weight-bold text-center mb-0 text-dark">Welcome</p></h1>
                
                   <h2> <p class="text-center text-dark">Fill Up Details</p></h2></center>
                   <div style="color: red; font-weight: bold;">
					<div align="center">

			<% 
				if (request.getAttribute("successmsg") != null)
					out.println(request.getAttribute("successmsg"));// print in web pages not console  
	
	
			%>
	</div>
	</div>
                   
                   <div align=center>
                 
                    
                        
								<div class="form-group m-b-10">
							<div class="row">
								<label class="col-lg-12 col-md-12 col-sm-12 col-12 m-b-0">Full name</label>
								<div class="col-lg-12 col-md-12 col-sm-12 col-12">
									<input type="text" class="form-control form-control-sm" name="fullname" required="required" placeholder="Enter full name...">
								</div>
							</div>
                        </div>
                        <div class="form-group m-b-10">
							<div class="row">
								<label class="col-lg-12 col-md-12 col-sm-12 col-12 m-b-0">Email</label>
								<div class="col-lg-12 col-md-12 col-sm-12 col-12">
									<input type="text" class="form-control form-control-sm"   name="email" autofocus="autofocus"  required="required" placeholder="E.g abc@123">
								</div>
							</div>
                        </div>
                        <div class="form-group m-b-10">
							<div class="row">
								<label class="col-lg-12 col-md-12 col-sm-12 col-12 m-b-0">Contact No.</label>
								<div class="col-lg-12 col-md-12 col-sm-12 col-12">
									<input type="tel" class="form-control form-control-sm"  name="mobileno" required="required" placeholder="Enter contact no. Ex. - 9000000000">
								</div>
							</div>
                        </div>
                        <div class="form-group m-b-10">
                        <div class="row">
								<label class="col-lg-12 col-md-12 col-sm-12 col-12 m-b-0">Password</label>
								<div class="col-lg-12 col-md-12 col-sm-12 col-12">
									<input type="text" class="form-control form-control-sm"   name="password" required="required" placeholder="only letters">
								</div>
							</div>
                        </div>
                        <div class="form-group m-b-10">
							<div class="row">
								<label class="col-lg-12 col-md-12 col-sm-12 col-12 m-b-0">Date of birth</label>
								<div class="col-lg-12 col-md-12 col-sm-12 col-12">
									<input type="date" class="form-control form-control-sm" id="dob" name="dob" required="required" placeholder="">
								</div>
							</div>
                        </div>
                        <div class="form-group m-b-10">
							<div class="row">
								<label class="col-lg-12 col-md-12 col-sm-12 col-12 m-b-0">Address </label>
								<div class="col-lg-12 col-md-12 col-sm-12 col-12">
									<input type="tel" class="form-control form-control-sm"  name="address" required="required" placeholder="Enter the location where you lived">
								</div>
							</div>
                        </div>
                        <div class="form-group m-b-10">
							<div class="row">
								<label class="col-lg-12 col-md-12 col-sm-12 col-12 m-b-0">Gender</label>
								<div class="col-lg-6 col-md-6 col-sm-6 col-6">
									<input type="radio" id="gender" name="gender" value="male" checked="true"/> Male
								</div>
								<div class="col-lg-6 col-md-6 col-sm-6 col-6">
									<input type="radio" id="gender" name="gender" value="female"/> Female
								</div>
							</div>
                        </div>
							<div class="form-group m-b-10">
							<div class="row">
								<label class="col-lg-12 col-md-12 col-sm-12 col-12 m-b-0">Hobby</label>
								<div class="col-lg-12 col-md-12 col-sm-12 col-12">
									<input type="text" class="form-control form-control-sm" name="hobby" required="required" placeholder="Enter full name...">
								</div>
							</div>
                        </div>
                        <div class="form-group m-b-10">
							<div class="row">
								<label class="col-lg-12 col-md-12 col-sm-12 col-12 m-b-0">Select City</label>
								<div class="col-lg-12 col-md-12 col-sm-12 col-12">
								 <select name="city" id="city" style="width:160px">  
        						<option value="Kolkata">Kolkata</option>  
        									<option value="Mumbai">Mumbai</option>  
       										 <option value="Delhi">Delhi</option>  
       										 <option value="Chennai">Chennai</option>  
        								<option value="Other">Other</option>  
        								</select>
									
								</div>
							</div>
                        </div>
						
                        
                        <div class="form-group m-b-10">
							<div class="row">
								<label class="col-lg-12 col-md-12 col-sm-12 col-12 m-b-0">Highest Qualificatiion</label>
								<div class="col-lg-12 col-md-12 col-sm-12 col-12">
									<input type="text" class="form-control form-control-sm"   name="qualification" placeholder="Currently Pursuing Details">
								</div>
							</div>
                        </div>
                         <div class="form-group m-b-10">
							<div class="row">
								<label class="col-lg-12 col-md-12 col-sm-12 col-12 m-b-0">Marks</label>
								<div class="col-lg-12 col-md-12 col-sm-12 col-12">
									<input type="text" class="form-control form-control-sm"   name="marks"  placeholder="in %age or CGPA">
								</div>
							</div>
                        </div>
                        
				<p><input type="checkbox"  name="tnc"> <small>I agree with all the <a href="">Terms &amp; Conditions</a></small></p>
                        <p class="text-center">
                            <button type="submit" onclick="return checkBoxValidation()" class="btn btn-success btn-sm"><i class="fa fa-paper-plane-o"></i> Sign up</button>
                        </p>
                        <p class="text-center">
                            <button type="reset" onclick="return checkBoxValidation()" class="btn btn-success btn-sm"><i class="fa fa-refresh"></i> Reset</button>
                        </p>
                         <p class="text-center text-muted"><small>Have an account? <a href="UserLogin.jsp">Login</a></small></p>
                         
                    </form>
                    
        
</div>

</body>