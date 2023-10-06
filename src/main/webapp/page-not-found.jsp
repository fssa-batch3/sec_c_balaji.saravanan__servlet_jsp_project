<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<style>
</style>
<meta charset="ISO-8859-1">
<title>Error Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
<style>
.page_404 {
	padding: 40px 0;
	background: #fff;
	margin-left: 10%;
}

.page_404  img {
	width: 100%;
}

.four_zero_four_bg {
	background-image:
		url(https://cdn.dribbble.com/users/722246/screenshots/3066818/404-page.gif);
	height: 300px;
	background-position: center;
}

.four_zero_four_bg h1 {
	font-size: 80px;
}

.four_zero_four_bg h3 {
	font-size: 80px;
}

.link_404 {
	color: #fff !important;
	padding: 10px 20px;
	background: #39ac31;
	margin: 20px 0;
	display: inline-block;
}

.contant_box_404 {
	margin-top: -50px;
}
</style>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<section class="page_404">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 ">
					<div class="col-sm-10 col-sm-offset-1  text-center">
						<div class="four_zero_four_bg"></div>

						<div class="contant_box_404">
						<br>
						<br>
						<br>
							<h3 class="h2">Look like you're lost</h3>

							<p>the page you are looking for not avaible!</p>

							<a href="index.jsp" class="link_404">Go to Home</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>