<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
	<input type="text" name="duration"/><br/><br/>
	Eneter Start Date :
	<input type="date" name="startDate"/><br/><br/>
	Enter End Date :
	<input type="date" name="endDate"/><br/><br/>
	Enter Hod :
	<input type="text" name="hod"/><br/><br/>
	
	<input type="submit" value ="Add"/>
	</center>
</form>

	<c:if test="${param.hod != null}">
		<jsp:useBean id="beanDao" class="com.infinite.college.CollegeDAO" />
		<jsp:useBean id="beanCourse" class="com.infinite.college.Course"/>
		
		<jsp:setProperty property="duration" name="beanCourse"/>

		<fmt:parseDate value="${param.startDate}" pattern="yyyy-MM-dd" var="cdate1"/>
		<c:set var="sqlDate1" value="${beanDao.convertDate(cdate1)}"/>
		
		<fmt:parseDate value="${param.endDate}" pattern="yyyy-MM-dd" var="cdate2"/>
		<c:set var="sqlDate2" value="${beanDao.convertDate(cdate2)}"/>
		
		<jsp:setProperty property="startDate" name="beanCourse" value="${sqlDate1}"/>
		<jsp:setProperty property="endDate" name="beanCourse" value="${sqlDate2}"/>
		
		<jsp:setProperty property="hod" name="beanCourse"/>
		
		<c:out value="${beanDao.AddCourseList(beanCourse)}"></c:out>
</c:if>
</body>
</html>