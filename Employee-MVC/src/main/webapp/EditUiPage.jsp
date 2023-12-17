<%@page import="com.jsp.Employee.Entity.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMPLOYEE DETAILS MVC</title>
<style type="text/css">
a{
text-decoration: none;
}
#blue{
color:blue;
}
#red{
color:red;
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
				<th>UPDATE</th>
				<th>DELETE</th>
			</tr>
		</thead>
		<tbody>
	<%List<Employee> userlist=(List<Employee>)request.getAttribute("EmployeeList"); 
	if(userlist!=null){
		
	for(Employee emp:userlist)
	{%>
	
		
			<tr>
				<td><%= emp.getEmpId() %></td>
				<td><%= emp.getEmpName() %></td>
				<td><%= emp.getEmpSal() %></td>
				<td><a href="Update?val=<%= emp.getEmpId() %>" id="blue">UPDATE </a></td>
				<td><a href="Delete?id=<%= emp.getEmpId() %>" id="red">DELETE </a></td>
				
			</tr>
		
	<%} } %>
	</tbody>
		
	</table> 
</body>
</html>