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

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<link href="<%=request.getContextPath()%>/assets/css/footer.css"
	rel="stylesheet">
	
	<link href="<%=request.getContextPath()%>/assets/css/index.css"
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
}


.avatar-upload {
  position: relative;
  max-width: 205px;
  margin: 50px auto;
}
.avatar-upload .avatar-edit {
  position: absolute;
  right: 12px;
  z-index: 1;
  top: 10px;
}
.avatar-upload .avatar-edit input {
  display: none;
}
.avatar-upload .avatar-edit input + label {
  display: inline-block;
  width: 34px;
  height: 34px;
  margin-bottom: 0;
  border-radius: 100%;
  background: #FFFFFF;
  border: 1px solid transparent;
  box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.12);
  cursor: pointer;
  font-weight: normal;
  transition: all 0.2s ease-in-out;
}
.avatar-upload .avatar-edit input + label:hover {
  background: #f1f1f1;
  border-color: #d6d6d6;
}
.avatar-upload .avatar-edit input + label:after {
  content: "\f040";
  font-family: 'FontAwesome';
  color: #757575;
  position: absolute;
  top: 10px;
  left: 0;
  right: 0;
  text-align: center;
  margin: auto;
}
.avatar-upload .avatar-preview {
  width: 192px;
  height: 192px;
  position: relative;
  border-radius: 100%;
  border: 6px solid #F8F8F8;
  box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.1);
}
.avatar-upload .avatar-preview > div {
  width: 100%;
  height: 100%;
  border-radius: 100%;
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center;
} 
</style>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.css">
	
	
</head>

<body>


	<jsp:include page="${request.getContextPath()}/homeNavBar.jsp"></jsp:include>


	<%
	 User userList = (User) request.getAttribute("UserList");

	if (userList != null) {
	%>

	<div class="container rounded bg-white mt-5">
		<div class="row">
			<div class="col-md-4 border-right">
				<div class="avatar-upload">
        <div class="avatar-edit">
            <input type='file' id="imageUpload" accept=".png, .jpg, .jpeg" />
            <label for="imageUpload"></label>
        </div>
        <div class="avatar-preview">
            <div id="imagePreview" style="background-image: url();">
            </div>
        </div>
        
        <h3 style="color:red; text-align:center; margin:30px;"><%=(userList.getUserName() != null) ? userList.getUserName() : ""%></h3>
    </div>
			</div>
			<div class="col-md-8">
				<div class="p-3 py-5">
					<form action="UpdateUserprofile"
						id="profile_user" method="post">

						<li class="nav-item dropdown pe-5 d-flex align-items-center"
							id="dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false" id="five_option">
								options </a>
							<ul class="dropdown-menu bg-light">
								<li>
									<button id="edit" class="dropdown-item">Edit Profile</button>
								</li>
								<li><button id="edit" class="dropdown-item"><a href="LogOut">logout</a></button></li>

							</ul></li>
						<!-- <div class="d-flex justify-content-between align-items-center mb-3">
                            <button id="edit" class="text-right">Edit Profile</button>
                        </div> -->
						<div class="row mt-2">

							<div class="col-md-6">

								<label for="">First name :</label> <input type="text"
									class="form-control p-3" id="first_name" name="user_name"
									placeholder="first name" pattern="^[A-Za-z]+$"
									value="<%=(userList.getUserName() != null) ? userList.getUserName() : ""%>">

							</div>
							<div class="col-md-6">

								<label for="">Gender :</label> <select class="form-select"
									aria-label="Default select example" id="gender" required
									name="gender" required
									value="<%=(userList.getGender() != null) ? userList.getGender() : ""%>">
									
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
									value="<%=(userList.getEmailId() != null) ? userList.getEmailId() : ""%>">

							</div>

							<div class="col-md-6">

								<label for="">Occupation :</label> <input type="tel"
									maxlength="20" id="occupation" class="form-control p-3"
									placeholder="occupation" name="occuption"
									value="<%=(userList.getOccupation() != null) ? userList.getOccupation() : ""%>">
							</div>
						</div>

						<div class="row mt-3">

							<div class="col-md-6">

								<label for="">Mobile Number :</label> <input type="tel"
									id="mobile" required class="form-control p-3"
									placeholder="Phone number" minlength="10" name="mobile_number"
									maxlength="10" pattern="^[6-9][0-9]{9}$"
									value="<%=(userList.getMobileNo() != null) ? userList.getMobileNo() : 1234567890%>">

							</div>
							<div class="col-md-6">

								<label for="">Age :</label> <input type="tel" id="age"
									name="user_age" required class="form-control p-3"
									placeholder="Age"
									value="<%=(userList.getAge() != 0) ? userList.getAge() : 0%>">


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
	
	<script
		src="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.js">
		
	</script>
	
		<%
	String status = (String) request.getAttribute("status");

	String erMessage = (String) request.getAttribute("errorMessage");
	%>
	
	<script>
	
	function readURL(input) {
		
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        
	        reader.onload = function(e) {
	        	
	            $('#imagePreview').css('background-image', 'url(' + e.target.result + ')');
	            $('#imagePreview').hide();
	            $('#imagePreview').fadeIn(650);

	            // Store the data URL in local storage
	            localStorage.setItem('imageData', e.target.result);
	        };
	        reader.readAsDataURL(input.files[0]);
	    }
	}

	$("#imageUpload").change(function() {
	    readURL(this);
	});


	// Check if image data is present in local storage
	if (localStorage.getItem('imageData')) {
	    var imageData = localStorage.getItem('imageData');
	    $('#imagePreview').css('background-image', 'url(' + imageData + ')');
	    $('#imagePreview').hide();
	    $('#imagePreview').fadeIn(650);
	} else {
	   
	    $('#imagePreview').css('background-image', "url('http://i.pravatar.cc/500?img=7')");
	}
	
	
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