<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>Election</title>

<link href="<%=request.getContextPath()%>/assets/css/index.css"
	rel="stylesheet">

<link href="<%=request.getContextPath()%>/assets/css/footer.css"
	rel="stylesheet">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/assets/css/electionTyps.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
#search_result {
	position: fixed;
	top: 6.5%;
	left: 0;
	width: 50%;
	height: 400px;
	overflow: scroll;
	margin: 0 20%;
	display: none;
	z-index: 9999;
}

#search_result::-webkit-scrollbar {
	display: none;
}

.card4 {
	background-color: #ffffff;
	border-radius: 5px;
	box-shadow: 5px 5px 10px #e6e6e6, -5px -5px 10px #ffffff;
	margin-bottom: 0.5em;
	padding: 1em;
	transition: transform 0.2s ease-in-out;
}

.card4:hover {
	transform: translateY(-5px);
}

.card4 a {
	color: #333333;
	font-size: 1rem;
	font-weight: bold;
	text-decoration: none;
}

.card4 p { 
	color: #666666;
	font-size: 0.9rem;
	margin-top: 0.3em;
}
</style>
</head>
<body>

	<jsp:include page="${request.getContextPath()}/homeNavBar.jsp"></jsp:include>

	<div id="search_result"></div>

	<div class="mainContainer">
		<div class="card" id="assembly-card">
			<div class="card-title">Assembly Election</div>
			<a class="card-link" href="PartyList?election=1">Learn more</a>
		</div>

		<div class="card" id="general-card">
			<div class="card-title">General Election</div>
			<a class="card-link" href="PartyList?election=2">Learn more</a>
		</div>

		<div class="card" id="local-card">
			<div class="card-title">Local Election</div>
			<a class="card-link" href="#">Learn more</a>
		</div>

	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<jsp:include page="${request.getContextPath()}/footer.jsp"></jsp:include>
	<script src="<%=request.getContextPath()%>/assets/js/trsnslate.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		document.addEventListener("DOMContentLoaded",function() {

							const toggleButton = document.getElementById("toggleButton");

							const dropdownContainer = document.getElementById("dropdownContainer");

							toggleButton.addEventListener("click",function() {
												dropdownContainer.style.display = (dropdownContainer.style.display === "none") ? "block": "none";
											});
						});
	</script>

	<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

	<script src="<%=request.getContextPath()%>/assets/js/search.js"></script>
</body>
</html>