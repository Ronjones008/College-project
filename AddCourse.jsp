
<%@page import="com.infinite.college.CollegeDAO"%>
<%@page import="java.sql.Date"%>
<%@page import="com.infinite.college.Course"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form method="get" action="AddCourse.jsp">
	<center>
	Enter Duration :
	<input type="number" name="duration"/><br/><br/>
	Eneter Start Date :
	<input type="date" name="startDate"/><br/><br/>
	Enter End Date :
	<input type="date" name="endDate"/><br/><br/>
	Enter Hod :
	<input type="text" name="hod"/><br/><br/>
	
	<input type="submit" value ="Add"/>
	</center>
</form>

	<% if(request.getParameter("hod") != null){
		 
		Course course = new Course();
		course.setDuration(Integer.parseInt(request.getParameter("duration")));
		Date sDate = Date.valueOf(request.getParameter("startDate"));
		Date eDate = Date.valueOf(request.getParameter("endDate"));
		course.setStartDate(sDate);
		course.setEndDate(eDate);
		course.setHod(request.getParameter("hod"));
		CollegeDAO dao = new CollegeDAO();
		dao.addCourseList(course);
	}
	%>
</body>
</html>