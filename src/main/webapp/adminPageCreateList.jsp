<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.fssa.politifact.model.Party"%>
<%@ page import="com.fssa.politifact.model.Constituency"%>
<%@ page import="com.fssa.politifact.model.Leader"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Leader Form</title>

<link href="<%=request.getContextPath()%>/assets/css/createLeader.css"
	rel="stylesheet">
</head>
<body>


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
									</a> <a href="#" class="btn d-inline-flex btn-sm btn-primary mx-1">
										<span class=" pe-2"> <i class="bi bi-plus"></i>
									</span> <span>Create</span>
									</a>
								</div>
							</div>
						</div>
						<!-- Nav -->
						<ul class="nav nav-tabs mt-4 overflow-x border-0">
							<li class="nav-item "><a href="politicin_create.html"
								class="nav-link active">Mp create Page</a></li>
						</ul>
					</div>
				</div>
			</header>



			<main class="py-6 bg-surface-secondary">
				<div class="container-fluid">

					<div class="card shadow border-0 mb-7">

						<div class="table-responsive" id="table_content">
							<table class="table table-hover table-nowrap">
								<thead class="thead-light">
									<tr>
										<th scope="col">No</th>
										<th scope="col">Leader Name</th>
										<th scope="col">Position</th>
										<th scope="col">Party Name</th>
										<th scope="col">Actions</th>
									</tr>
								</thead>
								<tbody>
									<%
									List<Leader> minister_value = (List<Leader>) request.getAttribute("LeaderList");
									for (int i = 0; i < minister_value.size(); i++) {
										Leader leader = minister_value.get(i);
									%>
									<tr>
										<td><%=i+1%></td>
										<td><%=leader.getName()%></td>
										<td><%=leader.getPosition()%></td>
										<td><%=leader.getPartyName()%></td>
										<td><a href="#" class="update-link"
											data-id="<%=leader.getId()%>"
											data-name="<%=leader.getName()%>"
											data-position="<%=leader.getPosition()%>"
											data-experience="<%=leader.getExperience()%>"
											data-occupation="<%=leader.getOccupation()%>"
											data-constituencyName="<%=leader.getCounstuencyName()%>"
											data-party="<%=leader.getPartyName()%>"
											data-birth="<%=leader.getDescriptionOfBirth()%>"
											data-education="<%=leader.getDescriptionOfEducation()%>"
											data-workexperience="<%=leader.getDescriptionOfPastWorkExperience()%>"
											data-politics="<%=leader.getDescritionOfpolitics()%>"
											data-family="<%=leader.getDescriptionOffamily()%>"
											data-income="<%=leader.getDescriptionOfIncome()%>"
											data-url="<%=leader.getImageUrl()%>"> <i
												class="fa fa-edit"></i> Update
												
										</a> 
										
										<form method="post" action="DeleteLeader?id=<%=leader.getId()%>"
											class="text-danger"> <i class="fa fa-trash"></i>
										<button type="submit">Delete</button>
										</form>
										
										</td>


									</tr>
									<%
									}
									%>
								</tbody>
							</table>
						</div>


						<div class="container" id="container" style="display: none;">
							<div class="close-what" id="closeBtn" onclick="toggleForm()">&times;</div>
							<form id="leader-form" action="UpdateLeader" method="post">
								<h3>Insert Leader Data</h3>
								<div class="maindiv">
									<div class="left">
										<label for="name">Name</label> <input type="text" id="name"
											name="name" required> <label for="id" style="display: none">Id</label> <input
											type="number" id="id" name="id"  style="display: none"> <label
											for="position">Position</label> <select id="position"
											name="position" required>
											<option value="">Enter your Position</option>
											<option value="MEMBER_OF_LEGISLATIVE_ASSEMBLY">Minister</option>
										</select> <select id="partyName" name="partyName" required>
											<option value="">Select a Party</option>
											<%
											List<Party> partyNames = (List<Party>) request.getAttribute("partyNames");

											for (int i = 0; i < partyNames.size(); i++) {
												Party party = partyNames.get(i);
											%>
											<option value="<%=party.getPartyName()%>"><%=party.getPartyName()%></option>
											<%
											}
											%>
										</select>

										<div>
											<label for="birth_radio">Birth</label> <input type="radio"
												name="desc_radio" id="birth_radio" value="birth"
												onclick="showDescription()">

											<textarea name="descriptionOfBirth" id="description3"
												cols="90" rows="3" style="display: none;" required></textarea>
										</div>
										<div>
											<label for="education_radio">Education</label> <input
												type="radio" name="desc_radio" id="education_radio"
												value="education" onclick="showDescription()">
											<textarea name="descriptionOfEducation" id="description4"
												cols="90" rows="3" style="display: none;"></textarea>
										</div>

										<div>
											<label for="family_radio">past work experience</label> <input
												type="radio" name="desc_radio" id="family_radio"
												value="family" onclick="showDescription()">
											<textarea name="descriptionOfPastWorkExperience"
												id="description5" cols="90" rows="3" style="display: none;"></textarea>
										</div>
									</div>
									<div class="right">
										<label for="experience">Experience</label> <input
											type="number" id="experience" name="experience" required>
										<label for="occupation">Occupation</label> <input type="text"
											id="occupation" name="occupation" required> <select
											id="counstuencyName" name="counstuencyName" required>
											<option value="">Select a constituency</option>
											<%
											List<Constituency> constituency = (List<Constituency>) request.getAttribute("constituencyList");

											for (int i = 0; i < constituency.size(); i++) {

												Constituency constituency1 = constituency.get(i);
											%>
											<option value="<%=constituency1.getConstituencyName()%>"><%=constituency1.getConstituencyName()%></option>
											<%
											}
											%>
										</select> <label for="image_url">image Url</label> <input type="text"
											id="imageUrl" name="image_url" required>


										<div>
											<label for="movie_radio" id="movie">politics</label> <input
												type="radio" name="desc_radio" id="movie_radio"
												value="movie" onclick="showDescription()">
											<textarea name="descritionOfpolitics" id="description"
												cols="90" rows="3" style="display: none;" required
												pattern="[\u0B80-\u0BFF]+"></textarea>
										</div>

										<div>
											<label for="politics_radio">family</label> <input
												type="radio" name="desc_radio" id="politics_radio"
												value="politics" onclick="showDescription()">
											<div>
												<textarea name="descriptionOffamily" id="description1"
													cols="90" rows="3" style="display: none;" required
													pattern="[\u0B80-\u0BFF]+"></textarea>
											</div>

										</div>

										<div>
											<label for="income_radio">Income</label> <input type="radio"
												name="desc_radio" id="income_radio" value="income"
												onclick="showDescription()">
											<textarea name="descriptionOfIncome" id="description2"
												cols="90" rows="3" style="display: none;" required
												pattern="[\u0B80-\u0BFF]+"></textarea>
										</div>


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

	<script>
	
	function toggleForm() {
	    if (container.style.display === "none") {
	        container.style.display = "block";
	    } else {
	        container.style.display = "none";
	    }
	}
    const leaderForm = document.getElementById("leader-form");
    const container = document.getElementById("container");

    function showForm() {
        container.style.display = "block";
    }

    function hideForm() {
        container.style.display = "none";
    }

    function populateFormFields(leaderData) {
        // Populate form fields based on leaderData
         document.getElementById("id").value = leaderData.id;
        
        document.getElementById("name").value = leaderData.name;
        document.getElementById("position").value = leaderData.position;
        document.getElementById("partyName").value = leaderData.partyName;
        document.getElementById("description3").value = leaderData.birth;
        document.getElementById("description4").value = leaderData.education;
        document.getElementById("description5").value = leaderData.workExperience;
        document.getElementById("experience").value = leaderData.experience;
        document.getElementById("occupation").value = leaderData.occupation;
        document.getElementById("counstuencyName").value = leaderData.constituencyName;
        document.getElementById("imageUrl").value = leaderData.imageUrl;
        document.getElementById("description").value = leaderData.politics;
        document.getElementById("description1").value = leaderData.family;
        document.getElementById("description2").value = leaderData.income;
        
    }

    const updateLinks = document.querySelectorAll(".update-link");
    updateLinks.forEach(link => {
        link.addEventListener("click", () => {
            showForm();
            const leaderData = {
            		"id": link.getAttribute("data-id"),
                name: link.getAttribute("data-name"),
                position: link.getAttribute("data-position"),
                partyName: link.getAttribute("data-party"),
                experience: link.getAttribute("data-experience"),
                occupation: link.getAttribute("data-occupation"),
                constituencyName: link.getAttribute("data-constituencyName"),
                birth: link.getAttribute("data-birth"),
                education: link.getAttribute("data-education"),
                workExperience: link.getAttribute("data-workexperience"),
                politics: link.getAttribute("data-politics"),
                family: link.getAttribute("data-family"),
                income: link.getAttribute("data-income"),
                imageUrl: link.getAttribute("data-url"),
                
            };
            populateFormFields(leaderData);
        });
    });
</script>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
