<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
String loggedInEmail = (String) session.getAttribute("email");
%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
	<div class="container-fluid">
		<a class="navbar-brand text-danger" href="index.jsp">POLITIFACT</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link active list_li"
					aria-current="page" href="index.jsp" id="option_one">home</a></li>

				<li class="nav-item"><a class="nav-link list_li"
					href="electionTypes.jsp" id="option_two">Portfolio</a></li>

				<li class="nav-item"><a class="nav-link list_li"
					href="pastLeaders.jsp" id="option_four">Past Leader</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle list_li" href="#"
					id="navbarDropdown" role="button" data-bs-toggle="dropdown"
					aria-expanded="false" id="five_option"> More </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item text-dark list_li"
							href="governerList.jsp" id="option_five_sub_one">Governer</a></li>
						<li><a class="dropdown-item text-dark list_li"
							href="mlaList.jsp" id="option_five_sub_two">MLA</a></li>
						<li><a class="dropdown-item text-dark list_li"
							href="budget.jsp" id="option_five_sub_two">Budget</a></li>
					</ul></li>
				<li class="nav-item " id="admin"><a class="nav-link list_li"
					href="LeaderValues">Admin</a></li>
				<!-- <li class="nav-item">
                <a class="nav-link" href="#">Contact Us</a>
            </li> -->
			</ul>


			<ul class="nav navbar-nav">
				<li>
					<form class="navbar-form">
						<div class="input-group">

							<input type="search" class="form-control" id="searchbar"
								placeholder="Search" aria-label="Search"
								aria-describedby="basic-addon1">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1"><i
									class="fa fa-microphone p-1" id="search-icon"></i></span>
							</div>
						</div>

					</form>
				</li>
			</ul>



			<ul class="navbar-nav ms-auto">


				<li class="nav-item" id="like_list"><a class="nav-link"
					href="${root}/pages/like_list.html"><span
						class="glyphicon glyphicon-user"></span><i class="fa fa-heart"></i></a>
				</li>



				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle list_li" href="#"
					id="navbarDropdown" role="button" data-bs-toggle="dropdown"
					aria-expanded="false"> Language </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a
							class="dropdown-item text-dark lang-tamil multi_lang list_li"
							href="#" id="lang_ta">tamil</a></li>
						<li><button
								class="dropdown-item text-dark lang-english multi_lang list_li"
								id="lang_eng">English</button></li>
					</ul></li>


				<li class="nav-item dropdown" id="option_six"><a
					class="nav-link dropdown-toggle list_li" href="#"
					id="navbarDropdown" role="button" data-bs-toggle="dropdown"
					aria-expanded="false"> Login </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item text-dark list_li"
							href="register.jsp">Register</a></li>
					</ul></li>

				<li class="nav-item" id="my-account"><a
					class="nav-link list_li"
					href="UserProfile?email=<%=loggedInEmail%>"><span
						class="glyphicon glyphicon-user">Profile</span></a></li>
			</ul>
		</div>
	</div>
</nav>

<script>
       
        	
    const loggedInEmail = "<%=loggedInEmail%>";

	const loginbut = document.getElementById("option_six");

	const account = document.getElementById("my-account");

	if (loggedInEmail == "null") {

		account.style.display = "none";

		loginbut.style.display = "block";

	} else {

		account.style.display = "block";

		loginbut.style.display = "none";
	}
</script>



