<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.fssa.politifact.model.Party"%>
<%@ page import="com.fssa.politifact.model.Constituency"%>
<%@ page import="com.fssa.politifact.model.Leader"%>
<%@ page import="com.fssa.politifact.model.Election"%>
<%@ page import="com.fssa.politifact.model.Affidavit"%>
<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">

<head>
<meta charset="utf-8">
<title>profile</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<link href="<%=request.getContextPath()%>/assets/css/profileDetail.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/assets/css/index.css"
	rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>
	<jsp:include page="${request.getContextPath()}/homeNavBar.jsp"></jsp:include>
	<%
	List<Leader> leaderValue = (List<Leader>) request.getAttribute("LeaderDitail");
	%>

	<%
	List<Affidavit> affidavit = (List<Affidavit>) request.getAttribute("AffidavitUrl");
	%>

	<div class="wrapper">
		<nav id="sidebar">
			<%
			if (leaderValue != null && !leaderValue.isEmpty()) {
				Leader leader = leaderValue.get(0);
			%>
			<div class="title">
				<%=leader.getName()%>

			</div>

			<ul class="list-items">
				<li><img src="<%=leader.getImageUrl()%>"
					alt="<%=leader.getName()%>"></li>
				<li><a href="#birth">Birth</a></li>
				<li><a href="#educatiion"></i>Education</a></li>
				<li><a href="#movie"></i>Past Work experience</a></li>
				<li><a href="#politics">Politics</a></li>
				<li><a href="#family">Family</a></li>
				<li><a href="#income">Income</a></li>


			</ul>
		</nav>
	</div>
	<div class="content">

		<!-- cm image put on header -->
		<div class="headprofile">

			<!-- cm image put on header -->

			<!--  <div class="cm-image">
				<img src="../../../assets/images/ministers/mk stalin.png"
					alt="error image">
			</div> -->


			<div class="cm-name">


				<p>
					<strong>Role:</strong><%=(leader.getPosition().toString() == "MEMBER_OF_LEGISLATIVE_ASSEMBLY") ? "Minister" : "Council Minister"%>
				</p>
				<p>
					<strong>NAME:</strong><%=leader.getName()%>
				</p>
				<p>
					<strong>PARTY:</strong><%=leader.getPartyName()%>
				</p>
				<p>
					<strong>politics:</strong><%=leader.getExperience()%>
				</p>
				<p>
					<strong>job</strong><%=leader.getOccupation()%>
				</p>
				
				<p>
					<strong>Constituency</strong><%=leader.getCounstuencyName()%>
					
				</p>

			</div>

			<%
			if (affidavit != null && !affidavit.isEmpty()) {
				Affidavit affidavit1 = affidavit.get(0);
			%>
			<div id="Iframe-Cicis-Menu-To-Go"
				class="set-margin-cicis-menu-to-go set-padding-cicis-menu-to-go set-border-cicis-menu-to-go set-box-shadow-cicis-menu-to-go center-block-horiz">
				<div
					class="responsive-wrapper responsive-wrapper-padding-bottom-90pct"
					style="overflow: auto; -webkit-overflow-scrolling: touch;">

					<iframe src="<%=affidavit1.getAffidateUrl()%>"></iframe>
				</div>
				<p style="font-size: 110%;">
					<em><strong>error: </strong>Anything error you can download
						here <a
						href="https://drive.google.com/file/d/1CizE-ZahGikKp6f4bSTJRgv0Y6bT9iYR/preview">with
							this link.</a></em>
				</p>
			</div>

			<%
			}
			%>

		</div>


		<!-- cm content page  -->


		<div class="cm-total-content">



			<div class="cmcontent">

				<div id="birth">

					<h2>
						<strong>Birth:</strong>
					</h2>
					<p>Thalapathy was born on March 1, 1953 as the third son of
						artist M. Karunanidhi-Dayalu. as M.K. is fondly called by
						everyone. Stalin. Stalin in honor of the Russian President Joseph
						Stalin As He was named after his father artist Mu Karunanidhi.
						Born with Thalapathy, Muthu, Alagiri, Selvi, Tamil Nadu and
						Kanimozhi.</p>
				</div>


				<div id="educatiion">
					<h2>
						<strong>Education</strong>
					</h2>
					<p>Stalin studied at the Madras Christian College Higher
						Secondary School. He completed a pre-university course at
						Vivekananda College, and obtained a history degree from Presidency
						College, Chennai of University of Madras in 1973. Stalin was
						conferred an Honorary Doctorate by Anna University on August 1,
						2009</p>
				</div>


				<div id="family">
					<h2>
						<strong>Family:</strong>
					</h2>
					<p>Stalin married Durga (alias Shantha) on August 20, 1975, and
						has two children. His son is Udhayanidhi Stalin, an actor and
						politician. Udhayanidhi is married to Kiruthiga Udhayanidhi, an
						Indian Tamil film director. His daughter is Senthamarai
						Sabareesan, an entrepreneur and educationist. She is the director
						of Sunshine Schools, Chennai.[11] Senthamarai is married to
						Sabareesan Vedamurthy, an entrepreneur and political
						strategist.[12] Like his father, Stalin has also publicly
						disclosed that he is an atheist. But he also said that he is not
						against any religious beliefs</p>
				</div>

				<div id="movie">

					<h2>Past work experience:</h2>
					<p>In some films and television, Thalapathy Stalin emphasized
						his social welfare ideas He has also acted in serials. One
						Blood(1988), If People Say (1988), Kurinji Malar(Serial) are He
						has acted as the protagonist in the works.</p>
				</div>

				<div id="politics">
					<h2>Politics</h2>
					<p>Ilajanarani was formally started in 1980 at Sansirani Park
						in Madurai in 1982. An organizing committee of 7 members was
						formed at the 2nd annual event in Trichy. That system</p>
					<p>Commander M.K.Stalin was appointed as an organizer in the
						group.</p>
					<p></p>
					In 2003 DMK general meeting, Stalin was announced as Deputy General
					Secretary. In 2008, he was elected as the treasurer of DMK.
					</p>


				</div>

				<div id="income">
					<h2>Income</h2>

					<div class="assets">

						<table>

							<tr>
								<td>Year</td>
								<td>₹24.60 Lakh</td>
							</tr>
							<tr>
								<td>Monthly</td>
								<td>₹2.05 Lakh</td>
							</tr>
							<tr>
								<td>Weekly</td>
								<td>₹51 Lakh</td>
							</tr>
							<tr>
								<td>Day</td>
								<td>Rs. 6k</td>
							</tr>

						</table>

					</div>


					<div class="assets1">
						<p>Total assets ₹8.89 CRORE</p>

						<div class="assetscm">
							<p>Assets ₹8.89 CRORE</p>
							<p>Loans ₹ N/A</p>
						</div>

					</div>


				</div>



			</div>

		</div>

		<h1 class="cmd">Commend Section</h1>
		<ul id="comments-list"></ul>
		<form id="comment-form">
			<label for="comment">command:</label>
			<textarea id="comment" required name="comment"></textarea>
			<br>
			<p id="information">Login and then try comment Thank you</p>

			<input type="submit" id="submit_btn" value="Submit">
		</form>

		<%
		} else {
			
		}
		%>
			<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
			
			<script src="<%=request.getContextPath()%>/assets/js/trsnslate.js"></script>
</body>

</html>