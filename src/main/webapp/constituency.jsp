<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>constituency</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>mla list</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="../../assets/css/footer.css">


<link href="<%=request.getContextPath()%>/assets/css/footer.css"
	rel="stylesheet">
	<link href="<%=request.getContextPath()%>/assets/css/main.css"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<style>
.table {
	width: 100%;
	border-collapse: collapse;
	font-family: Arial, sans-serif;
}

.table thead {
	background-color: #f2f2f2;
}

.table th, .table td {
	text-align: center;
	padding: 12px;
}

.table th {
	font-weight: bold;
}

.table tbody tr:nth-child(even) {
	background-color: #f9f9f9;
}

.table tbody tr:hover {
	background-color: #f5f5f5;
}

.table tbody td:first-child {
	font-weight: bold;
}

.piecharts #myChart1, .piecharts #myChart {
	max-width: 600px;
	max-height: 600px;
	margin: 0 auto;
}

.piecharts {
	display: flex;
	flex-direction: row;
	justify-content: space-around;
	align-items: center;
}

.full-width-row {
	text-align: center;
}
</style>
</head>

<body>

<jsp:include page="${request.getContextPath()}/homeNavBar.jsp"></jsp:include>
	<div class="piecharts">
		<canvas id="myChart1"></canvas>
		<canvas id="myChart"></canvas>

	</div>



	<table id="myTable" class="table">
		<thead>
			<tr class="full-width-row">
				<th colspan="4">states</th>
				<th id="stateHeader" colspan="3">State</th>
			</tr>
			<tr class="full-width-row">
				<th colspan="4">District</th>
				<th colspan="3" id="districtHeader">District</th>
			</tr>
			<tr class="full-width-row">
				<th colspan="4">Constituency Name</th>
				<th colspan="3" id="constituencyHeader">Alandur</th>
			</tr>
			<tr>
				<th>Candidate Name</th>
				<th>Party</th>
				<th>EVM votes</th>
				<th>Postal Votes</th>
				<th>Candidate Total Votes</th>
				<th>Candidate Vote %</th>
				<th>Total Polled Votes</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>


<jsp:include page="${request.getContextPath()}/footer.jsp"></jsp:include>


	<script>
	
	
	async function fetchData() {
		  try {
		    // Define the URL of the JSON resource
		    const apiUrl = 'https://raw.githubusercontent.com/balajis5531/map/main/map_points.json';

		    // Make a Fetch API request to fetch the JSON data
		    const response = await fetch(apiUrl);

		    if (!response.ok) {

		      throw new Error('Network response was not ok');
		    }

		    // Parse the response body as JSON
		    const data = await response.json();

		    // Handle the JSON data here
		    let jsonData = data;
		    
		    const url = new URL(window.location.href);
		    const username = url.searchParams.get("name");
		    console.log(username);

		    const matchingData = jsonData.filter((data) => data.constituency_number === username);

		    // Get the table body
		    const tbody = document.querySelector("#myTable tbody");

		    // Update the district and constituency headers
		    const districtHeader = document.getElementById("districtHeader");
		    const constituencyHeader = document.getElementById("constituencyHeader");
		    const stateHeader = document.getElementById("stateHeader");

		    districtHeader.textContent = matchingData[0].district;
		    constituencyHeader.textContent = matchingData[0].constituency;
		    stateHeader.textContent = matchingData[0].state;

		    // Iterate over the matching JSON data and create table rows for each entry
		    matchingData.forEach((data) => {
		      const candidateRow = document.createElement("tr");

		      // Iterate over the properties of the current JSON data and create table cells
		      for (const key in data) {
		        if (
		          key !== "district" &&
		          key !== "constituency" &&
		          key !== "state" &&
		          key !== "district_number" &&
		          key !== "constituency_number" &&
		          key !== "male_votes" &&
		          key !== "female_votes" &&
		          key !== "thirunangai_votes"

		        ) {
		          const cell = document.createElement("td");
		          cell.textContent = data[key];
		          candidateRow.appendChild(cell);
		        }
		      }

		      tbody.appendChild(candidateRow);
		    });

		    const pieChartData = [];

		    // Iterate over the matching JSON data and extract the required values
		    matchingData.forEach((data) => {
		      const value = data.party; // Replace `some_property` with the property you want to compare in the pie chart
		      pieChartData.push(value);
		    });

		    // Create an array of objects containing vote count and party name
		    const chartData1 = matchingData.map((data) => ({
		      party: data.party,
		      count: data.candidate_total_votes,
		    }));

		    // Generate random colors for chart slices
		    const colors1 = generateRandomColors(chartData1.length);

		    // Create pie chart
		    const ctx1 = document.getElementById("myChart1").getContext("2d");
		    new Chart(ctx1, {
		      type: "pie",
		      data: {
		        labels: chartData1.map((data) => data.party),
		        datasets: [
		          {
		            data: chartData1.map((data) => data.count),
		            backgroundColor: colors1,
		            hoverBackgroundColor: colors1,
		          },
		        ],
		      },
		      options: {
		        plugins: {
		          legend: {
		            position: "left", // Adjust the position to your preference (e.g., "left", "top", "bottom")
		            align: "start", // Align the legend text to the start of the line
		          },
		        },
		      },
		    });

		    // Function to generate random colors
		    function generateRandomColors(numColors) {
		      const colors = [];
		      for (let i = 0; i < numColors; i++) {
		        const color = "#" + Math.floor(Math.random() * 16777215).toString(16);
		        colors.push(color);
		      }
		      return colors;
		    }

		    const maleVotes = parseInt(matchingData[0].male_votes);
		    const femaleVotes = parseInt(matchingData[0].female_votes);
		    const thirdGenderVotes = parseInt(matchingData[0].thirunangai_votes);

		    // Create an array of objects containing the vote counts and labels
		    const chartData = [
		      { label: "Male Votes", count: maleVotes },
		      { label: "Female Votes", count: femaleVotes },
		      { label: "Third Gender Votes", count: thirdGenderVotes },
		    ];

		    // Generate random colors for chart slices
		    const colors = generateRandomColors(chartData.length);

		    // Create pie chart
		    const ctx = document.getElementById("myChart").getContext("2d");
		    new Chart(ctx, {
		      type: "pie",
		      data: {
		        labels: chartData.map((data) => data.label),
		        datasets: [
		          {
		            data: chartData.map((data) => data.count),
		            backgroundColor: colors,
		            hoverBackgroundColor: colors,
		          },
		        ],
		      },
		      options: {
		        plugins: {
		          legend: {
		            position: "left", // Adjust the position to your preference (e.g., "left", "top", "bottom")
		            align: "start", // Align the legend text to the start of the line
		          },
		        },
		      },
		    });

		    // Function to generate random colors
		    function generateRandomColors(numColors) {
		      const colors = [];
		      for (let i = 0; i < numColors; i++) {
		        const color = "#" + Math.floor(Math.random() * 16777215).toString(16);
		        colors.push(color);
		      }
		      return colors;
		    }

		    // You can continue with further code here that depends on the JSON data
		  } catch (error) {
		    console.error('There was a problem with the fetch operation:', error);
		  }
		}

		// Call the async function to fetch and handle the JSON data
		fetchData();
		
		
		
  </script>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>