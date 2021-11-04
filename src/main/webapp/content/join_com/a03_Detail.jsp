<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*"   
    import = "wannafit.content.schedule.*"
    import = "wannafit.content.vo.*" 
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value ="utf-8"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Wanna-Fit, 나만의 핏을 찾아서 </title>
<link rel="stylesheet" href="${path}/content/A_settings/main_nav.css">
<link rel="stylesheet" href="${path}/content/A_settings/schedule.css">
<style>
.btn {
width: 10%;
font-size: 3px;
margin-left:300px;
background :#6C7EAA;
border-radius: 5px;
text-color :white;
float:center;
}
</style>
<script type="text/javascript">

</script>
</head>
<%-- 
# 

--%>
<%
String display = request.getParameter("param");
String Snum = display;
if(Snum ==null) Snum = "";

%>


<%
ScheduleDao dao = new ScheduleDao();
ArrayList<Schedule> ScheduleList = dao.getSchedule(Snum);
%>
<body>

<%if(Snum!=null) { %>
	<form method = "post">
	<table>
	<%for(Schedule s:ScheduleList) {%>
		<tr><td>제목</td><td><%=s.getTitle()%></td></tr>
		<tr><td>해야할일1</td><td><%=s.getWork1()%></td></tr>
		<tr><td>해야할일2</td><td><%=s.getWork2()%></td></tr>
		<tr><td>해야할일3</td><td><%=s.getWork3()%></td></tr>
		<tr><td>해야할일4</td><td><%=s.getWork4()%></td></tr>
		<tr><td>날짜</td><td><%=s.getDate()%></td></tr>
		<tr><td>댓글</td><td><%=s.getComment()%></td></tr>
		<%} %>	
		<%} %>
	</table>
		<h3><input type ="button" class ="btn" value ="일정 신규 등록" onclick ="change()"/></h3>
	</form>
</body>
	<script type="text/javascript">
	function change(){
    window.open("a02_scheduler.jsp","popupView","width=350 height=350"); 
}
	</script>
</html>