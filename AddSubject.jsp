<%@page import="org.apache.catalina.valves.rewrite.RewriteCond"%>
<%@page import="com.infinite.college.CollegeDAO"%>
<%@page import="com.infinite.college.Subjects"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<script>
function show(){
	var ddl= frmSubject.subject.value;
	if(ddl == "CPC Architecture"){
		frmSubject.theory.value=42;
		frmSubject.practical.value=14;
		}
	if(ddl == "PC Hardware 1"){
		frmSubject.theory.value=90;
		frmSubject.practical.value=50;
		}
	if(ddl == "PC Hardware 2"){
		frmSubject.theory.value=69;
		frmSubject.practical.value=41;
		}
	if(ddl == "Microprocessor Interfacing"){
		frmSubject.theory.value=107;
		frmSubject.practical.value=93;
		}
	if(ddl == "C#"){
		frmSubject.theory.value=84;
		frmSubject.practical.value=56;
		}
	if(ddl == "Data Structures"){
		frmSubject.theory.value=60;
		frmSubject.practical.value=56;
		}
	if(ddl == "Operating System"){
		frmSubject.theory.value=80;
		frmSubject.practical.value=70;
		}
	if(ddl == "SQL Server"){
		frmSubject.theory.value=66;
		frmSubject.practical.value=34;
		}

	if(ddl == "Networking"){
		frmSubject.theory.value=94;
		frmSubject.practical.value=156;
		}
	if(ddl == "Advance Computer Concept & Data Security"){
		frmSubject.theory.value=84;
		frmSubject.practical.value=56;
		}

	if(ddl == "Value Added Services"){
		frmSubject.theory.value=27;
		frmSubject.practical.value=11;
		}
}
</script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form name="frmSubject" method="post" action="AddSubject.jsp">
 
  <center>
  Enter  Year :
  <input type="number" name="year" /><br/><br/>
  Enter Instructor :
  <input type="text" name="instructor"><br/><br/>
  Select Subject :
  <select name = "subject" id="dropdown" onchange="show()">
  	<option value ="PC Architecture">PC Architecture</option>
  	<option value ="PC Hardware 1">PC Hardware 1</option>
  	<option value ="PC Hardware 2">PC Hardware 2</option>
  	<option value ="Microprocessor Interfacing">Microprocessor Interfacing </option>
  	<option value ="C#">C#</option>
  	<option value ="Data Structures">Data Structures</option>
  	<option value ="Operating System">Operating System</option>
  	<option value ="SQL Server">SQL Server</option>
  	<option value ="Networking">Networking</option>
  	<option value ="Advance Computer Concept & Data Security">Advance Computer Concept & Data Security</option>
  	<option value ="Value Added Services">Value Added Services</option>
  </select><br/><br/>
   Theory :
   <input type="number" name="theory" /><br/><br/>
   practical :
   <input type="number" name="practical" /><br/><br/>
   <input type="submit" value="Add">
   </center>
</form>

<%
	if(request.getParameter("practical") != null){
		CollegeDAO dao = new CollegeDAO();
		Subjects subjects = new Subjects();
		//subjects.setSubjectsId(Integer.parseInt(request.getParameter("subjectId")));
		subjects.setYear(Integer.parseInt(request.getParameter("year")));
		subjects.setInstructor(request.getParameter("instructor"));
		subjects.setSubject(request.getParameter("subject"));
		subjects.setTheory(Integer.parseInt(request.getParameter("theory")));
		subjects.setPractical(Integer.parseInt(request.getParameter("practical")));
		dao.addSubject(subjects);
	}
%>




</body>
</html>