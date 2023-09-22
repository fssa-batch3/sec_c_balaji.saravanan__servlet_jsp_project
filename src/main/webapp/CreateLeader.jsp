<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.fssa.politifact.model.Party"%>
<%@ page import="com.fssa.politifact.model.Constituency"%>
<%@ page import="com.fssa.politifact.model.Leader"%>
<%@ page import="com.fssa.politifact.model.Election"%>
<%@ page import="com.fssa.politifact.model.Affidavit"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Leader Form</title>

<link href="<%=request.getContextPath()%>/assets/css/createLeader.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.css">
</head>
<body>



	<%
	String status = (String) request.getAttribute("status");

	String erMessage = (String) request.getAttribute("errorMessage");
	%>

	<div
		class="d-flex flex-column flex-lg-row h-lg-full bg-surface-secondary"
		id="nave_side">
		<!-- Vertical Navbar -->

		<jsp:include page="NavBar.jsp"></jsp:include>

		<!-- Main content -->
		<div class="h-screen flex-grow-1 overflow-y-lg-auto">

			<!-- Header -->
			<header class="bg-surface-primary border-bottom pt-6">
				<div class="container-fluid">
					<div class="mb-npx">
						<div class="row align-items-center">
							<div class="col-sm-6 col-12 mb-4 mb-sm-0">
								<!-- Title -->
								<h1 class="h2 mb-0 ls-tight">Application</h1>
							</div>
							<!-- Actions -->
							<div class="col-sm-6 col-12 text-sm-end">
								<div class="mx-n1">
									<a href="#"
										class="btn d-inline-flex btn-sm btn-neutral border-base mx-1">
										<span class=" pe-2"> <i class="bi bi-pencil"></i>
									</span> <span>Edit</span>
									</a> <a href="CreateLeader"
										class="btn d-inline-flex btn-sm btn-primary mx-1"> <span
										class=" pe-2"> <i class="bi bi-plus"></i>
									</span> <span>Create</span>
									</a>
								</div>
							</div>
						</div>
						<!-- Nav -->
						<ul class="nav nav-tabs mt-4 overflow-x border-0">
							<li class="nav-item"><a href="#" class="nav-link active"
								onclick="showForm('container')">Leader create Page</a></li>
							<li class="nav-item"><a href="#" class="nav-link active"
								onclick="showForm('container1')">Affidavit create</a></li>
							<li class="nav-item"><a href="#" class="nav-link active"
								onclick="showForm('container2')">Constituency create</a></li>
							<li class="nav-item"><a href="#" class="nav-link active"
								onclick="showForm('container3')">Party create</a></li>
						</ul>
					</div>
				</div>
			</header>



			<main class="py-6 bg-surface-secondary">
				<div class="container-fluid">

					<div class="card shadow border-0 mb-7">

						<div class="container" id="container">
							<form id="leader-form" action="CreateLeader" method="post">
								<h3>Insert Leader Data</h3>
								<div class="maindiv">
									<div class="left">
										<label for="name">Name</label> <input type="text" id="name"
											name="name" required
											value="<c:if test='${not empty requestScope.name}'>${requestScope.name}</c:if>" pattern="[a-zA-Z ]{2,}">
										<label for="position">Position</label> 
										
										<select id="position"
											name="position" required value="<c:if test='${not empty requestScope.position}'>${requestScope.position}</c:if>">
											<option value="">Enter your Position</option>
											<option value="MEMBER_OF_LEGISLATIVE_ASSEMBLY">Minister</option>
											<option value="COUNCIL_MINISTER">Council of Minister</option>
										</select>
										
										 <label for="partyDetail">Party</label> <select id="partyName"
											name="partyDetail" required value="<c:if test='${not empty requestScope.partyDetail}'>${requestScope.partyDetail}</c:if>">
											<option value="">Select a Party</option>
											<%
											List<Party> partyNames = (List<Party>) request.getAttribute("partyName");

											if (partyNames != null) {

												for (int i = 0; i < partyNames.size(); i++) {

													Party party = partyNames.get(i);
											%>
											<option value="<%=party.getPartyName()%>"><%=party.getPartyName()%></option>
											<%
											}
											}
											%>
										</select>
										

										<div>
											<label for="birth_radio">Birth</label> <input type="radio"
												name="desc_radio" id="birth_radio" value="birth"
												onclick="showDescription()" >

											<textarea name="descriptionOfBirth" id="description3"
												cols="90" rows="3" style="display: none;" required value="<c:if test='${not empty requestScope.descriptionOfBirth}'>${requestScope.descriptionOfBirth}</c:if>"></textarea>
										</div>
										<div>
											<label for="education_radio">Education</label> <input
												type="radio" name="desc_radio" id="education_radio"
												value="education" onclick="showDescription()">
											<textarea name="descriptionOfEducation" id="description4"
												cols="90" rows="3" style="display: none;" value="<c:if test='${not empty requestScope.descriptionOfEducation}'>${requestScope.descriptionOfEducation}</c:if>"></textarea>
										</div>

										<div>
											<label for="family_radio">past work experience</label> <input
												type="radio" name="desc_radio" id="family_radio"
												value="family" onclick="showDescription()">
											<textarea name="descriptionOfPastWorkExperience"
												id="description5" cols="90" rows="3" style="display: none;" value="<c:if test='${not empty requestScope.descriptionOfPastWorkExperience}'>${requestScope.descriptionOfPastWorkExperience}</c:if>"></textarea>
										</div>
									</div>
									<div class="right">
										<label for="experience">Experience</label> <input
											type="number" id="experience" name="experience" required value="<c:if test='${not empty requestScope.experience}'>${requestScope.experience}</c:if>">
										<label for="occupation">Occupation</label> <input type="text"
											id="occupation" name="occupation" required value="<c:if test='${not empty requestScope.occupation}'>${requestScope.occupation}</c:if>"pattern="[a-zA-Z ]{2,}"> 
											
											<select
											id="counstuencyName" name="counstuencyName" required selected="<c:if test='${not empty requestScope.counstuencyName}'>${requestScope.counstuencyName}</c:if>">
											<option value="">Select a constituency</option>
											<%
											List<Constituency> constituency = (List<Constituency>) request.getAttribute("constituencyList");

											if (constituency != null) {

												for (int i = 0; i < constituency.size(); i++) {

													Constituency constituency1 = constituency.get(i);
											%>
											<option value="<%=constituency1.getConstituencyName()%>"><%=constituency1.getConstituencyName()%></option>
											<%
											}
											}
											%>

										</select> <label for="image_url">image Url</label> <input type="text"
											id="imageUrl" name="image_url" required value="<c:if test='${not empty requestScope.image_url}'>${requestScope.image_url}</c:if>">


										<div>
											<label for="movie_radio" id="movie">politics</label> <input
												type="radio" name="desc_radio" id="movie_radio"
												value="movie" onclick="showDescription()">
											<textarea name="descritionOfpolitics" id="description"
												cols="90" rows="3" style="display: none;" required
												pattern="[\u0B80-\u0BFF]+" value="<c:if test='${not empty requestScope.descritionOfpolitics}'>${requestScope.descritionOfpolitics}</c:if>"></textarea>
										</div>

										<div>
											<label for="politics_radio">family</label> <input
												type="radio" name="desc_radio" id="politics_radio"
												value="politics" onclick="showDescription()">
											<div>
												<textarea name="descriptionOffamily" id="description1"
													cols="90" rows="3" style="display: none;" required
													pattern="[\u0B80-\u0BFF]+" value="<c:if test='${not empty requestScope.descriptionOffamily}'>${requestScope.descriptionOffamily}</c:if>"></textarea>
											</div>

										</div>

										<div>
											<label for="income_radio">Income</label> <input type="radio"
												name="desc_radio" id="income_radio" value="income"
												onclick="showDescription()">
											<textarea name="descriptionOfIncome" id="description2"
												cols="90" rows="3" style="display: none;" required
												pattern="[\u0B80-\u0BFF]+" value="<c:if test='${not empty requestScope.descriptionOfIncome}'>${requestScope.descriptionOfIncome}</c:if>"></textarea>
										</div>


									</div>
								</div>
								<button type="submit" id="submit_button">Submit</button>
							</form>
						</div>






						<div class="container" id="container1" style="display: none">

							<form id="Affidavit_form" action="CreateAffidavit" method="post">
								<h3>Insert Affidavit data</h3>
								<div class="maindiv">
									<div class="left">

										</select> <label for="leaderDetail">Leader Id</label> <select
											id="leaderDetail" name="leaderDetail" required>
											<option value="leaderDetail">Select a Party</option>
											<%
											List<Leader> leaderList = (List<Leader>) request.getAttribute("LeaderList");

											if (leaderList != null) {

												for (int i = 0; i < leaderList.size(); i++) {

													Leader leader = leaderList.get(i);
											%>
											<option value="<%=leader.getId()%>"><%=leader.getName()%></option>
											<%
											}
											}
											%>
										</select>


									</div>
									<div class="right">
										<select id="election" name="election" required>
											<option value="election">Election type</option>
											<%
											List<Election> elecetionList = (List<Election>) request.getAttribute("electionList");

											if (elecetionList != null) {

												for (int i = 0; i < elecetionList.size(); i++) {

													Election electionList1 = elecetionList.get(i);
											%>
											<option value="<%=electionList1.getId()%>"><%=electionList1.getElectionType()%>
												<%=electionList1.getElectionYear()%></option>
											<%
											}
											}
											%>
										</select> <label for="affidavit_url">Affidavit url</label> <input
											type="text" id="affidavit_url" name="affidavit_url" required value="<c:if test='${not empty requestScope.affiurl}'>${requestScope.affiurl}</c:if>" >


									</div>
								</div>
								<button type="submit" id="submit_button">Submit</button>
							</form>
						</div>








						<div class="container" id="container2" style="display: none">

							<form id="Constituenct-form" action="CreateConstituency"
								method="post">
								<h3>Insert Constituency Data</h3>
								<div class="maindiv">
									<div class="left">

										<label for="constituencyName">Constituency Name</label> <input
											type="text" id="constituencyName" name="constituencyName"
											required value="<c:if test='${not empty requestScope.constituencyName}'>${requestScope.constituencyName}</c:if>"> 
											
											
											<label for="districtName">District
											Name</label> <input type="text" id="districtName" name="districtName"
											required value="<c:if test='${not empty requestScope.districtName}'>${requestScope.districtName}</c:if>">


									</div>
									<div class="right">

										<label for="constituencyNumber">Constituency Number</label> <input
											type="number" id="constituencyNumber"
											name="constituencyNumber" required> <select
											id="election1" name="election1" required>
											<option value="election">Election type</option>
											<%
											List<Election> elecetionList_c = (List<Election>) request.getAttribute("electionList");

											if (elecetionList_c != null) {

												for (int i = 0; i < elecetionList_c.size(); i++) {

													Election electionList2 = elecetionList.get(i);
											%>
											<option value="<%=electionList2.getId()%>"><%=electionList2.getElectionType()%>
												<%=electionList2.getElectionYear()%></option>
											<%
											}
											}
											%>
										</select>

									</div>
								</div>
								<button type="submit" id="submit_button">Submit</button>
							</form>
						</div>











						<div class="container" id="container3" style="display: none">

							<form id="Party-form" action="CreateParty" method="post">
								<h3>Insert Party Data</h3>
								<div class="maindiv">
									<div class="left">

										<label for="partyName">Party Name</label> <input type="text"
											id="partyName" name="partyName" pattern="[a-zA-Z ]{2,}" required value="<c:if test='${not empty requestScope.partyName5}'>${requestScope.partyName5}</c:if>">


									</div>
									<div class="right">

										<label for="party_image">Party Image URL</label> <input
											type="text" id="party_image" name="party_image" required value="<c:if test='${not empty requestScope.party_image5}'>${requestScope.party_image5}</c:if>">


									</div>
								</div>
								<button type="submit" id="submit_button">Submit</button>
							</form>
						</div>



					</div>
				</div>
			</main>

		</div>
	</div>







	<script>
		function showDescription() {
			
			const radios = document.getElementsByName("desc_radio");
			const descriptions = document
					.querySelectorAll("textarea[id^='description']");

			for (let i = 0; i < radios.length; i++) {
				if (radios[i].checked) {
					const description = descriptions[i];
					description.style.display = "block";
					description.placeholder = `Please insert your ${radios[i].value} information`;
				}

			}
		}
		
	</script>

	<script
		src="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.js">
		
	</script>


	<script>
	
        const status = "<%=status%>";
        
		const error= " <%=erMessage%>";

		if (status === "true") {

			Notify.success("Add successfully");

		} else {

			Notify.error(error);
		}
	</script>


	<script>
  function showForm(formId) {
 
    const containers = document.querySelectorAll('.container');
    containers.forEach(container => {
      container.style.display = 'none';
    });


    document.getElementById(formId).style.display = 'flex';
  }
</script>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>



</body>
</html>
