<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>take test</title>
</head>
<body background="image1/12.png">
<form action="TestPage.jsp" method="post">
<pre>
<font size=5>
During the exam:
</font>
<font size=4>
<ul>
<li>The student may not use his or her textbook, course notes, or receive help from a proctor 
or any other outside source.</li>
<li>Students must complete the 5-question multiple-choice exam within the 10-minutes time frame
 allotted for the exam.</li>
<li>Students must not stop the session and then return to it. This is especially important 
in the online environment where the system will "time-out" and 
not allow the student or you to reenter the exam site.</li>
</ul>
</font>
<font size=5>
Minimum Browser Requirements
</font>
<font size=4>
<ul>
<li>Internet Explorer 9  </li>
<li>Firefox 1</li>
<li>Google Chrome </li>
</ul>
</font>
<p><input type="checkbox"  name="tnc"><font size=4> I agree with all the</font><font size=5> Terms &amp; Conditions</font></p>
  <p class="text-center">
                     <center> <button type="submit" onclick="return checkBoxValidation()" class="btn btn-success btn-sm"><i class="fa fa-paper-plane-o"></i> Continue </button></center>
                        </p></font>
</pre>

	
	</form>
</body>
</html>