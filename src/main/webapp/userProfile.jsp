<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.fssa.politifact.model.User"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="../../assets/css/main.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="icon" type="image/jpg" sizes="60x32"
	href="../../assets/images/icons/p logo.jpg">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link href="<%=request.getContextPath()%>/assets/css/footer.css"
	rel="stylesheet">
<title>Document</title>

<style>
.form-control:focus {
	box-shadow: none;
	border-color: #dcd8dc;
}

.col-md-6 input, select {
	border-radius: 5px;
	box-shadow: -1px 9px 14px 0px rgba(26, 22, 26, 0.53);
	margin-top: 15px;
}

.back:hover {
	color: #682773;
	cursor: pointer;
}

.img_div {
	/* box-shadow: -1px 9px 14px 0px rgba(26, 22, 26, 0.53); */
	border-radius: 20px;
	margin-top: 75px;
}

.img_div img {
	width: 150px;
	height: 150px;
}

#dropdown {
	margin-left: 90%;
	border: 1px black solid;
	border-radius: 5px;
	background-color: darkseagreen;
}
</style>
</head>

<body>
	<jsp:include page="${request.getContextPath()}/homeNavBar.jsp"></jsp:include>


	<%
	List<User> userList = (List<User>) request.getAttribute("UserList");

	if (userList != null) {
	%>

	<div class="container rounded bg-white mt-5">
		<div class="row">
			<div class="col-md-4 border-right">
				<div
					class="img_div d-flex flex-column align-items-center text-center p-3 py-5">
					<img src="../../assets/images/ministers/not-iamge.jpg"
						alt="user profile"> <span class="font-weight-bold"></span> <span
						class="text-black-50">23456789</span> <span>Tamil Nadu</span>
				</div>
			</div>
			<div class="col-md-8">
				<div class="p-3 py-5">
					<form action="<%=request.getContextPath()%>/UpdateUserprofile"
						id="profile_user" method="post">

						<li class="nav-item dropdown pe-5 d-flex align-items-center"
							id="dropdown"><i class="fa fa-ellipsis-v"></i> <a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false" id="five_option">
								options </a>
							<ul class="dropdown-menu bg-light">
								<li>
									<button id="edit" class="dropdown-item">Edit Profile</button>
								</li>
								<li><a href="LogOut">logout</a></li>

							</ul></li>
						<!-- <div class="d-flex justify-content-between align-items-center mb-3">
                            <button id="edit" class="text-right">Edit Profile</button>
                        </div> -->
						<div class="row mt-2">

							<div class="col-md-6">

								<label for="">First name :</label> <input type="text"
									class="form-control p-3" id="first_name" name="user_name"
									placeholder="first name" pattern="^[A-Za-z]+$"
									value="<%=(userList.get(0).getUserName() != null) ? userList.get(0).getUserName() : ""%>">

							</div>
							<div class="col-md-6">

								<label for="">Gender :</label> <select class="form-select"
									aria-label="Default select example" id="gender" required
									name="gender" required
									value="<%=(userList.get(0).getGender() != null) ? userList.get(0).getGender() : ""%>">
									<option selected>Enter your opinion</option>
									<option value="male">Male</option>
									<option value="female">female</option>
									<option value="others">others</option>
								</select>
							</div>

						</div>

						<div class="row mt-3">

							<div class="col-md-6">

								<label for="">Email :</label> <input type="email"
									class="form-control p-3" id="email" placeholder="Email"
									name="regemail"
									value="<%=(userList.get(0).getEmailId() != null) ? userList.get(0).getEmailId() : ""%>">

							</div>

							<div class="col-md-6">

								<label for="">Occupation :</label> <input type="tel"
									maxlength="20" id="occupation" class="form-control p-3"
									placeholder="occupation" name="occuption"
									value="<%=(userList.get(0).getOccupation() != null) ? userList.get(0).getOccupation() : ""%>">
							</div>
						</div>

						<div class="row mt-3">

							<div class="col-md-6">

								<label for="">Mobile Number :</label> <input type="tel"
									id="mobile" required class="form-control p-3"
									placeholder="Phone number" minlength="10" name="mobile_number"
									maxlength="10" pattern="^[6-9][0-9]{9}$"
									value="<%=(userList.get(0).getMobileNo() != null) ? userList.get(0).getMobileNo() : 1234567890%>">

							</div>
							<div class="col-md-6">

								<label for="">Age :</label> <input type="tel" id="age"
									name="user_age" required class="form-control p-3"
									placeholder="Age"
									value="<%=(userList.get(0).getAge() != 0) ? userList.get(0).getAge() : 0%>">


								</select>

							</div>

						</div>
						<div class="d-flex flex-row justify-content-between">

							<div class="mt-5 text-right">
								<button class="btn btn-primary profile-button" type="submit">Save
									Profile</button>
							</div>
							<div class="mt-5 text-right"></div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>

	<%
	}
	%>

	<script src="assets/js/userProfile.js"></script>

	<jsp:include page="${request.getContextPath()}/footer.jsp"></jsp:include>


	<!-- script for bootstrap -->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- script for bootstrap -->

</body>

</html>