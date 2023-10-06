<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>pastleader</title>
<link href="<%=request.getContextPath()%>/assets/css/footer.css"
	rel="stylesheet">
	<link href="<%=request.getContextPath()%>/assets/css/index.css"
	rel="stylesheet">
	
	<link href="<%=request.getContextPath()%>/assets/css/main.css"
	rel="stylesheet">
	
	<style>
	
	 table button {
            background-image: linear-gradient(to right top, #abc2e4, #92cef0, #75dbf0, #67e5e2, #79edc8);
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            padding: 8px 10px;
            border: none;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
            display: flex;
            flex-direction: column;

        }

        table button:hover {
            background-color: #0062cc;
        }

        #head_tamil {
            position: sticky;
            top: 50px;
            z-index: 10;
        }

        #chartCanvas {

            min-width: 650px;
            margin: 0 auto;
        }

        .piechart_heading {
            text-align: center;
            font-weight: 700;
            font-size: 18px;
            color: indianred;

        }

        fieldset {
            padding: 0;
            margin: 0;
            border: 0;
            max-width: 340px;
            border-radius: 20px;
            width: 100%;
            position: sticky;
            top: 50px;
        }

        legend {
            font-size: 22px;
            font-weight: 600;
            color: #191919;
            margin: 0;
            background: #edf4fe;
            width: 100%;
            padding: 20px;
            box-sizing: border-box;
            border-radius: 10px 10px 0 0;
            border: 2px solid #3a88f6;
            display: flex;
        }

        fieldset label {
            font-weight: 300;
            font-size: 16px;
            cursor: pointer;
            display: flex;
            align-items: center;
            flex: 1;
            box-sizing: border-box;
            display: flex;
            padding: 20px 20px 20px 50px;
            font-weight: 500;
            color: #191919;
            -webkit-tap-highlight-color: transparent;
        }

        fieldset input[type="radio"] {
            position: relative;
            appearance: none;
            -webkit-appearance: none;
            transition: linear 0.8s;
            height: 0;
            width: 0;
            -webkit-tap-highlight-color: transparent;
        }

        fieldset input[type="radio"]:after {
            content: "";
            position: absolute;
            height: 16px;
            width: 16px;
            top: -10.5px;
            left: -30px;
            border-radius: 20px;
            border: 2px solid #3a88f6;
            transition: linear 0.2s;
            cursor: pointer;
        }

        fieldset input[type="radio"]:checked:after {
            content: "";
            position: absolute;
            height: 16px;
            width: 16px;
            background: #3a88f6;
            transition: linear 0.2s;
            cursor: pointer;
        }

        fieldset input[type="radio"]:checked:before {
            content: "";
            position: absolute;
            height: 8px;
            width: 8px;
            border-radius: 4px;
            background: #fff;
            left: -24px;
            top: -4.5px;
            z-index: 1;
            cursor: pointer;
        }

        .radio-item-container {
            display: flex;
            flex-direction: column;
            border: 2px solid #3a88f6;
            border-top: 0;
            background: #fff;
            border-radius: 0 0 10px 10px;
            padding: 10px 0;
        }

        .radio-item {
            display: flex;
            position: relative;
        }

        .icon {
            font-size: 24px;
            position: absolute;
            right: 26px;
            top: 11px;
            transition: linear 0.3s;
        }

        fieldset input[type="radio"]:checked+span>.icon {
            transform: scale(1.3);
            color: red;
        }
	</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
	
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>




</head>

<body>
<jsp:include page="${request.getContextPath()}/homeNavBar.jsp"></jsp:include>
	
	<p class="piechart_heading">
How many times have Tamil Nadu parties won?
It shows that it gets.</p>
	<!--  <canvas id="chartCanvas"></canvas>-->


	<div class="pastleaders">
		<h1>TamilNaadu chief Minister List</h1>

		<p>Tamil Nadu state has always been important in Indian politics
