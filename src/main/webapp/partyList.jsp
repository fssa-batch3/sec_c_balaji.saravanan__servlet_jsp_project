<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Set"%>
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

.main_container {
	margin-left: 30%;
	display: flex;
	flex-derection: row;
	justify-content: space-arount;
	align-item: center;
	flex-wrap: wrap;
}

.card {
	display: flex;
	flex-direction: row; /* Corrected typo here */
	border: 1px solid #ddd;
	margin: 20px;
	width: 400px;
	background-color: #fff;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	transition: transform 0.2s;
	justify-content: space-around; /* Corrected typo here */
	align-items: center; /* Corrected typo here */
}

.card:hover {
	transform: scale(1.05);
}

.card-image {
	padding: 10px;
	text-align: center;
}

.card-image img {
	height: 150px;
	width: 150px;
}

.party-image {
	width: 150px; /* Adjust image size as needed */
	height: auto;
}

.card-content {
	flex: 2;
	padding: 20px;
}

.card-content a.category {
	text-decoration: none;
	color: #007BFF;
	font-size: 16px;
}

.card-content h2 {
	font-size: 24px;
	margin: 10px 0;
}

.card-content p {
	font-size: 18px;
	color: #333;
	margin: 10px 0;
}

.card-content a.author {
	text-decoration: none;
	color: #007BFF;
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
	height: 100vh;
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

#dropdownForm {
	display: flex;
	flex-direction: column;
	justify-content: space-around;
	align-items: center;
}

/* Style for the form-select (dropdown) elements */
.form-select {
	margin-right: 10px;
	padding: 4px;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #fff;
	margin-top: 30px;
	font-size: 13px;
}

/* Style for the submit button */
#dropdownForm button[type="submit"] {
	padding: 10px 30px;
	background-color: #007BFF;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s ease;
	margin: 0 20%;
	margin-top: 20px;
}

#dropdownForm button[type="submit"]:hover {
	background-color: #0056b3;
}


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
</Style>
</head>
<body>





	<jsp:include page="${request.getContextPath()}/homeNavBar.jsp"></jsp:include>

	<div id="search_result"></div>


	<div id="sidebar">
		<div class="toggle-btn" onclick="toggleSidebar(this)">
			<span></span> <span></span> <span></span>
		</div>
		<div class="list">
			<div class="item">
				<a href="" target="_blank"></a>
			</div>
			<%
			int election = (int) request.getAttribute("election");
			%>
			<form id="dropdownForm" action="FilterLeader">

				<input type="hidden" name="election" value="<%=election%>">

				<select class="form-select form-select-lg"
					aria-label=".form-select-sm example" name="constituency">
					<option value="">Select a constituency</option>
					<%
					Set<String> constituency = (Set<String>) request.getAttribute("ConstituencyList");

					if (constituency != null) {
						for (String constituencyvv : constituency) {
					%>
					<option value="<%=constituencyvv%>"><%=constituencyvv%></option>
					<%
					}
					} else {
					%>
					<%="No constituencies available"%>
					<%
					}
					%>

				</select> <select class="form-select form-select-lg"
					aria-label=".form-select-sm example" name="party">
					<option value="">Select a Party</option>
					<%
					List<Party> partyNames = (List<Party>) request.getAttribute("PartyList");

					if (partyNames != null) {

						for (int i = 0; i < partyNames.size(); i++) {
							Party party = partyNames.get(i);
					%>
					<option value="<%=party.getPartyId()%>"><%=party.getPartyName()%></option>
					<%
					}
					}
					%>

				</select>

				<button type="submit">submit</button>
			</form>

			<!-- <form id="dropdownForm" action="FilterLeader">

				<input type="hidden" name="election" value="<%=election%>">

				<select class="form-select form-select-lg"
					aria-label=".form-select-sm example" name="constituency">
					<option value="">Select a constituency</option>
					<%
					if (constituency != null) {
						for (String constituencyvv : constituency) {
					%>
					<option value="<%=constituencyvv%>"><%=constituencyvv%></option>
					<%
					}
					} else {
					%>
					<%="No constituencies available"%>
					<%
					}
					%>

				</select>

				<button type="submit">submit</button>
			</form>-->
		</div>
	</div>

	<div class="main_container">
		<%
		List<Party> partyList = (List<Party>) request.getAttribute("PartyList");

		List<Leader> leaderlist = (List<Leader>) request.getAttribute("Leaderlist");

		if (partyList != null) {

			for (Party partyValue : partyList) {
		%>

		<div class="card">
			<div class="card-image">
				<img src="<%=partyValue.getPartyImageUrl()%>"
					alt="<%=partyValue.getPartyName()%>" class="party-image">
			</div>
			<div class="card-content">
				<a class="category" href="#">Party Name</a>
				<h2>
					<b><%=partyValue.getPartyName()%></b>
				</h2>
				<p>
					More <a class="author"
						href="Profile?partyId=<%=partyValue.getPartyId()%>&election=<%=election%> ">Details</a>
				</p>
			</div>
		</div>

		<%
		}
		}
		%>
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

	<script>
		function toggleSidebar(ref) {
			document.getElementById("sidebar").classList.toggle('active');
		}
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>


	<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

	<script src="<%=request.getContextPath()%>/assets/js/search.js"></script>

</body>
</html>