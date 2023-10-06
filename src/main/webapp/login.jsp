<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link href="<%=request.getContextPath()%>/assets/css/register.css"
	rel="stylesheet">
	
	<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.css">
	</head>
	
<body>

	<%
	String status = (String) request.getAttribute("status");

	String erMessage = (String) request.getAttribute("errorMessage");
	%>


	<div class="contain">

		

		<div class="login">
		
			<form action="Login" method="post">
				<h1>Welcome Back!</h1>
				<small>Login to your account and start connecting with the
					world. Your journey begins here.</small> 
					
					<label for="email">Email</label> 
					
					
					<input type="email" id="username"
					name="email" spellcheck="@" placeholder="Email" required
					title="please use @ symbol"
					pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}">
					
					<label
					for="pass">Password</label>
					
					 <input type="password"
					pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,24}$"
					name="password" required id="password" maxlength="12" minlength="8"
					placeholder="Password">
					
					
				<div class="mor">
					<h3>Don't have account</h3>
					<a href="register.jsp">Register</a>
				</div>
				<div class="mor">
					<input class="check" type="checkbox"><label for="check">Remember
						Me</label> <a href="">Forgot Password?</a>
				</div>
				
				<input class="log" type="submit">

			</form>


		</div>

		<div class="image">

			<h1 style="text-align: center">New here? Sign up and unlock
				amazing features!</h1>

			<a href="index.jsp" style="text-align: center">Back Home</a>

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

</body>
</html>