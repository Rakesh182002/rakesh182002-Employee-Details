<%@page import="com.jsp.Employee.Entity.Employee"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Id</title>
<style type="text/css">
a,button{
background: skyblue;
	color: white;
	text-decoration: none;
	padding: 5px;
 
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
		<tbody>
	<%List<Employee> empList=(List<Employee>)request.getAttribute("Employee"); 
	if(empList!=null){
		
	for(Employee emp:empList)
	{%>
			<tr>
				<td><%= emp.getEmpId() %></td>
				<td><%= emp.getEmpName() %></td>
				<td><%= emp.getEmpSal() %></td>
			</tr>

	<%} } %>
	</tbody>
		
	</table> 
	<button><a href="Home.jsp">HOME</a></button>
	<button><a href="GetOneEmp.jsp">BACK</a></button>
	
	
	
</body>
</html>