contributes The leaders of this state are its citizens
They have worked tirelessly to ensure the well-being of all.</p>
		<div class="pastleaderside">

			<fieldset>
				<legend>Choose a sort</legend>
				<div class="radio-item-container">
					<div class="radio-item">
						<label for="vanilla" id="sortName"> <input type="radio"
							id="vanilla" name="flavor" value="vanilla"> <span>Sort
								Name<span class="icon">A-Z</span>
						</span>
						</label>
					</div>
					<div class="radio-item">
						<label for="vanilla" id="sortName1"> <input type="radio"
							id="vanilla" name="flavor" value="vanilla"> <span>Sort
								Name<span class="icon">Z-A</span>
						</span>
						</label>
					</div>

					<div class="radio-item">
						<label for="chocolate" id="sort-date1"> <input
							type="radio" id="chocolate" name="flavor" value="chocolate">
							<span>Sort Date<span class="icon">1-9</span></span></label>
					</div>

					<div class="radio-item">
						<label for="strawberry" id="sort-date"> <input
							type="radio" id="strawberry" name="flavor" value="strawberry">
							<span>Sort Date<span class="icon">9-1</span></span></label>
					</div>
				</div>
			</fieldset>
			<table class="table bitmap" id="my-table">
				<tr id="head_tamil">

					<th scope="col">R.No</th>
					<th scope="col">cheif Ministers</th>
					<th class="date" scope="col">From</th>
					<th class="date" scope="col">To</th>
					<th scope="col">Party Name</th>

				</tr>

				<tbody class="table_body">

				</tbody>

			</table>
		</div>

	</div>


	<!-- footer  section-->
	
	<jsp:include page="${request.getContextPath()}/footer.jsp"></jsp:include>

	<script>
    
    
    const past_leaders_english = [
    	  {
    	    id: "1",
    	    name: "M.K.Stalin",
    	    image: "https://freeimghost.net/images/2023/05/04/m-k-stalin.png",
    	    to: "07 May 2021",
    	    from: "Present",
    	    party_name: "DMK",
    	  },
    	  {
    	    id: "2",
    	    name: "Edappadi K. Palaniswami",
    	    image: "https://freeimghost.net/images/2023/05/07/edappadi.jpeg",
    	    to: "16 Feb 2017",
    	    from: "03 May 2021",
    	    party_name: "AIADMK",
    	  },
    	  {
    	    id: "3",
    	    name: "O. Panneerselvam",
    	    image: "https://freeimghost.net/images/2023/05/07/pannirselvam-o.jpeg",
    	    to: "06 Dec 2016",
    	    from: "15 Feb 2017",
    	    party_name: "AIADMK",
    	  },
    	  {
    	    id: "4",
    	    name: "J. Jayalalithaa",
    	    image: "https://freeimghost.net/images/2023/05/07/jayalitha.jpeg",
    	    to: "24 May 2016",
    	    from: "04 Dec 2016",
    	    party_name: "AIADMK",
    	  },
    	  {
    	    id: "5",
    	    name: "J. Jayalalithaa",
    	    image: "https://freeimghost.net/images/2023/05/07/jayalitha.jpeg",
    	    to: "23 May 2015",
    	    from: "23 May 2016",
    	    party_name: "AIADMK",
    	  },
    	  {
    	    id: "6",
    	    name: "O. Panneerselvam",
    	    image: "https://freeimghost.net/images/2023/05/07/pannirselvam-o.jpeg",
    	    to: "29 Sep 2014",
    	    from: "22 May 2015",
    	    party_name: "AIADMK",
    	  },
    	  {
    	    id: "7",
    	    name: "J. Jayalalithaa",
    	    image: "https://freeimghost.net/images/2023/05/07/jayalitha.jpeg",
    	    to: "16 May 2011",
    	    from: "27 Sep 2014",
    	    party_name: "AIADMK",
    	  },
    	  {
    	    id: "8",
    	    name: "M. Karunanidhi",
    	    image: "https://freeimghost.net/images/2023/05/07/karunathi.jpeg",
    	    to: "13 May 2006",
    	    from: "15 May 2011",
    	    party_name: "DMK",
    	  },
    	  {
    	    id: "9",
    	    name: "J. Jayalalithaa",
    	    image: "https://freeimghost.net/images/2023/05/07/jayalitha.jpeg",
    	    to: "02 Mar 2002",
    	    from: "12 May 2006",
    	    party_name: "AIADMK",
    	  },
    	  {
    	    id: "10",
    	    name: "O. Panneerselvam",
    	    image: "https://freeimghost.net/images/2023/05/07/pannirselvam-o.jpeg",
    	    to: "21 Sep 2001",
    	    from: "01 Mar 2002",
    	    party_name: "AIADMK",
    	  },
    	  {
    	    id: "11",
    	    name: "J. Jayalalithaa",
    	    image: "https://freeimghost.net/images/2023/05/07/jayalitha.jpeg",
    	    to: "14 May 2001",
    	    from: "21 Sep 2001",
    	    party_name: "AIADMK",
    	  },
    	  {
    	    id: "12",
    	    name: "M. Karunanidhi",
    	    image: "https://freeimghost.net/images/2023/05/07/karunathi.jpeg",
    	    to: "13 May 1996",
    	    from: "13 May 2001",
    	    party_name: "DMK",
    	  },
    	  {
    	    id: "13",
    	    name: "J. Jayalalithaa",
    	    image: "https://freeimghost.net/images/2023/05/07/jayalitha.jpeg",
    	    to: "24 Jun 1991",
    	    from: "13 May 1996",
    	    party_name: "AIADMK",
    	  },
    	  {
    	    id: "14",
    	    name: "President's rule",
    	    image: "https://freeimghost.net/images/2023/05/07/govt.png",
    	    to: "30 Jan 1991",
    	    from: "24 Jun 1991",
    	    party_name: "",
    	  },
    	  {
    	    id: "15",
    	    name: "M. Karunanidhi",
    	    image: "https://freeimghost.net/images/2023/05/07/karunathi.jpeg",
    	    to: "27 Jan 1989",
    	    from: "30 Jan 1991",
    	    party_name: "DMK",
    	  },
    	  {
    	    id: "4",
    	    name: "J. Jayalalithaa",
    	    image: "https://freeimghost.net/images/2023/05/07/jayalitha.jpeg",
    	    to: "24 May 2016",
    	    from: "04 Dec 2016",
    	    party_name: "AIADMK",
    	  },
    	  {
    	    id: "16",
    	    name: "President's rule",
    	    image: "https://freeimghost.net/images/2023/05/07/govt.png",
    	    to: "30 Jan 1988",
    	    from: "27 Jan 1989",
    	    party_name: "",
    	  },
    	  {
    	    id: "17",
    	    name: "Janaki Ramachandran",
    	    to: "07 Jan 1988",
    	    from: "30 Jan 1988",
    	    party_name: "AIADMK",
    	  },
    	  {
    	    id: "18",
    	    name: "V.R. Nedunchezhiyan",
    	    to: "24 Dec 1987",
    	    from: "07 Jan 1988",
    	    party_name: "AIADMK",
    	  },
    	  {
    	    id: "19",
    	    name: "M. G. Ramachandran",
    	    image: "https://freeimghost.net/images/2023/05/07/emjr.jpeg",
    	    to: "10 Feb 1985",
    	    from: "24 Dec 1987",
    	    party_name: "AIADMK",
    	  },
    	  {
    	    id: "20",
    	    name: "M. G. Ramachandran",
    	    image: "https://freeimghost.net/images/2023/05/07/emjr.jpeg",
    	    to: "09 Jun 1980",
    	    from: "15 Nov 1984",
    	    party_name: "AIADMK",
    	  },
    	  {
    	    id: "21",
    	    name: "President's rule",
    	    image: "https://freeimghost.net/images/2023/05/07/govt.png",
    	    to: "17 Feb 1980",
    	    from: "09 Jun 1980",
    	    party_name: "",
    	  },
    	  {
    	    id: "22",
    	    name: "M. G. Ramachandran",
    	    image: "https://freeimghost.net/images/2023/05/07/emjr.jpeg",
    	    to: "01 Jul 1977",
    	    from: "17 Feb 1980",
    	    party_name: "AIADMK",
    	  },
    	  {
    	    id: "23",
    	    name: "President's rule",
    	    image: "https://freeimghost.net/images/2023/05/07/govt.png",
    	    to: "31 Jan 1976",
    	    from: "30 Jun 1977",
    	    party_name: "",
    	  },
    	  {
    	    id: "24",
    	    name: "M. Karunanidhi",
    	    image: "https://freeimghost.net/images/2023/05/07/karunathi.jpeg",
    	    to: "15 Mar 1971",
    	    from: "31 Jan 1976",
    	    party_name: "DMK",
    	  },
    	  {
    	    id: "25",
    	    name: "M. Karunanidhi",
    	    image: "https://freeimghost.net/images/2023/05/07/karunathi.jpeg",
    	    to: "10 Feb 1969",
    	    from: "04 Jan 1971",
    	    party_name: "DMK",
    	  },
    	  {
    	    id: "26",
    	    name: "V.R. Nedunchezhiyan",
    	    to: "03 Feb 1969",
    	    from: "10 Feb 1969",
    	    party_name: "DMK",
    	  },
    	  {
    	    id: "27",
    	    name: "C. N. Annadurai",
    	    to: "01 Mar 1967",
    	    from: "03 Feb 1969",
    	    party_name: "DMK",
    	  },
    	  {
    	    id: "28",
    	    name: "C. N. Annadurai",
    	    image: "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    to: "01 Mar 1967",
    	    from: "03 Feb 1969",
    	    party_name: "DMK",
    	  },
    	  {
    	    id: "29",
    	    name: "M. Bakthavatsalam",
    	    image: "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    to: "02 Oct 1963",
    	    from: "06 Mar 1967",
    	    party_name: "INC",
    	  },
    	  {
    	    id: "30",
    	    name: "K. Kamaraj",
    	    image: "https://freeimghost.net/images/2023/05/07/kamaraj-cm.jpeg",
    	    to: "15 Mar 1962",
    	    from: "02 Oct 1963",
    	    party_name: "INC",
    	  },
    	  {
    	    id: "31",
    	    name: "K. Kamaraj",
    	    image: "https://freeimghost.net/images/2023/05/07/kamaraj-cm.jpeg",
    	    to: "13 Apr 1957",
    	    from: "01 Mar 1962",
    	    party_name: "INC",
    	  },
    	  {
    	    id: "32",
    	    name: "K. Kamaraj",
    	    image: "https://freeimghost.net/images/2023/05/07/kamaraj-cm.jpeg",
    	    to: "13 Apr 1954",
    	    from: "31 Mar 1957",
    	    party_name: "INC",
    	  },
    	  {
    	    id: "33",
    	    name: "C. Rajagopalachari",
    	    image: "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    to: "10 Apr 1952",
    	    from: "13 Apr 1954",
    	    party_name: "INC",
    	  },
    	  {
    	    id: "34",
    	    name: "P. S. Kumaraswamy Raja",
    	    image: "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    to: "26 Jan 1950",
    	    from: "10 Apr 1952",
    	    party_name: "INC",
    	  },
    	  {
    	    id: "35",
    	    name: "P. S. Kumaraswamy Raja",
    	    image: "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    to: "06 Apr 1949",
    	    from: "26 Jan 1950",
    	    party_name: "INC",
    	  },
    	  {
    	    id: "36",
    	    name: "O. P. Ramaswamy Reddiyar",
    	    image: "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    to: "23 Mar 1947",
    	    from: "06 Apr 1949",
    	    party_name: "INC",
    	  },
    	  {
    	    id: "37",
    	    name: "Tanguturi Prakasam",
    	    image: "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    to: "30 Apr 1946",
    	    from: "23 Mar 1947",
    	    party_name: "INC",
    	  },
    	  {
    	    id: "38",
    	    name: "Governor's Rule",
    	    image: "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    to: "29 Oct 1939",
    	    from: "30 Apr 1946",
    	    party_name: "INC",
    	  },
    	  {
    	    id: "39",
    	    name: "C. Rajagopalachari",
    	    image: "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    to: "14 Jul 1937",
    	    from: "29 Oct 19394",
    	    party_name: "INC",
    	  },
    	  {
    	    id: "40",
    	    name: "Kurma Venkata Reddy Naidu",
    	    image: "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    to: "01 Apr 1937",
    	    from: "14 Jul 1937",
    	    party_name: "Interim provisional ministry",
    	  },
    	  {
    	    id: "41",
    	    name: "Raja of Bobbili",
    	    image: "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    to: "24 Aug 1936",
    	    from: "01 Apr 1937",
    	    party_name: "Justice Party",
    	  },
    	  {
    	    id: "42",
    	    name: "P. T. Rajan",
    	    image: "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    to: "04 Apr 1936",
    	    from: "24 Aug 1936",
    	    party_name: "Justice Party",
    	  },
    	  {
    	    id: "43",
    	    name: "Raja of Bobbili",
    	    image: "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    to: "05 Nov 1934",
    	    from: "04 Apr 1936",
    	    party_name: "Justice Party",
    	  },
    	  {
    	    id: "44",
    	    name: "Raja of Bobbili",
    	    image: "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    to: "05 Nov 1932",
    	    from: "05 Nov 1934",
    	    party_name: "Justice Party",
    	  },
    	  {
    	    id: "45",
    	    name: "B. Munuswamy Naidu",
    	    image: "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    to: "27 Oct 1930",
    	    from: "05 Nov 1932",
    	    party_name: "Justice Party",
    	  },
    	  {
    	    id: "46",
    	    name: "P. Subbarayan",
    	    image: "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    to: "04 Dec 1926",
    	    from: "04 Dec 1926",
    	    party_name: "Unaffiliated",
    	  },
    	  {
    	    id: "47",
    	    name: "Raja of Panagal",
    	    image: "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    to: "19 Nov 1923",
    	    from: "04 Dec 1926",
    	    party_name: "Justice Party",
    	  },
    	  {
    	    id: "48",
    	    name: "Raja of Panagal",
    	    image: "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    to: "11 Jul 1921",
    	    from: "11 Sep 1923",
    	    party_name: "Justice Party",
    	  },
    	  {
    	    id: "49",
    	    name: "A. Subbarayalu Reddiar",
    	    image: "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    to: "17 Dec 1920",
    	    from: "11 Jul 1921",
    	    party_name: "Justice Party",
    	  },
    	];
    
       localStorage.setItem("past_leaders_english",JSON.stringify(past_leaders_english));
    
        const mlaDetails = JSON.parse(localStorage.getItem("past_leaders_english"));

        // Extract party names and count their occurrences
        const partyCounts = {};
        mlaDetails.forEach(mla => {
            const party = mla.party_name;
            partyCounts[party] = (partyCounts[party] || 0) + 1;
        });

        // Convert party counts to chart data format
        const chartData = Object.entries(partyCounts).map(([party, count]) => ({
            party,
            count
        }));

        // Generate random colors for chart slices
        const colors = generateRandomColors(chartData.length);

        // Create pie chart

        const ctx = document.getElementById("chartCanvas").getContext("2d");
        new Chart(ctx, {
            type: "pie",
            data: {
                labels: chartData.map(data => data.party),
                datasets: [{
                    data: chartData.map(data => data.count),
                    backgroundColor: colors,
                    hoverBackgroundColor: colors
                }]
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
    </script>

	<script>
const past_leader_one = JSON.parse(localStorage.getItem("past_leaders_english"));
const languagess = localStorage.getItem("language");

const past_leaders_english_one = JSON.parse(localStorage.getItem("past_leaders_english"));

const dmk = "https://freeimghost.net/images/2023/05/07/dmk-logo.png";
const aiadmk = "https://freeimghost.net/images/2023/05/07/aiadmk.png";
const bjp = "https://freeimghost.net/images/2023/05/07/bjp.jpeg";
const congress = "https://freeimghost.net/images/2023/05/07/inc.png";
const others1 = "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg";

function default_list(array) {
  document.querySelector(".table_body").innerHTML = "";
  array.forEach((values) => {
	  
    const tr = document.createElement("tr");

    // create table cell elements and set their content
    const td1 = document.createElement("td");
    td1.setAttribute("scope", "row");
    td1.textContent = values.id;

    const td2 = document.createElement("td");
    const profileMainDiv = document.createElement("div");
    profileMainDiv.setAttribute("class", "profile-main");

    const partiesDiv = document.createElement("div");
    partiesDiv.setAttribute("class", "parties");

    const pastLeaderDiv = document.createElement("div");
    pastLeaderDiv.setAttribute("id", "pastleader");
    pastLeaderDiv.setAttribute("class", "fontsidepro");
    pastLeaderDiv.innerHTML = `<p>\${values.name}</p>`;

    const backsideproDiv = document.createElement("div");
    backsideproDiv.setAttribute("class", "backsidepro");
    backsideproDiv.innerHTML = `<p></p><img src=\${values.image} alt=\${values.name}>`;

    const buttonElement = document.createElement("button");
    const aElement = document.createElement("a");
    aElement.setAttribute(
      "href",
      `past_leader_profile.html?name=${values.id}`
    );
    if (languagess === "english") {
      aElement.innerHTML = "profile";

    } else {
      aElement.innerHTML = "விவரம்";

    }

    buttonElement.appendChild(aElement);
    backsideproDiv.appendChild(buttonElement);

    partiesDiv.appendChild(pastLeaderDiv);
    partiesDiv.appendChild(backsideproDiv);
    profileMainDiv.appendChild(partiesDiv);
    td2.appendChild(profileMainDiv);

    const td3 = document.createElement("td");
    td3.setAttribute("class", "date");
    td3.textContent = values.to;

    const td4 = document.createElement("td");
    td4.setAttribute("class", "date");
    td4.textContent = values.from;

    // Create table cell
    const td5 = document.createElement("td");
    const nameImgDiv = document.createElement("div");
    nameImgDiv.setAttribute("class", "name-img");

    const partyImg = document.createElement("img");

    partyImg.setAttribute("alt", values.party_name);

    const partyName = document.createElement("p");
    partyName.innerText = values.party_name;

    if (values.party_name === "திமுக" || values.party_name === "DMK") {
      partyImg.setAttribute("src", dmk);
    } else if (
      values.party_name === "அதிமுக" ||
      values.party_name === "AIADMK"
    ) {
      partyImg.setAttribute("src", aiadmk);
    } else if (values.party_name === "பாஜக" || values.party_name === "BJP") {
      partyImg.setAttribute("src", bjp);
    } else if (values.party_name === "காங்." || values.party_name === "INC") {
      partyImg.setAttribute("src", congress);
    } else {
      partyImg.setAttribute("src", others1);
    }

    nameImgDiv.appendChild(partyImg);
    nameImgDiv.appendChild(partyName);
    td5.appendChild(nameImgDiv);

    td5.appendChild(nameImgDiv);

    // add table cell elements to table row element
    tr.appendChild(td1);
    tr.appendChild(td2);
    tr.appendChild(td3);
    tr.appendChild(td4);
    tr.appendChild(td5);

    document.querySelector(".table_body").append(tr);
  });
}

default_list(past_leaders_english);




const tamil_tran = document.getElementById("lang_ta");

const english_tran = document.getElementById("lang_eng");


tamil_tran.addEventListener("click", () => {
  document.querySelector(".table_body").innerHTML = "";

  default_list(past_leader_one);

});

english_tran.addEventListener("click", () => {
  document.querySelector(".table_body").innerHTML = "";

  default_list(past_leaders_english);
});

const language_setting11 = localStorage.getItem("language");


if (language_setting11 === "english") {

  document.querySelector(".table_body").innerHTML = "";

  default_list(past_leaders_english_one);
}
else if (language_setting11 === "tamil") {

  document.querySelector(".table_body").innerHTML = "";

  default_list(past_leaders_english);
}


window.onload = function () {

  const searchBox = document.querySelector("#searchbar");

  searchBox.addEventListener("input", () => {

    const filterValue = searchBox.value.toLocaleLowerCase();

    const rows = document.querySelectorAll("table tr")

    for (let i = 1; i < rows.length; i++) {
      // start from index 1 to skip the header row
      const row = rows[i];

      const name = row.children[1].textContent.toLocaleLowerCase();
      const party = row.children[3].textContent.toLocaleLowerCase();
      const leader_name = row.children[2].textContent.toLocaleLowerCase();
      if (
        name.includes(filterValue) ||
        party.includes(filterValue) ||
        leader_name.includes(filterValue)
      ) {
        row.style.display = "table-row";
      } else {
        row.style.display = "none";
      }
    }
  });
};

const sortDateButton = document.getElementById("sort-date");

const sortDateButton1 = document.getElementById("sort-date1");

sortDateButton.addEventListener("click", () => {

  const table = document.querySelector("table");

  const { rows } = table;

  const sortedRows = Array.from(rows)
    .slice(1)
    .sort((a, b) => {
      const dateA = (a.cells[0].textContent);
      const dateB = (b.cells[0].textContent);
      return dateB - dateA; // Sort in descending order
    });

  table.tBodies[0].append(...sortedRows);
});

sortDateButton1.addEventListener("click", () => {

  const table = document.querySelector("table");

  const { rows } = table;

  const sortedRows = Array.from(rows)
    .slice(1)
    .sort((a, b) => {
      const dateA = (a.cells[0].textContent);
      const dateB = (b.cells[0].textContent);
      return dateA - dateB; // Sort in descending order
    });

  table.tBodies[0].append(...sortedRows);
});

const sortNameButton = document.getElementById("sortName");

const sortNameButton1 = document.getElementById("sortName1");

sortNameButton.addEventListener("click", () => {
  const table = document.querySelector("table");
  const { rows } = table;

  const sortedRows = Array.from(rows)
    .slice(1)
    .sort((a, b) => {
      const nameA = a.cells[1].textContent;
      const nameB = b.cells[1].textContent;
      return nameA.localeCompare(nameB);
    });

  table.tBodies[0].append(...sortedRows);
});


sortNameButton1.addEventListener("click", () => {
  const table = document.querySelector("table");
  const { rows } = table;

  const sortedRows = Array.from(rows)
    .slice(1)
    .sort((a, b) => {
      const nameA = a.cells[1].textContent;
      const nameB = b.cells[1].textContent;
      return nameB.localeCompare(nameA);
    });

  table.tBodies[0].append(...sortedRows);
});

</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

   <script src="<%=request.getContextPath()%>/assets/js/trsnslate.js"></script>

</body>

</html>