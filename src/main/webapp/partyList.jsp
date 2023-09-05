<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.fssa.politifact.model.Party"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<Style>

body {
	background: #fff;
	text-align: center;
	margin: 2%;
}

.card {
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
</Style>
</head>
<body>

	<%
	List<Party> partyList = (List<Party>) request.getAttribute("PartyList");

	if (partyList != null) {

		for (Party partyValue : partyList) {
	%>

	<div class="card">
		<a href="Profile"> <img
			src="https://static.pexels.com/photos/1562/italian-landscape-mountains-nature-large.jpg"
			alt="mountains" style="width: 100%">
			<div class="container">
				<a class="category" href="#">Party Name<a>
						<h2>
							<b><%=partyValue.getPartyName()  %></b>
						</h2>
						<p>
							More <a class="author" href="Profile">Ewa Bilska</a>
						</p>
			</div>
		</a>
	</div>

	<%
	}
	}
	%>
</body>
</html>