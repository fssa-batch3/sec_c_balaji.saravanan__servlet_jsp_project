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
</head>
</head>
<body>

	<jsp:include page="${request.getContextPath()}/homeNavBar.jsp"></jsp:include>;

	<div class="mainContainer">
		<div class="card" id="assembly-card">
			<div class="card-title">Assembly Election</div>
			<a class="card-link" href="Profile">Learn more</a>
		</div>

		<div class="card" id="general-card">
			<div class="card-title">General Election</div>
			<a class="card-link" href="#">Learn more</a>
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
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>