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
<html>
<head>
<meta charset="UTF-8">
<title>Leader Form</title>

<link href="<%=request.getContextPath()%>/assets/css/createLeader.css"
	rel="stylesheet">

<style>
#container3, #container, #container2, #container1 {
	display: none;
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: rgba(0, 0, 0, 0.5);
	z-index: 1000;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
	width: 100^     
	height: 100vh;
}

#closeBtn {
	position: absolute;
	top: 10px;
	right: 10px;
	color: red;
	font-size: 40px;
	font-weight: 600;
	cursor: pointer;
}
</style>
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
							<li class="nav-item"><a href="#" class="nav-link active"
								onclick="showTable('table_content')">Leader list</a></li>
							<li class="nav-item"><a href="#" class="nav-link active"
								onclick="showTable('table_content3')">Affidavit list</a></li>
							<li class="nav-item"><a href="#" class="nav-link active"
								onclick="showTable('table_content2')">Constituency list</a></li>
							<li class="nav-item"><a href="#" class="nav-link active"
								onclick="showTable('table_content1')">Party list</a></li>
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

									if (minister_value != null) {

										for (int i = 0; i < minister_value.size(); i++) {
											Leader leader = minister_value.get(i);
									%>
									<tr>
										<td><%=i + 1%></td>
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

											<form action="DeleteLeader?id=<%=leader.getId()%>"
												method="post" class="text-danger">
												<i class="fa fa-trash"></i>
												<button type="submit">Delete</button>
											</form></td>


									</tr>
									<%
									}
									}
									%>
								</tbody>
							</table>
						</div>



						<div class="table-responsive" id="table_content1"
							style="display: none">
							<table class="table table-hover table-nowrap">
								<thead class="thead-light">
									<tr>
										<th scope="col">No</th>
										<th scope="col">PartyName Name</th>
										<th scope="col">Actions</th>

									</tr>
								</thead>
								<tbody>
									<%
									List<Party> partyList = (List<Party>) request.getAttribute("partyNames");
									if (partyList != null) {
										for (int i = 0; i < partyList.size(); i++) {
											Party party = partyList.get(i);
									%>
									<tr>
										<td><%=i + 1%></td>
										<td><%=party.getPartyName()%></td>
										<td><a href="#" class="updateParty"
											data-partyId="<%=party.getPartyId()%>"
											data-partyName="<%=party.getPartyName()%>"
											data-partyurl="<%=party.getPartyImageUrl()%>"> <i
												class="fa fa-edit"></i> Update

										</a></td>
									</tr>
									<%
									}
									}
									%>
								</tbody>
							</table>
						</div>




						<div class="table-responsive" id="table_content2"
							style="display: none">
							<table class="table table-hover table-nowrap">
								<thead class="thead-light">
									<tr>
										<th scope="col">No</th>
										<th scope="col">Constituency Name</th>
										<th scope="col">District Name</th>
										<th scope="col">Constituency Number</th>
										<th scope="col">Actions</th>
									</tr>
								</thead>
								<tbody>
									<%
									List<Constituency> ConstituencyList = (List<Constituency>) request.getAttribute("constituencyList");
									if (ConstituencyList != null) {
										for (int i = 0; i < ConstituencyList.size(); i++) {
											Constituency constituency = ConstituencyList.get(i);
									%>
									<tr>
										<td><%=i + 1%></td>
										<td><%=constituency.getConstituencyName()%></td>
										<td><%=constituency.getDistrictName()%></td>
										<td><%=constituency.getConstituencyNumber()%></td>
										<td><a href="#" class="updateConstituency"
											data-consid="<%=constituency.getConstituencyID()%>"
											data-consname="<%=constituency.getDistrictName()%>"
											data-district="<%=constituency.getDistrictName()%>"
											data-consNo="<%=constituency.getConstituencyNumber()%>">
												<i class="fa fa-edit"></i> Update

										</a></td>
									</tr>
									<%
									}
									}
									%>
								</tbody>
							</table>
						</div>



						<div class="table-responsive" id="table_content3"
							style="display: none">
							<table class="table table-hover table-nowrap">
								<thead class="thead-light">
									<tr>
										<th scope="col">No</th>
										<th scope="col">Election Id</th>
										<th scope="col">Leader Id</th>
										<th scope="col">Affidavit URL</th>
										<th scope="col">Actions</th>
									</tr>
								</thead>
								<tbody>
									<%
									List<Affidavit> affidavitList = (List<Affidavit>) request.getAttribute("AffidavitList");
									if (affidavitList != null) {
										for (int i = 0; i < affidavitList.size(); i++) {
											Affidavit affidavit = affidavitList.get(i);
									%>
									<tr>
										<td><%=i + 1%></td>
										<td><%=affidavit.getElectionId()%></td>
										<td><%=affidavit.getLeaderId()%></td>
										<td><%=affidavit.getAffidateUrl()%></td>

										<td><a href="#" class="updateAffidavit"
											data-affidavitId="<%=affidavit.getId()%>"
											data-electionId="<%=affidavit.getElectionId()%>"
											data-leaderId="<%=affidavit.getLeaderId()%>"
											data-affidaviturl="<%=affidavit.getAffidateUrl()%>"> <i
												class="fa fa-edit"></i> Update

										</a></td>


									</tr>
									<%
									}
									}
									%>
								</tbody>
							</table>
						</div>


						<div class="container" id="container" style="display: none;">
							<div class="close-what" id="closeBtn"
								onclick="hideForm('container')">&times;</div>
							<form id="leader-form" action="UpdateLeader" method="post">
								<h3>Insert Leader Data</h3>
								<div class="maindiv">
									<div class="left">
										<label for="name">Name</label> <input type="text" id="name"
											name="name" required> <label for="id"
											style="display: none">Id</label> <input type="number" id="id"
											name="id" style="display: none"> <label
											for="position">Position</label> <select id="position"
											name="position" required>
											<option value="">Enter your Position</option>
											<option value="MEMBER_OF_LEGISLATIVE_ASSEMBLY">Minister</option>
										</select> <select id="partyName" name="partyName" required>
											<option value="">Select a Party</option>
											<%
											List<Party> partyNames = (List<Party>) request.getAttribute("partyNames");
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












						<div class="container" id="container1" style="display: none">
							<div class="close-what" id="closeBtn"
								onclick="hideForm('container1')">&times;</div>
							<form id="Affidavit_form" action="UpdateAffidavit" method="post">
								<h3>Insert Affidavit data</h3>
								<div class="maindiv">
									<div class="left">

										<input type="text" id="affidavitId" name="affidavitId"
											required style="display: none"> </select> <label
											for="leaderDetail">Leader Id</label> <select
											id="leaderDetail" name="leaderDetail" required>
											<option value="leaderDetail">Select a Party</option>
											<%
											List<Leader> leaderList = (List<Leader>) request.getAttribute("LeaderList");
											if (leaderList != null) {
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
										</select> <label for="affidavit_url">Affidavit URL</label> <input
											type="text" id="affidavit_url" name="affidavit_url" required>


									</div>
								</div>
								<button type="submit" id="submit_button">Submit</button>
							</form>
						</div>








						<div class="container" id="container2" style="display: none">
							<div class="close-what" id="closeBtn"
								onclick="hideForm('container2')">&times;</div>
							<form id="Constituenct-form" action="CreateConstituency"
								method="post">
								<h3>Insert Constituency Data</h3>
								<div class="maindiv">
									<div class="left">

										<input type="text" id="constituencyId" name="constituencyId"
											required style="display: none"> <label
											for="constituencyName">Constituency Name</label> <input
											type="text" id="constituencyName" name="constituencyName"
											required> <label for="districtName">District
											Name</label> <input type="text" id="districtName" name="districtName"
											required>


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
											}
											%>
										</select>

									</div>
								</div>
								<button type="submit" id="submit_button">Submit</button>
							</form>
						</div>











						<div class="container" id="container3" style="display: none">
							<div class="close-what" id="closeBtn"
								onclick="hideForm('container3')">&times;</div>
							<form id="Party-form" action="CreateParty" method="post">
								<h3>Insert Party Data</h3>
								<div class="maindiv">
									<div class="left">

										<input type="text" id="PartyId" name="PartyId" required
											style="display: none"><label for="partyName">Party
											Name</label> <input type="text" id="partyName" name="partyName"
											required>


									</div>
									<div class="right">

										<label for="party_image">Party Image URL</label> <input
											type="text" id="party_image" name="party_image" required>


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
        	showForm1("container");
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
    
    
    
    
    function assignParty(partyList){
    
    	document.getElementById("partyName").value = partyList.name;
        
        document.getElementById("PartyId").value = partyList.id;
        
        document.getElementById("party_image").value = partyList.partyURL;
        console.log(partyList.partyURL);
    }
    
    const updateParty = document.querySelectorAll(".updateParty");

    updateParty.forEach(party => {
    	
      party.addEventListener("click", () => {
    	  
        showForm1("container3");

        const partyList = {
        		
          id: party.getAttribute("data-partyId"),
          
          name: party.getAttribute("data-partyName"),
          
          partyURL: party.getAttribute("data-partyurl")
        };
      
        assignParty(partyList);
      });
    });
    
    
    
    function assignConstituency(constituencyList) {
    	
        document.getElementById("constituencyId").value = constituencyList.id;
        
        document.getElementById("constituencyName").value = constituencyList.name;
        
        document.getElementById("districtName").value = constituencyList.disName;
        
        document.getElementById("constituencyNumber").value = constituencyList.consNo;
    }

    const updateConstituency = document.querySelectorAll(".updateConstituency");

    updateConstituency.forEach(constituency => {
    	
        constituency.addEventListener("click", () => {
        	
            showForm1("container2");

            const constituencyList = {
                id: constituency.getAttribute("data-consid"),
                
                name: constituency.getAttribute("data-consname"),
                
                disName: constituency.getAttribute("data-district"),
                
                consNo: constituency.getAttribute("data-consNo")
            };

            assignConstituency(constituencyList);
        });
    });

    
    
    function assignParty(affidavit) {
        
        const affidavitIdInput = document.getElementById("affidavitId");
        const leaderDetailSelect = document.getElementById("leaderDetail");
        const electionSelect = document.getElementById("election");
        const affidavitUrlInput = document.getElementById("affidavit_url");

       
        affidavitIdInput.value = affidavit.affiavitid;
        leaderDetailSelect.value = affidavit.leaderId;
        electionSelect.value = affidavit.electionId;
        affidavitUrlInput.value = affidavit.affidavitUrl;
    }
    
    const updateAffidavit = document.querySelectorAll(".updateAffidavit")

    updateAffidavit.forEach(affidavit => {
    	
      affidavit.addEventListener("click", () => {
    	  
        showForm1("container1");

        const affidavitList = {
        		affiavitid: affidavit.getAttribute("data-affidavitId"),
                
                leaderId: affidavit.getAttribute("data-leaderId"),
                
                electionId: affidavit.getAttribute("data-electionId"),
                
                affidavitUrl: affidavit.getAttribute("data-affidaviturl")
        
        };
      
        assignParty(affidavitList);
        
      });
      
    });


  function showForm1(formId) {
 
    const containers = document.querySelectorAll('.container');
    
    containers.forEach(container => {
    	
      container.style.display = 'none';
    });


    document.getElementById(formId).style.display = 'flex';
    
  }
  
  function hideForm(formId) {
	  
	    const containers = document.querySelectorAll('.container');
	    
	    containers.forEach(container => {
	    	
	      container.style.display = 'none';
	    });


	    document.getElementById(formId).style.display = 'none';
	    
	  }
  
  function showTable(formId) {
	  
	    const containers = document.querySelectorAll('.table-responsive');
	    
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
