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
width:600px;
height:600px;
margin:auto;
padding:10px;
background:white ;
font-size:20px;
font-family:Verdana;
color:black;
}
mark { 
  background-color:yellow;
  color: black;
}
mark1 { 
  background-color:violet;
  color: black;
}
mark3 { 
  background-color:Aqua;
  color: black;
}
mark2 { 
  background-color:orange;
  color: black;
}
mark4 { 
  background-color:gold;
  color: black;
}
mark5 { 
  background-color:YellowGreen;
  color: black;
}
mark6 { 
  background-color:LightSteelBlue;
  color: black;
}
mark7 { 
  background-color:PaleVioletRed;
  color: black;
}
mark8 { 
  background-color:Aquamarine;
  color: black;
}
</style>
</head>

<body background="image1/15.png">
 <center><h1><b>Enter Question</b></h1></center>
                
<form  action="AdminQuestionServlet" method="POST">

                    <div style="color: red; font-weight: bold;">
					<div align="center">

			<% 
				if (request.getAttribute("successmsg") != null)
					out.println(request.getAttribute("successmsg"));// print in web pages not console  
	
	
			%>
			</div>
			</div>
			
			 <p> <table align="center">
                   <tr>
                   <th><label for="qid"><mark>Question Id</mark></label></th>
								<td><input type="text" name="qid" required="required" placeholder=""></td>
								</tr>
								
								<tr>
								
								<th><label for="subject"><mark1>Subject</mark1></label></th>	
								
									<td><select name="subject" id="subject" required="required" style="width:160px">
										<option value="Aptitude">Aptitude</option>  
       								 <option value="English">English</option>  
									</select>
										</td>
										</tr>
									
			<tr>			
							<th>	<label for="level"><mark2>Level</mark2></label></th>
								
								<td>	<select name="level" id="level" required="required" style="width:160px">
								<option value="Low">Low</option>  
       							 <option value="Medium">Medium</option>  
        							<option value="High">High</option>
									</select>
									</td>
									</tr>
								
								<tr>
                        
								
								<th><label for="question"><mark3>Enter Question</mark3></label></th>
								
									<td><input type="text" class="form-control form-control-sm" name="question" required="required" placeholder=""/>
							</td>
							</tr>
							
							<tr>
						
						
								<th><label for="opt1"><mark4>Option A</mark4></label></th>
								
								<td>	<input type="text" class="form-control form-control-sm"  name="opt1" required="required" placeholder="">
							</td>
							</tr>
							
							<tr>
                        
								<th><label for="opt2"><mark5>Option B</mark5></label></th>
							
								<td>	<input type="text" class="form-control form-control-sm"  name="opt2" required="required" placeholder="">
								</td>
								</tr>
								
								<tr>
                        
								<th><label for ="opt3"><mark6>Option C</mark6></label></th>
								
								<td>	<input type="text" class="form-control form-control-sm"  name="opt3" required="required" placeholder=""></td>
								</tr>
								
								<tr>
								
                       
								<th><label for="opt4"><mark7>Option D</mark7></label></th>
								
								<td>	<input type="text" class="form-control form-control-sm"  name="opt4" required="required" placeholder=""></td>
								</tr>
								
								<tr>
                        
								<th><label for="answer"><mark8>Correct Answer</mark8></label></th>
								
								<td>	<input type="text" class="form-control form-control-sm"   name="answer" placeholder=""></td>
						</tr>
						
                        </table>
                        </p>
                       	 
                        <p class="text-center">
                            <button type="submit" onclick="return checkBoxValidation()" class="btn btn-success btn-sm"><i class="fa fa-paper-plane-o"></i> Submit </button>
                        </p>
                        <p class="text-center">
                            <button type="reset" onclick="return checkBoxValidation()" class="btn btn-success btn-sm"><i class="fa fa-refresh"></i> refresh </button>
                        </p>
                 
                    </form>
                    
        


