<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Add_User</title>
<style type="text/css">

.heading {
	text-align: center;
	}

.container {
	width: 300px;
	padding: 16px;
	background-color: white;
	margin: 0 auto;
	margin-top: 100px;
	border: 1px solid black;
	border-radius: 4px;
}

input[type=text],input[type=email],\input[type=password], input[type=number] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

input[type=submit] {
	background-color: #00802b;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

input[type=submit]:active {
	background-color: #00e64d;
}
</style>

</head>

<body>
	<div class="container">
		<h2 class="heading">ADD_EMPLOYEE	_MVC</h2>
		
		 <form action="add" method="post" >
        	 
                <label for="id">EMPLOYEE ID</label>
               <input type="text" name="id" id="eId"  pattern="[0-9]{1,}" placeholder="Enter Your EmployeeId" autocomplete="off" autofocus>
           
               <label for="name">EMPLOYEE NAME</label>
               <input type="text" name="name" id="eName" placeholder="Enter Your Name" autocomplete="off" autofocus>
           
               <label for="sal">EMPLOYEE SALARY</label>
               <input type="text" name="sal" id="eSal" pattern="[0-9]{3,}" placeholder="Enter Your Salary" autocomplete="off" autofocus>
           
               <input type="submit" value="submit">
            
        </form>
	
	</div>
</body>
</html>