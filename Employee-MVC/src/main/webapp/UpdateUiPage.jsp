<%@page import="com.jsp.Employee.Entity.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UPDATE PAGE</title>
<style type="text/css">
input[type=submit],a{
background: skyblue;
	color: white;
	text-decoration: none;
	padding: 5px;
	border : 2px solid black;
}
td{
text-align: center;
}
</style>
</head>
<body>
	
	<table id="table-1" border="2px">
		<thead>
			<tr>
				<th>EMPLOYEE ID</th>
				<th>EMPLOYEE NAME</th>
				<th>EMPLOYEE SALARY</th>
			</tr>
		</thead>
		<form action="UpdateById" id="form-1">
		<tbody>
			
			
	<%List<Employee> userlist=(List<Employee>)request.getAttribute("EmployeeList"); 
	if(userlist!=null){%>
		
	<%for(Employee emp:userlist)
	{%>	
			<tr>
				<td> <input value="<%= emp.getEmpId()%>" type="text" readonly="readonly" name="id"></td>
				<td> <input value="<%= emp.getEmpName()%>" type="text" name="name"></td>
				<td><input value="<%= emp.getEmpSal()%>" type="text" name="sal"></td>
			</tr>
	<% } %>
	<h1>UPDATE DATA</h1>	
		<a href="Home.jsp">HOME</a><br> 
	<%} %>
	
	</tbody>
	<input type="submit" value="UPDATE" id="button-1"/>	 <br>

	
		
	</form>
	</table> 
	
	
</body>
</html>