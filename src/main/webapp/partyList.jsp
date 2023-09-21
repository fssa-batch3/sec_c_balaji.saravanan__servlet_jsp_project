<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.fssa.politifact.model.Party"%>
<%@ page import="com.fssa.politifact.model.Leader"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="<%=request.getContextPath()%>/assets/css/index.css"
	rel="stylesheet">

<link href="<%=request.getContextPath()%>/assets/css/footer.css"
	rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<Style>
* {
	margin: 0;
	padding: 0;
}

body {
	background: #fff;
	text-align: center;
}

.card {
	margin: 3%;
	width: 20%;
	transition: 0.3s;
	background-color: rgba(0, 0, 0, 0.85);
	position: relative;
	display: inline-block;
	margin: 1rem;
}

.card:hover {
	box-shadow: 0 16px 36px 0 rgba(0, 0, 0, 0.7);
	transform: translate(0, -5px);
}

.container {
	padding: 10px 20px;
	text-align: left;
	color: #fff;
}

.card a img {
	height: 200px;
}

.category {
	text-decoration: none;
	color: rgb(250, 178, 58);
	font-weight: bold;
	font-size: 0.85em;
}

.category:hover {
	text-decoration: underline;
}

h2 {
	margin: 0;
	margin-top: 2px;
	font-size: 20px;
}

.author {
	text-decoration: none;
	color: rgb(90, 183, 243);
}

p {
	margin-top: 7px;
}

.author:hover {
	text-decoration: underline;
}

@media only screen and (max-width: 1024px) {
	.card {
		width: 40%;
	}
}

@media only screen and (min-device-width: 320px) and (max-device-width:
	550px) {
	.card {
		width: 98%;
		margin: 1%;
	}
}

#sidebar {
	position: absolute;
	top: 50px;
	left: 0px;
	width: 200px;
	height:600px;
	background: #151719;
	transition: all 300ms linear;
}

#sidebar.active {
	left: -200px;
}

#sidebar .toggle-btn {
	position: absolute;
	left: 220px;
	top: 10px;
}

#sidebar .toggle-btn span {
	display: block;
	width: 30px;
	height: 5px;
	background: #151719;
	margin: 5px 0px;
	cursor: pointer;
}

#sidebar div.list div.item {
	padding: 15px 10px;
	border-bottom: 1px solid #444;
	color: #fcfcfc;
	text-transform: uppercase;
	font-size: 12px;
}

#sidebar div.list div.item a {
	color: #fcfcfc;
	text-decoration: none;
}
</Style>
</head>
<body>





	<jsp:include page="${request.getContextPath()}/homeNavBar.jsp"></jsp:include>


	<div id="sidebar">
		<div class="toggle-btn" onclick="toggleSidebar(this)">
			<span></span> <span></span> <span></span>
		</div>
		<div class="list">
			<div class="item">
				<a href="" target="_blank"></a>
			</div>
			<form id="dropdownForm">
				<select class="form-select form-select-lg"
					aria-label=".form-select-sm example">
					<option selected>constituency</option>
					<option value="1">One</option>
					<option value="2">Two</option>
					<option value="3">Three</option>
				</select> <select class="form-select form-select-lg"
					aria-label=".form-select-sm example">
					<option selected>party</option>
					<option value="1">One</option>
					<option value="2">Two</option>
					<option value="3">Three</option>
				</select>
			</form>
		</div>
	</div>

	<%
	int election = (int) request.getAttribute("election");

	List<Party> partyList = (List<Party>) request.getAttribute("PartyList");

	List<Leader> leaderlist = (List<Leader>) request.getAttribute("Leaderlist");

	if (partyList != null) {

		for (Party partyValue : partyList) {
	%>

	<div class="card">
		<a href="Profile"> <img src="<%=partyValue.getPartyImageUrl()%>"
			alt="<%=partyValue.getPartyName()%>" style="width: 100%">
			<div class="container">
				<a class="category" href="#">Party Name<a>
						<h2>
							<b><%=partyValue.getPartyName()%></b>
						</h2>
						<p>
							More <a class="author"
								href="Profile?partyId=<%=partyValue.getPartyId()%>&election=<%=election%> ">Details</a>
						</p>
			</div>
		</a>
	</div>

	<%
	}
	}
	%>

	<jsp:include page="${request.getContextPath()}/footer.jsp"></jsp:include>

	<script src="<%=request.getContextPath()%>/assets/js/trsnslate.js"></script>

	<script>
		function toggleSidebar(ref) {
			document.getElementById("sidebar").classList.toggle('active');
		}
	</script>
</body>
</html>