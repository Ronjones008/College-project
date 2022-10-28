<%@page import="com.infinite.college.Feedback"%>
<%@page import="com.infinite.college.CollegeDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form method="get" action="Feedback.jsp">
	<center>
		Enter Student Name :
		<input type="text" name="studentName"/><br/><br/>
		Enter Instructor :
		<input type="text" name="instructor"/><br/><br/>
		Enter Subject :
		<input type="text" name="subject"/><br/><br/>
	   Select FbValue :
	   <input type="radio" id="good" name="fbValue" value="Good"/> <b>Good </b>  
	   <input type="radio" id="average" name="fbValue" value="Average"/><b> Average  </b>
	   <input type="radio" id="bad" name="fbValue" value="Bad"/><b>Bad  </b> 
	   <br/><br/>
	   <input type="submit" value="Submit" />
	</center>
	</form>
	<jsp:forward page="ShowFeedback.jsp"></jsp:forward>
	
	<%
	if(request.getParameter("fbValue") != null){
		
		CollegeDAO dao = new CollegeDAO();
		Feedback feedback = new Feedback();
		feedback.setStudentName(request.getParameter("studentName"));
		feedback.setInstructor(request.getParameter("instructor"));
		feedback.setSubject(request.getParameter("subject"));
		feedback.setFbValue(request.getParameter("fbValue"));
		dao.feedback(feedback);
	}
	%>

</body>
</html>