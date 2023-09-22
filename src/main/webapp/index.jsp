<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Index</title>

<link href="<%=request.getContextPath()%>/assets/css/index.css"
	rel="stylesheet">

<link href="<%=request.getContextPath()%>/assets/css/footer.css"
	rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<style>
.h_100_1 {
	min-width: 300px;
	border: 1px solid #ffffffff;
	border-radius: 5px;
	box-shadow: rgba(50, 50, 93, 0.25) 0px 13px 27px -5px,
		rgba(0, 0, 0, 0.3) 0px 8px 16px -8px;
	border-radius: 7px;
	margin-bottom: 40px;
}

.card-img-top {
	height: 200px;
	object-fit: cover;
	width: 300px;
	padding: 10px;
}

.card-body {
	padding: 10px;
}

.card-title {
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 5px;
}

.card-text {
	font-size: 14px;
	margin-bottom: 10px;
	text-align: justify;
}

.card span {
	display: block;
	font-size: 12px;
}

.card span p {
	margin: 0;
}

.card span b {
	font-weight: bold;
}
</style>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

	<jsp:include page="${request.getContextPath()}/homeNavBar.jsp"></jsp:include>


	<div class="headvideo">

		<video autoplay muted loop id="myVideo">

			<source
				src="<%=request.getContextPath()%>/assets/images/Flag - 117755.mp4"
				type="video/mp4">
			<track default>
		</video>

	</div>

	<!-- navbar all -->
	<!-- section1 -->

	<div class="section1 container">

		<h1 class="h1 fs-3 fw-bolder text-center lh-base p-5">
			It is the right of man to live freely. <br> Likewise others It
			is his duty to live dependently.
		</h1>

		<p class="lh-lg fs-6 fw-bolder text-center">
			The actual change from the current state is a<br> It never comes
			from electing a politician - especially not the one who directs it.<br>
			To maintain that position Dedicated status party.
		</p>

		<button type="button" class="btn btn-outline-dark ">
			<a class="text-center text-decoration-none" href="">Opinion</a>
		</button>

	</div>

	<!-- section2 -->

	<div
		class="section2 d-flex flex-column justify-content-center align-items-center">

		<h1 class="h1 text-center fs-5">Welcome To Politics</h1>

		<img src="<%=request.getContextPath()%>/assets/images/Capture.PNG"
			class=" decoration img-fluid" alt="error">

		<div class="box d-flex">

			<div
				class="content1 d-flex justify-content-center align-items-center flex-column">

				<h2 class="h1">Politics</h2>

				<p class="p-3">The modern conservative is engaged in one of
					man's oldest exercises in moral philosophy; that is, the search for
					a superior moral justification for selfishness.</p>

			</div>

			<div class="sideimage">

				<img
					src="<%=request.getContextPath()%>/assets/images/motivation.jpg"
					class="img-fluid" alt="error image">

			</div>

		</div>

	</div>


	<div class="piecharts">
		<div>
			<p>TamilNadu Total Votes.</p>
			<canvas id="chartCanvas"></canvas>
		</div>
		<div>
			<P>Political Bribery Survey Results</P>
			<canvas id="myChart"></canvas>
		</div>

	</div>


	<!-- section3 -->

	<div class="section3">

		<div
			class="content d-flex flex-column justify-content-center align-items-center p-5">

			<p class="h4 fs-5 text-center text-danger fw-bolder lh-base">
				Our campaign is powered by<br> people like you By contributions
				from supporters
			</p>

			<hr>

			<h1 class="h2 fs-4 text-center text-dark fw-bold pb-5">

				<span>Become a volunteer</span>
			</h1>

			<h2 class="h2 fs-6 text-center text-dark lh-base pb-3">

				Because you are not interested in politics<br> you are It
				doesn't mean you want to change the government.
			</h2>
			<button type="button" class="btn btn-outline-dark p-2 ">
				<a class="text-center text-decoration-none" href="">Now Join</a>
			</button>

		</div>

		<!-- section4 -->

		<div class="section4 d-flex justify-content-between">

			<div class="num1">
				<h1 class="h1 fs-2 text-center pb-3">0k</h1>
				<p class="text-center text-uppercase">Volunteer</p>
			</div>

			<hr class="border border-danger border-2 opacity-50">

			<div class="num1 ">
				<h1 class="h1 fs-1 text-center pb-3">131</h1>
				<p class="text-center text-uppercase">Camp now</p>
			</div>

			<hr class="border border-danger border-2 opacity-50">

			<div class="num1">
				<h1 class="h1 fs-1 text-center pb-3">612</h1>
				<p class="text-center text-uppercase">Partial coverage</p>
			</div>

			<hr class="project border border-danger border-2 opacity-50">

			<div class="project num1">
				<h1 class="h1 fs-1 text-center pb-3">2</h1>
				<p class="text-center text-uppercase">Project completed</p>
			</div>

		</div>

	</div>




	<!-- section5 -->

	<div class="section5">

		<h2 class="head">Latest political news</h2>

		<div class="news"></div>
	</div>




	<%
	String loggedInEmail = (String) session.getAttribute("email");
	%>

	<script>
		
	</script>






	<jsp:include page="${request.getContextPath()}/footer.jsp"></jsp:include>

	<script src="<%=request.getContextPath()%>/assets/js/index.js"></script>

	<script src="<%=request.getContextPath()%>/assets/js/trsnslate.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>



</body>
</html>