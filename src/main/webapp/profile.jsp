<%@ page import="java.util.List"%>
<%@ page import="com.fssa.politifact.model.Leader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/portfolio.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
	
	<link href="<%=request.getContextPath()%>/assets/css/footer.css"
	rel="stylesheet">
	
	<link href="<%=request.getContextPath()%>/assets/css/index.css"
	rel="stylesheet">
<title>List of Leaders</title>
</head>
<body>
    <jsp:include page="${request.getContextPath()}/homeNavBar.jsp"></jsp:include>

	<div class="main_container">

		<%
		List<Leader> leaderValues = (List<Leader>) request.getAttribute("leaderValues");

		if (leaderValues != null) {

			for (Leader leader : leaderValues) {
		%>

		<div class="minister_card">

			<div class="minister_image">

				<img src="<%=leader.getImageUrl()%>" alt="<%=leader.getName()%>">

			</div>

			<div class="minister_details">

				<div class="details_contents">

					<p class="minister_name"><%=leader.getName()%></p>

					<p class="coun_of_minister"><%= leader.getPartyName() %></p>

					<p class="minister_pos"><%=(leader.getPosition().toString() == "MEMBER_OF_LEGISLATIVE_ASSEMBLY") ? "Minister" : "nnn"%></p>

					<p class="view_portfolio">

						<a href="ProfileDetailPage?id=<%= leader.getId() %>">View portfolio</a>

					</p>

				</div>

			</div>

		</div>
		<%
		}
		} else {
		%>
		
		<h1 style="text-align:center;">Not Found</h1>
		<%
		}
		%>
	</div>

<jsp:include page="${request.getContextPath()}/footer.jsp"></jsp:include>

<script src="<%=request.getContextPath()%>/assets/js/trsnslate.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
