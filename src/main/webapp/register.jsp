<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
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

	<div class="container" id="container">
		<div class="form-container sign-up-container">
			<form id="register" action="Register" method="post">
				<h1>Sign up</h1>
				<div class="social-container">

					<a href="#" class="social"> <i class="fab fa-google-plus-g"></i>
					</a>
				</div>
				<span>or use your email for registration</span> <input type="text"
					id="first_name" name="first_name" placeholder="Name" minlength="3"
					pattern="^[A-Za-z]+$" maxlength="20"
					title="please insert only alphabet value" required
					value="<%=(request.getAttribute("userName") != null) ? request.getAttribute("userName") : ""%>">

				<input type="tel" id="mobile_number" name="mobile_number" required
					title="please enter a valid mobile number" minlength="10"
					maxlength="10" placeholder="Mobile Number"
					pattern="^[6-9][0-9]{9}$"
					value="<%=(request.getAttribute("mobileNo") != null) ? request.getAttribute("mobileNo") : ""%>">

				<input type="email" id="regemail" name="regemail" spellcheck="@"
					placeholder="Email" required
					title="please use @ symbol, not use space"
					pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"
					value="<%=(request.getAttribute("email") != null) ? request.getAttribute("email") : ""%>">

				<input type="password" name="regpassword"
					pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,24}$"
					required id="regpassword" minlength="8" maxlength="12"
					placeholder="Password"
					value="<%=(request.getAttribute("Password") != null) ? request.getAttribute("Password") : ""%>">

				<button type="submit" id="submit" class="btn btn-success">Submit</button>
			</form>
		</div>

		<div class="form-container sign-in-container">
			<form id="checkregister" action="Login" method="Post">
				<h1>Sign in</h1>
				<div class="social-container">
					<a href="#" class="social"> <i class="fab fa-facebook-f"></i>
					</a> <a href="#" class="social"> <i class="fab fa-google-plus-g"></i>
					</a> <a href="#" class="social"> <i class="fab fa-linkedin-in"></i>
					</a>
				</div>
				<span>or use your account</span> <input type="email" id="username"
					name="email" spellcheck="@" placeholder="Email" required
					title="please use @ symbol"
					pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}">

				<input type="password"
					pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,24}$"
					name="password" required id="password" maxlength="12" minlength="8"
					placeholder="Password"> <a href="#">Forgot your
					password?</a> <a href="index.jsp">home</a>

				<button type="submit">Sign In</button>

			</form>

		</div>

		<div class="overlay-container">

			<div class="overlay">

				<div class="overlay-panel overlay-left">
					<h1>Hello futures</h1>
					<p>To keep connected with us please login with your personal
						info</p>
					<button class="ghost" id="signIn">Sign In</button>
				</div>

				<div class="overlay-panel overlay-right">
					<h1>Welcome</h1>
					<p>Enter your personal details and start journey with us</p>
					<button class="ghost" id="signUp">Sign Up</button>

				</div>

			</div>

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

    const signUpButton = document.getElementById("signUp");

    const signInButton = document.getElementById("signIn");

    const container = document.getElementById("container");

    signUpButton.addEventListener("click", () => {
    	container.classList.add("right-panel-active");
    });

    signInButton.addEventListener("click", () => {
    	container.classList.remove("right-panel-active");
    });
    </script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>