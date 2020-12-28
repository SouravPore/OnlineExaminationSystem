<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Home And Login</title>
<link href = "bootstrap4.0/css/bootstrap.min.css" rel="stylesheet"/>
<!-- Bootstrap core CSS -->
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="assets/css/bootstrap-float-label.css" rel="stylesheet" type="text/css">
<link href="assets/css/style.css" rel="stylesheet" type="text/css">
<!-- Font CSS -->
<link href="assets/plugins/roboto-light/Roboto Light.css" rel="stylesheet" type="text/css">
<link href="assets/plugins/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/canvasjs/1.7.0/canvasjs.js"></script>
        <link rel="stylesheet" href="css/style.css">
      <style>
body {
  margin: 0;
  font-family: "Lato", sans-serif;
}

.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #4CAF50;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 500px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
</style>
</head>
<title>Insert title here</title>
</head>


<html>

<body bgcolor="grey"> 
<img src = "image1/9.jpg"  class="mx-auto d-block" height=200 width=200 >
<p> <center ><font color= "white" size = 5 >ADMIN </font></center></p>

          
   <div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse slimscrollsidebar">
		
				
				<a href="AddQuestion.jsp"class="waves-effect"target="right"><i class="fa fa-question"></i> <span class="hide-menu">Add Question</span></a>
				<br/>
				 <a href="DisplayQuestionServlet" class="waves-effect"target="right"><i class="fa fa-question"></i> <span class="hide-menu"> Show All Questions</span></a>
					<br/>
				 <a href="DisplayAllUserServlet" class="waves-effect"target="right"><i class="fa fa-user"></i> <span class="hide-menu"> Display All Users <span class="fa arrow"></span></span></a>
					<br/>
					<a href="SearchUser.jsp" class="waves-effect"target="right"><i class="fa fa-search"></i> <span class="hide-menu"> Search User <span class="fa arrow"></span></span></a>
			</div></div>
</body>
</html>



