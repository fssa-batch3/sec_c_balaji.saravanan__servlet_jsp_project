<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.css">
<link href="<%=request.getContextPath()%>/assets/css/register.css"
	rel="stylesheet">
<title>Politifact</title>

<style>
</style>

</head>

<body>



	<%
	String status = (String) request.getAttribute("status");

	String erMessage = (String) request.getAttribute("errorMessage");
	%>
	
	
	
		<div class="contain">

		<div class="login">
			<form action="Register" method="post">
				<h1>Welcome</h1>
				<small>Register to your account and start connecting with the
					world. Your journey begins here.</small>
					 
					<label for="email">Full Name</label> 
					
					<input type="text"
					id="first_name" name="first_name" placeholder="Name" minlength="3"
					pattern="^[A-Za-z]+$" maxlength="20"
					title="please insert only alphabet value" required type="text"
					value="<%=(request.getAttribute("userName") != null) ? request.getAttribute("userName") : ""%>">
					
					<label for="email">Mobile No</label>
					 
					<input type="tel" id="mobile_number" name="mobile_number" required
					title="please enter a valid mobile number" minlength="10"
					maxlength="10" placeholder="Mobile Number"
					pattern="^[6-9][0-9]{9}$"
					value="<%=(request.getAttribute("mobileNo") != null) ? request.getAttribute("mobileNo") : ""%>">
					
					<label for="email">Email</label> 
					
					
					<input type="email" id="regemail" name="regemail" spellcheck="@"
					placeholder="Email" required
					title="please use @ symbol, not use space"
					pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"
					value="<%=(request.getAttribute("email") != null) ? request.getAttribute("email") : ""%>">
					
					<label
					for="pass">Password</label>
					
					 <input type="password" name="regpassword"
					pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,24}$"
					required id="regpassword" minlength="8" maxlength="12"
					placeholder="Password"
					value="<%=(request.getAttribute("Password") != null) ? request.getAttribute("Password") : ""%>">
					
					
				<div class="mor">
					<h3>Already have Account</h3>
					<a href="login.jsp">Login</a>
				</div>
				<input class="log" type="submit">

			</form>


		</div>

		<div class="image">

			<h1 style="text-align: center">New here? Sign up and unlock
				amazing features!</h1>
				
				<a href="index.jsp" style="text-align:center">Back Home</a>

		</div>

	</div>



	<script
		src="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.js">
		
	</script>


	<script>
    
    const status = "<%=status%>";
    
	const error= " <%=erMessage%>";

	if (status === "true") {

		Notify.success("Account created successfully");

	} else {

		Notify.error(error);
	}
    </script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>