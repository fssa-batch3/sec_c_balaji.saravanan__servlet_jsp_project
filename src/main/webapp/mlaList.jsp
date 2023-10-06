<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE javascript>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>mla list</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link href="<%=request.getContextPath()%>/assets/css/footer.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/assets/css/index.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/assets/css/main.css"
	rel="stylesheet">
<style>
.mla-list-intro {
	display: flex;
	flex-direction: row;
	justify-content: space-around;
	align-items: center;
	font-size: 13px;
}

#sortName, #sortMargin {
	display: inline-block;
	background-image: linear-gradient(to right top, #abc2e4, #92cef0, #75dbf0, #67e5e2,
		#79edc8);
	color: #fff;
	font-size: 16px;
	font-weight: bold;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	text-align: center;
	text-decoration: none;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

#sortName, #sortMargin:hover {
	background-color: #0062cc;
}

@media screen and (max-width:600px) {
}

.winners-map .land:hover {
	fill: #c0c0bb;
	cursor: pointer
}

.bar-chart .winners-map .land .geo-tooltip {
	background-color: aqua;
}

.total_div {
	display: flex;
}

.winners-map .land:hover {
	fill: #c0c0bb;
}

#table-container {
	border-radius: 15px;
	border: 10px solid rgba(255, 255, 255, .03);
	max-width: 700px;
	height: 900px;
	overflow: scroll;
	color: black;
}

#table-container::-webkit-scrollbar {
	display: none;
}

#table-container table {
	border-collapse: collapse;
	height: auto;
	color: rgba(255, 255, 255, .3);
	background: linear-gradient(45deg, rgba(255, 255, 255, 0.1) 0%,
		rgba(245, 255, 246, 0.1) 100%);
}

#table-container tbody {
	height: 100%;
	width: 100%;
}

#table-container thead {
	background-image: linear-gradient(to right, #DECBA4, #3E5151);
}

#table-container tr td, #table-container tr th {
	padding: 20px;
	text-align: left;
}

#table-container tr th {
	color: rgba(255, 255, 255, .7);
}

#table-container tr td {
	color: black;
	font-weight: lighter;
}

#head_tamil {
	position: sticky;
	top: 0;
}

#chartCanvas {
	padding: 20px;
	margin: 0 auto;
	width: 700px;
	height: 500px;
}

.chartheading {
	text-align: center;
	font-size: 22px;
	color: indianred;
	font-weight: 700;
}
</style>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>


</head>

<body>

	<!-- nav bar -->

	<jsp:include page="${request.getContextPath()}/homeNavBar.jsp"></jsp:include>


	<div class="mla-list-intro">
		<div>
			<p>
				<strong>பிரதிநிதிகள்:</strong>
			</p>
			<p>There are 234 constituencies in the Tamil Nadu Assembly.
				Finally, Tamil Nadu MLAs elected to assembly May 2021. DMK won 125
				constituencies, AIADMK won 65 seats, others won 44 modules. Every
				Tamil Nadu assembly election Detailed list of winners from the
				party.</p>
		</div>
		<div>
			<p>
				If you don't know your constituency, your Voter ID Using Assembly
				Constituency Number & Name on the back of the card You can search
				for that number in the input field that shows your module.<img
					src="https://freeimghost.net/images/2023/09/25/IMG_20230427_140143.jpeg"
					style="width: 400px; height: 100px;" alt="">
			</p>
		</div>
	</div>



	<div class="total_div">


		<div class="bar-chart">
			<p class="chartheading">தமிழ்நாடு வரைபடம்</p>
			<svg width="900" height="900">
                <g>
                    <circle cx="20" cy="25" r="10" fill="#006400"></circle>
				<text x="35" y="30">All India Anna Dravida
                        Munnetra Kazhagam</text>
                    <circle cx="20" cy="50" r="10" fill="#ff8c00"></circle>
				<text x="35" y="55">Bharatiya Janata
                        Party</text>
                    <circle cx="20" cy="75" r="10" fill="#ff0000"></circle>
				<text x="35" y="80">Communist Party of
                        India</text>
                    <circle cx="20" cy="100" r="10" fill="#ff0000"></circle>
				<text x="35" y="105">Communist Party of
                        India
                        (Marxist)</text>
                    <circle cx="20" cy="125" r="10" fill="#800000"></circle>
				<text x="35" y="130">Dravida Munnetra
                        Kazhagam</text>
                    <circle cx="20" cy="150" r="10" fill="#228b22"></circle>
				<text x="35" y="155">Indian National
                        Congress</text>
                    <circle cx="20" cy="175" r="10" fill="#ffff00"></circle>
				<text x="35" y="180">Pattali Makkal
                        Katchi</text>
                    <circle cx="20" cy="200" r="10" fill="#1e90ff"></circle>
				<text x="35" y="205">Viduthalai Chiruthaigal
                        Katchi</text>
                </g>
                <g class="winners-map">
                    <path class="land" district="1" constituency="1"
					d="M617.1679558963624,89.34895586308107L627.2223943659446,72.00181332965485L647.3312713051073,72.00181332965485L657.3857097746913,89.34895586308107L647.3312713051073,106.94750625931079L627.2223943659446,106.94750625931079Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Gummidipoondi
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="1" constituency="2"
					d="M677.7523928284609,89.34895586308107L687.8068312980449,72.00181332965485L707.9157082372076,72.00181332965485L717.9701467067898,89.34895586308107L707.9157082372076,106.94750625931079L687.8068312980449,106.94750625931079Z"
					fill="#228b22" style="opacity: 1;">
                        <title class="geo-tooltip">Ponneri Indian National Congress</title>
                    </path>
                    <path class="land" district="1" constituency="3"
					d="M597.0590789571961,89.34895586308107L587.0046404876139,106.94750625931079L566.8957635484494,106.94750625931079L556.8413250788672,89.34895586308107L566.8957635484494,72.00181332965485L587.0046404876139,72.00181332965485Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Tiruttani
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="1" constituency="4"
					d="M566.8957635484494,106.94750625931079L587.0046404876139,106.94750625931079L597.0590789571961,124.29464879273701L587.0046404876139,141.8931991889665L566.8957635484494,141.8931991889665L556.8413250788672,124.29464879273701Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Thiruvallur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="1" constituency="5"
					d="M587.0046404876139,106.94750625931079L597.0590789571961,89.34895586308107L617.1679558963624,89.34895586308107L627.2223943659446,106.94750625931079L617.1679558963624,124.29464879273701L597.0590789571961,124.29464879273701Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Poonamallee
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="1" constituency="6"
					d="M587.0046404876139,141.8931991889665L597.0590789571961,124.29464879273701L617.1679558963624,124.29464879273701L627.2223943659446,141.8931991889665L617.1679558963624,159.24034172239294L597.0590789571961,159.24034172239294Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Avadi
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="1" constituency="7"
					d="M657.3857097746913,124.29464879273701L677.7523928284609,124.29464879273701L687.8068312980449,141.8931991889665L677.7523928284609,159.24034172239294L657.3857097746913,159.24034172239294L647.3312713051073,141.8931991889665Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Maduravoyal
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="1" constituency="8"
					d="M617.1679558963624,124.29464879273701L627.2223943659446,106.94750625931079L647.3312713051073,106.94750625931079L657.3857097746913,124.29464879273701L647.3312713051073,141.8931991889665L627.2223943659446,141.8931991889665Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Ambattur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="1" constituency="9"
					d="M677.7523928284609,89.34895586308107L687.8068312980449,106.94750625931079L677.7523928284609,124.29464879273701L657.3857097746913,124.29464879273701L647.3312713051073,106.94750625931079L657.3857097746913,89.34895586308107Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Madavaram
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="1" constituency="10"
					d="M677.7523928284609,124.29464879273701L687.8068312980449,106.94750625931079L707.9157082372076,106.94750625931079L717.9701467067898,124.29464879273701L707.9157082372076,141.8931991889665L687.8068312980449,141.8931991889665Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Thiruvottiyur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="2" constituency="11"
					d="M677.7523928284609,159.24034172239294L687.8068312980449,141.8931991889665L707.9157082372076,141.8931991889665L717.9701467067898,159.24034172239294L707.9157082372076,176.83889211862265L687.8068312980449,176.83889211862265Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Dr.Radhakrishnan Nagar
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="2" constituency="12"
					d="M657.3857097746913,159.24034172239294L677.7523928284609,159.24034172239294L687.8068312980449,176.83889211862265L677.7523928284609,194.1860346520491L657.3857097746913,194.1860346520491L647.3312713051073,176.83889211862265Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Perambur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="2" constituency="13"
					d="M617.1679558963624,159.24034172239294L627.2223943659446,141.8931991889665L647.3312713051073,141.8931991889665L657.3857097746913,159.24034172239294L647.3312713051073,176.83889211862265L627.2223943659446,176.83889211862265Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Kolathur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="2" constituency="14"
					d="M587.0046404876139,176.83889211862265L597.0590789571961,159.24034172239294L617.1679558963624,159.24034172239294L627.2223943659446,176.83889211862265L617.1679558963624,194.1860346520491L597.0590789571961,194.1860346520491Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Villivakkam
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="2" constituency="15"
					d="M657.3857097746913,194.1860346520491L677.7523928284609,194.1860346520491L687.8068312980449,211.5331771854751L677.7523928284609,229.1317275817048L657.3857097746913,229.1317275817048L647.3312713051073,211.5331771854751Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Thiru-Vi-Ka-Nagar
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="2" constituency="16"
					d="M617.1679558963624,229.1317275817048L627.2223943659446,211.5331771854751L647.3312713051073,211.5331771854751L657.3857097746913,229.1317275817048L647.3312713051073,246.47887011513126L627.2223943659446,246.47887011513126Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Egmore
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="2" constituency="17"
					d="M677.7523928284609,194.1860346520491L687.8068312980449,176.83889211862265L707.9157082372076,176.83889211862265L717.9701467067898,194.1860346520491L707.9157082372076,211.5331771854751L687.8068312980449,211.5331771854751Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Royapuram
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="2" constituency="18"
					d="M677.7523928284609,229.1317275817048L687.8068312980449,211.5331771854751L707.9157082372076,211.5331771854751L717.9701467067898,229.1317275817048L707.9157082372076,246.47887011513126L687.8068312980449,246.47887011513126Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Harbour
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="2" constituency="19"
					d="M657.3857097746913,229.1317275817048L677.7523928284609,229.1317275817048L687.8068312980449,246.47887011513126L677.7523928284609,264.07742051136097L657.3857097746913,264.07742051136097L647.3312713051073,246.47887011513126Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Chepauk-Thiruvallikeni
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="2" constituency="20"
					d="M587.0046404876139,246.47887011513126L597.0590789571961,229.1317275817048L617.1679558963624,229.1317275817048L627.2223943659446,246.47887011513126L617.1679558963624,264.07742051136097L597.0590789571961,264.07742051136097Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Thousand Lights
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="2" constituency="21"
					d="M617.1679558963624,194.1860346520491L627.2223943659446,176.83889211862265L647.3312713051073,176.83889211862265L657.3857097746913,194.1860346520491L647.3312713051073,211.5331771854751L627.2223943659446,211.5331771854751Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Anna Nagar
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="2" constituency="22"
					d="M566.8957635484494,211.5331771854751L587.0046404876139,211.5331771854751L597.0590789571961,229.1317275817048L587.0046404876139,246.47887011513126L566.8957635484494,246.47887011513126L556.8413250788672,229.1317275817048Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Virugampakkam
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="2" constituency="23"
					d="M566.8957635484494,246.47887011513126L587.0046404876139,246.47887011513126L597.0590789571961,264.07742051136097L587.0046404876139,281.4245630447874L566.8957635484494,281.4245630447874L556.8413250788672,264.07742051136097Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Saidapet
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="2" constituency="24"
					d="M587.0046404876139,211.5331771854751L597.0590789571961,194.1860346520491L617.1679558963624,194.1860346520491L627.2223943659446,211.5331771854751L617.1679558963624,229.1317275817048L597.0590789571961,229.1317275817048Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Thiyagarayanagar
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="2" constituency="25"
					d="M617.1679558963624,264.07742051136097L627.2223943659446,246.47887011513126L647.3312713051073,246.47887011513126L657.3857097746913,264.07742051136097L647.3312713051073,281.4245630447874L627.2223943659446,281.4245630447874Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Mylapore
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="2" constituency="26"
					d="M587.0046404876139,281.4245630447874L597.0590789571961,264.07742051136097L617.1679558963624,264.07742051136097L627.2223943659446,281.4245630447874L617.1679558963624,298.77170557821364L597.0590789571961,298.77170557821364Z"
					fill="#228b22" style="opacity: 1;">
                        <title class="geo-tooltip">Velachery
                            Indian National Congress</title>
                    </path>
                    <path class="land" district="3" constituency="27"
					d="M617.1679558963624,298.77170557821364L627.2223943659446,281.4245630447874L647.3312713051073,281.4245630447874L657.3857097746913,298.77170557821364L647.3312713051073,316.37025597444335L627.2223943659446,316.37025597444335Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Shozhinganallur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="3" constituency="28"
					d="M566.8957635484494,281.4245630447874L587.0046404876139,281.4245630447874L597.0590789571961,298.77170557821364L587.0046404876139,316.37025597444335L566.8957635484494,316.37025597444335L556.8413250788672,298.77170557821364Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Alandur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="3" constituency="29"
					d="M526.4202035555136,316.37025597444335L536.4746420250995,298.77170557821364L556.8413250788672,298.77170557821364L566.8957635484494,316.37025597444335L556.8413250788672,333.7173985078696L536.4746420250995,333.7173985078696Z"
					fill="#228b22" style="opacity: 1;">
                        <title class="geo-tooltip">Sriperumbudur
                            Indian National Congress</title>
                    </path>
                    <path class="land" district="3" constituency="30"
					d="M587.0046404876139,316.37025597444335L597.0590789571961,298.77170557821364L617.1679558963624,298.77170557821364L627.2223943659446,316.37025597444335L617.1679558963624,333.7173985078696L597.0590789571961,333.7173985078696Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Pallavaram
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="3" constituency="31"
					d="M566.8957635484494,316.37025597444335L587.0046404876139,316.37025597444335L597.0590789571961,333.7173985078696L587.0046404876139,351.3159489040993L566.8957635484494,351.3159489040993L556.8413250788672,333.7173985078696Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Tambaram
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="3" constituency="32"
					d="M587.0046404876139,351.3159489040993L597.0590789571961,333.7173985078696L617.1679558963624,333.7173985078696L627.2223943659446,351.3159489040993L617.1679558963624,368.66309143752574L597.0590789571961,368.66309143752574Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Chengalpattu
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="3" constituency="33"
					d="M617.1679558963624,333.7173985078696L627.2223943659446,316.37025597444335L647.3312713051073,316.37025597444335L657.3857097746913,333.7173985078696L647.3312713051073,351.3159489040993L627.2223943659446,351.3159489040993Z"
					fill="#1e90ff" style="opacity: 1;">
                        <title class="geo-tooltip">Thiruporur
                            Viduthalai Chiruthaigal Katchi</title>
                    </path>
                    <path class="land" district="3" constituency="34"
					d="M617.1679558963624,368.66309143752574L627.2223943659446,351.3159489040993L647.3312713051073,351.3159489040993L657.3857097746913,368.66309143752574L647.3312713051073,386.261641833755L627.2223943659446,386.261641833755Z"
					fill="#1e90ff" style="opacity: 1;">
                        <title class="geo-tooltip">Cheyyur
                            Viduthalai Chiruthaigal Katchi</title>
                    </path>
                    <path class="land" district="3" constituency="35"
					d="M587.0046404876139,386.261641833755L597.0590789571961,368.66309143752574L617.1679558963624,368.66309143752574L627.2223943659446,386.261641833755L617.1679558963624,403.60878436718144L597.0590789571961,403.60878436718144Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Madurantakam
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="3" constituency="36"
					d="M566.8957635484494,351.3159489040993L587.0046404876139,351.3159489040993L597.0590789571961,368.66309143752574L587.0046404876139,386.261641833755L566.8957635484494,386.261641833755L556.8413250788672,368.66309143752574Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Uthiramerur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="3" constituency="37"
					d="M526.4202035555136,351.3159489040993L536.4746420250995,333.7173985078696L556.8413250788672,333.7173985078696L566.8957635484494,351.3159489040993L556.8413250788672,368.66309143752574L536.4746420250995,368.66309143752574Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Kancheepuram
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="4" constituency="38"
					d="M566.8957635484494,141.8931991889665L587.0046404876139,141.8931991889665L597.0590789571961,159.24034172239294L587.0046404876139,176.83889211862265L566.8957635484494,176.83889211862265L556.8413250788672,159.24034172239294Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Arakkonam
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="4" constituency="39"
					d="M526.4202035555136,176.83889211862265L536.4746420250995,159.24034172239294L556.8413250788672,159.24034172239294L566.8957635484494,176.83889211862265L556.8413250788672,194.1860346520491L536.4746420250995,194.1860346520491Z"
					fill="#228b22" style="opacity: 1;">
                        <title class="geo-tooltip">Sholinghur
                            Indian National Congress</title>
                    </path>
                    <path class="land" district="4" constituency="40"
					d="M526.4202035555136,141.8931991889665L536.4746420250995,124.29464879273701L556.8413250788672,124.29464879273701L566.8957635484494,141.8931991889665L556.8413250788672,159.24034172239294L536.4746420250995,159.24034172239294Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Katpadi
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="4" constituency="41"
					d="M496.2568881467687,159.24034172239294L506.3113266163509,141.8931991889665L526.4202035555136,141.8931991889665L536.4746420250995,159.24034172239294L526.4202035555136,176.83889211862265L506.3113266163509,176.83889211862265Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Ranipet
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="4" constituency="42"
					d="M496.2568881467687,194.1860346520491L506.3113266163509,176.83889211862265L526.4202035555136,176.83889211862265L536.4746420250995,194.1860346520491L526.4202035555136,211.5331771854751L506.3113266163509,211.5331771854751Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Arcot
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="4" constituency="43"
					d="M476.1480112076024,159.24034172239294L496.2568881467687,159.24034172239294L506.3113266163509,176.83889211862265L496.2568881467687,194.1860346520491L476.1480112076024,194.1860346520491L466.093572738022,176.83889211862265Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Vellore
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="4" constituency="44"
					d="M476.1480112076024,194.1860346520491L496.2568881467687,194.1860346520491L506.3113266163509,211.5331771854751L496.2568881467687,229.1317275817048L476.1480112076024,229.1317275817048L466.093572738022,211.5331771854751Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Anaikattu
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="4" constituency="45"
					d="M496.2568881467687,124.29464879273701L506.3113266163509,106.94750625931079L526.4202035555136,106.94750625931079L536.4746420250995,124.29464879273701L526.4202035555136,141.8931991889665L506.3113266163509,141.8931991889665Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Kilvaithinankuppam
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="4" constituency="46"
					d="M496.2568881467687,124.29464879273701L506.3113266163509,141.8931991889665L496.2568881467687,159.24034172239294L476.1480112076024,159.24034172239294L466.093572738022,141.8931991889665L476.1480112076024,124.29464879273701Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Gudiyattam
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="4" constituency="47"
					d="M435.9302573292716,194.1860346520491L445.9846957988557,176.83889211862265L466.093572738022,176.83889211862265L476.1480112076024,194.1860346520491L466.093572738022,211.5331771854751L445.9846957988557,211.5331771854751Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Vaniyambadi
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="4" constituency="48"
					d="M435.9302573292716,159.24034172239294L445.9846957988557,141.8931991889665L466.093572738022,141.8931991889665L476.1480112076024,159.24034172239294L466.093572738022,176.83889211862265L445.9846957988557,176.83889211862265Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Ambur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="4" constituency="49"
					d="M405.5091358059217,176.83889211862265L415.5635742755039,159.24034172239294L435.9302573292716,159.24034172239294L445.9846957988557,176.83889211862265L435.9302573292716,194.1860346520491L415.5635742755039,194.1860346520491Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Jolarpet
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="4" constituency="50"
					d="M435.9302573292716,229.1317275817048L445.9846957988557,211.5331771854751L466.093572738022,211.5331771854751L476.1480112076024,229.1317275817048L466.093572738022,246.47887011513126L445.9846957988557,246.47887011513126Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Tirupattur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="5" constituency="51"
					d="M385.4002588667572,176.83889211862265L405.5091358059217,176.83889211862265L415.5635742755039,194.1860346520491L405.5091358059217,211.5331771854751L385.4002588667572,211.5331771854751L375.3458203971768,194.1860346520491Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Uthangarai
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="5" constituency="52"
					d="M415.5635742755039,159.24034172239294L405.5091358059217,176.83889211862265L385.4002588667572,176.83889211862265L375.3458203971768,159.24034172239294L385.4002588667572,141.8931991889665L405.5091358059217,141.8931991889665Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Bargur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="5" constituency="53"
					d="M345.18250498842644,176.83889211862265L355.2369434580087,159.24034172239294L375.3458203971768,159.24034172239294L385.4002588667572,176.83889211862265L375.3458203971768,194.1860346520491L355.2369434580087,194.1860346520491Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Krishnagiri
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="5" constituency="54"
					d="M315.01918957967973,194.1860346520491L325.07362804926197,176.83889211862265L345.18250498842644,176.83889211862265L355.2369434580087,194.1860346520491L345.18250498842644,211.5331771854751L325.07362804926197,211.5331771854751Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Veppanahalli
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="5" constituency="55"
					d="M315.01918957967973,194.1860346520491L325.07362804926197,211.5331771854751L315.01918957967973,229.1317275817048L294.6525065259084,229.1317275817048L284.598068056328,211.5331771854751L294.6525065259084,194.1860346520491Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Hosur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="5" constituency="56"
					d="M294.6525065259084,229.1317275817048L315.01918957967973,229.1317275817048L325.07362804926197,246.47887011513126L315.01918957967973,264.07742051136097L294.6525065259084,264.07742051136097L284.598068056328,246.47887011513126Z"
					fill="#ff0000" style="opacity: 1;">
                        <title class="geo-tooltip">Thalli
                            Communist Party of India</title>
                    </path>
                    <path class="land" district="6" constituency="57"
					d="M345.18250498842644,211.5331771854751L355.2369434580087,194.1860346520491L375.3458203971768,194.1860346520491L385.4002588667572,211.5331771854751L375.3458203971768,229.1317275817048L355.2369434580087,229.1317275817048Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Palacode
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="6" constituency="58"
					d="M315.01918957967973,229.1317275817048L325.07362804926197,211.5331771854751L345.18250498842644,211.5331771854751L355.2369434580087,229.1317275817048L345.18250498842644,246.47887011513126L325.07362804926197,246.47887011513126Z"
					fill="#ffff00" style="opacity: 1;">
                        <title class="geo-tooltip">Pennagaram
                            Pattali Makkal Katchi</title>
                    </path>
                    <path class="land" district="6" constituency="59"
					d="M345.18250498842644,246.47887011513126L355.2369434580087,229.1317275817048L375.3458203971768,229.1317275817048L385.4002588667572,246.47887011513126L375.3458203971768,264.07742051136097L355.2369434580087,264.07742051136097Z"
					fill="#ffff00" style="opacity: 1;">
                        <title class="geo-tooltip">Dharmapuri
                            Pattali Makkal Katchi</title>
                    </path>
                    <path class="land" district="6" constituency="60"
					d="M385.4002588667572,211.5331771854751L405.5091358059217,211.5331771854751L415.5635742755039,229.1317275817048L405.5091358059217,246.47887011513126L385.4002588667572,246.47887011513126L375.3458203971768,229.1317275817048Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Pappireddipatti
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="6" constituency="61"
					d="M405.5091358059217,211.5331771854751L415.5635742755039,194.1860346520491L435.9302573292716,194.1860346520491L445.9846957988557,211.5331771854751L435.9302573292716,229.1317275817048L415.5635742755039,229.1317275817048Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Harur
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="7" constituency="62"
					d="M435.9302573292716,264.07742051136097L445.9846957988557,246.47887011513126L466.093572738022,246.47887011513126L476.1480112076024,264.07742051136097L466.093572738022,281.4245630447874L445.9846957988557,281.4245630447874Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Chengam
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="7" constituency="63"
					d="M476.1480112076024,264.07742051136097L496.2568881467687,264.07742051136097L506.3113266163509,281.4245630447874L496.2568881467687,298.77170557821364L476.1480112076024,298.77170557821364L466.093572738022,281.4245630447874Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Tiruvannamalai
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="7" constituency="64"
					d="M496.2568881467687,264.07742051136097L506.3113266163509,246.47887011513126L526.4202035555136,246.47887011513126L536.4746420250995,264.07742051136097L526.4202035555136,281.4245630447874L506.3113266163509,281.4245630447874Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Kilpennathur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="7" constituency="65"
					d="M476.1480112076024,229.1317275817048L496.2568881467687,229.1317275817048L506.3113266163509,246.47887011513126L496.2568881467687,264.07742051136097L476.1480112076024,264.07742051136097L466.093572738022,246.47887011513126Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Kalasapakkam
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="7" constituency="66"
					d="M526.4202035555136,246.47887011513126L536.4746420250995,229.1317275817048L556.8413250788672,229.1317275817048L566.8957635484494,246.47887011513126L556.8413250788672,264.07742051136097L536.4746420250995,264.07742051136097Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Polur
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="7" constituency="67"
					d="M496.2568881467687,229.1317275817048L506.3113266163509,211.5331771854751L526.4202035555136,211.5331771854751L536.4746420250995,229.1317275817048L526.4202035555136,246.47887011513126L506.3113266163509,246.47887011513126Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Arani
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="7" constituency="68"
					d="M566.8957635484494,176.83889211862265L587.0046404876139,176.83889211862265L597.0590789571961,194.1860346520491L587.0046404876139,211.5331771854751L566.8957635484494,211.5331771854751L556.8413250788672,194.1860346520491Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Cheyyar
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="7" constituency="69"
					d="M526.4202035555136,211.5331771854751L536.4746420250995,194.1860346520491L556.8413250788672,194.1860346520491L566.8957635484494,211.5331771854751L556.8413250788672,229.1317275817048L536.4746420250995,229.1317275817048Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Vandavasi
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="8" constituency="70"
					d="M476.1480112076024,298.77170557821364L496.2568881467687,298.77170557821364L506.3113266163509,316.37025597444335L496.2568881467687,333.7173985078696L476.1480112076024,333.7173985078696L466.093572738022,316.37025597444335Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Gingee
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="8" constituency="71"
					d="M496.2568881467687,298.77170557821364L506.3113266163509,281.4245630447874L526.4202035555136,281.4245630447874L536.4746420250995,298.77170557821364L526.4202035555136,316.37025597444335L506.3113266163509,316.37025597444335Z"
					fill="#ffff00" style="opacity: 1;">
                        <title class="geo-tooltip">Mailam
                            Pattali Makkal Katchi</title>
                    </path>
                    <path class="land" district="8" constituency="72"
					d="M526.4202035555136,281.4245630447874L536.4746420250995,264.07742051136097L556.8413250788672,264.07742051136097L566.8957635484494,281.4245630447874L556.8413250788672,298.77170557821364L536.4746420250995,298.77170557821364Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Tindivanam
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="8" constituency="73"
					d="M496.2568881467687,333.7173985078696L506.3113266163509,316.37025597444335L526.4202035555136,316.37025597444335L536.4746420250995,333.7173985078696L526.4202035555136,351.3159489040993L506.3113266163509,351.3159489040993Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Vanur
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="8" constituency="74"
					d="M496.2568881467687,368.66309143752574L506.3113266163509,351.3159489040993L526.4202035555136,351.3159489040993L536.4746420250995,368.66309143752574L526.4202035555136,386.261641833755L506.3113266163509,386.261641833755Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Villupuram
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="8" constituency="75"
					d="M476.1480112076024,333.7173985078696L496.2568881467687,333.7173985078696L506.3113266163509,351.3159489040993L496.2568881467687,368.66309143752574L476.1480112076024,368.66309143752574L466.093572738022,351.3159489040993Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Vikravandi
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="8" constituency="76"
					d="M435.9302573292716,298.77170557821364L445.9846957988557,281.4245630447874L466.093572738022,281.4245630447874L476.1480112076024,298.77170557821364L466.093572738022,316.37025597444335L445.9846957988557,316.37025597444335Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Tirukkoyilur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="8" constituency="77"
					d="M496.2568881467687,403.60878436718144L506.3113266163509,386.261641833755L526.4202035555136,386.261641833755L536.4746420250995,403.60878436718144L526.4202035555136,420.9559269006081L506.3113266163509,420.9559269006081Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Ulundurpettai
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="8" constituency="78"
					d="M435.9302573292716,333.7173985078696L445.9846957988557,316.37025597444335L466.093572738022,316.37025597444335L476.1480112076024,333.7173985078696L466.093572738022,351.3159489040993L445.9846957988557,351.3159489040993Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Rishivandiyam
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="8" constituency="79"
					d="M435.9302573292716,368.66309143752574L445.9846957988557,351.3159489040993L466.093572738022,351.3159489040993L476.1480112076024,368.66309143752574L466.093572738022,386.261641833755L445.9846957988557,386.261641833755Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Sankarapuram
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="8" constituency="80"
					d="M476.1480112076024,368.66309143752574L496.2568881467687,368.66309143752574L506.3113266163509,386.261641833755L496.2568881467687,403.60878436718144L476.1480112076024,403.60878436718144L466.093572738022,386.261641833755Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Kallakurichi
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="9" constituency="81"
					d="M405.5091358059217,316.37025597444335L415.5635742755039,298.77170557821364L435.9302573292716,298.77170557821364L445.9846957988557,316.37025597444335L435.9302573292716,333.7173985078696L415.5635742755039,333.7173985078696Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Gangavalli
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="9" constituency="82"
					d="M405.5091358059217,281.4245630447874L415.5635742755039,264.07742051136097L435.9302573292716,264.07742051136097L445.9846957988557,281.4245630447874L435.9302573292716,298.77170557821364L415.5635742755039,298.77170557821364Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Attur
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="9" constituency="83"
					d="M405.5091358059217,246.47887011513126L415.5635742755039,229.1317275817048L435.9302573292716,229.1317275817048L445.9846957988557,246.47887011513126L435.9302573292716,264.07742051136097L415.5635742755039,264.07742051136097Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Yercaud
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="9" constituency="84"
					d="M385.4002588667572,246.47887011513126L405.5091358059217,246.47887011513126L415.5635742755039,264.07742051136097L405.5091358059217,281.4245630447874L385.4002588667572,281.4245630447874L375.3458203971768,264.07742051136097Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Omalur
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="9" constituency="85"
					d="M315.01918957967973,264.07742051136097L325.07362804926197,246.47887011513126L345.18250498842644,246.47887011513126L355.2369434580087,264.07742051136097L345.18250498842644,281.4245630447874L325.07362804926197,281.4245630447874Z"
					fill="#ffff00" style="opacity: 1;">
                        <title class="geo-tooltip">Mettur
                            Pattali Makkal Katchi</title>
                    </path>
                    <path class="land" district="9" constituency="86"
					d="M315.01918957967973,298.77170557821364L325.07362804926197,281.4245630447874L345.18250498842644,281.4245630447874L355.2369434580087,298.77170557821364L345.18250498842644,316.37025597444335L325.07362804926197,316.37025597444335Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Edappadi
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="9" constituency="87"
					d="M345.18250498842644,316.37025597444335L355.2369434580087,298.77170557821364L375.3458203971768,298.77170557821364L385.4002588667572,316.37025597444335L375.3458203971768,333.7173985078696L355.2369434580087,333.7173985078696Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Sankari
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="9" constituency="88"
					d="M345.18250498842644,281.4245630447874L355.2369434580087,264.07742051136097L375.3458203971768,264.07742051136097L385.4002588667572,281.4245630447874L375.3458203971768,298.77170557821364L355.2369434580087,298.77170557821364Z"
					fill="#ffff00" style="opacity: 1;">
                        <title class="geo-tooltip">Salem (West)
                            Pattali Makkal Katchi</title>
                    </path>
                    <path class="land" district="9" constituency="89"
					d="M385.4002588667572,281.4245630447874L405.5091358059217,281.4245630447874L415.5635742755039,298.77170557821364L405.5091358059217,316.37025597444335L385.4002588667572,316.37025597444335L375.3458203971768,298.77170557821364Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Salem (North)
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="9" constituency="90"
					d="M385.4002588667572,316.37025597444335L405.5091358059217,316.37025597444335L415.5635742755039,333.7173985078696L405.5091358059217,351.3159489040993L385.4002588667572,351.3159489040993L375.3458203971768,333.7173985078696Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Salem (South)
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="9" constituency="91"
					d="M345.18250498842644,351.3159489040993L355.2369434580087,333.7173985078696L375.3458203971768,333.7173985078696L385.4002588667572,351.3159489040993L375.3458203971768,368.66309143752574L355.2369434580087,368.66309143752574Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Veerapandi
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="10" constituency="92"
					d="M405.5091358059217,351.3159489040993L415.5635742755039,333.7173985078696L435.9302573292716,333.7173985078696L445.9846957988557,351.3159489040993L435.9302573292716,368.66309143752574L415.5635742755039,368.66309143752574Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Rasipuram
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="10" constituency="93"
					d="M405.5091358059217,386.261641833755L415.5635742755039,368.66309143752574L435.9302573292716,368.66309143752574L445.9846957988557,386.261641833755L435.9302573292716,403.60878436718144L415.5635742755039,403.60878436718144Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Senthamangalam
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="10" constituency="94"
					d="M385.4002588667572,386.261641833755L405.5091358059217,386.261641833755L415.5635742755039,403.60878436718144L405.5091358059217,420.9559269006081L385.4002588667572,420.9559269006081L375.3458203971768,403.60878436718144Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Namakkal
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="10" constituency="95"
					d="M345.18250498842644,420.9559269006081L355.2369434580087,403.60878436718144L375.3458203971768,403.60878436718144L385.4002588667572,420.9559269006081L375.3458203971768,438.5544772968376L355.2369434580087,438.5544772968376Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Paramathi-Velur
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="10" constituency="96"
					d="M385.4002588667572,351.3159489040993L405.5091358059217,351.3159489040993L415.5635742755039,368.66309143752574L405.5091358059217,386.261641833755L385.4002588667572,386.261641833755L375.3458203971768,368.66309143752574Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Tiruchengodu
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="10" constituency="97"
					d="M345.18250498842644,386.261641833755L355.2369434580087,368.66309143752574L375.3458203971768,368.66309143752574L385.4002588667572,386.261641833755L375.3458203971768,403.60878436718144L355.2369434580087,403.60878436718144Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Kumarapalayam
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="11" constituency="98"
					d="M294.6525065259084,333.7173985078696L315.01918957967973,333.7173985078696L325.07362804926197,351.3159489040993L315.01918957967973,368.66309143752574L294.6525065259084,368.66309143752574L284.598068056328,351.3159489040993Z"
					fill="#228b22" style="opacity: 1;">
                        <title class="geo-tooltip">Erode (East)
                            Indian National Congress</title>
                    </path>
                    <path class="land" district="11" constituency="99"
					d="M294.6525065259084,368.66309143752574L315.01918957967973,368.66309143752574L325.07362804926197,386.261641833755L315.01918957967973,403.60878436718144L294.6525065259084,403.60878436718144L284.598068056328,386.261641833755Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Erode (West)
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="11" constituency="100"
					d="M315.01918957967973,333.7173985078696L325.07362804926197,316.37025597444335L345.18250498842644,316.37025597444335L355.2369434580087,333.7173985078696L345.18250498842644,351.3159489040993L325.07362804926197,351.3159489040993Z"
					fill="#ff8c00" style="opacity: 1;">
                        <title class="geo-tooltip">Modakkurichi
                            Bharatiya Janata Party</title>
                    </path>
                    <path class="land" district="11" constituency="101"
					d="M315.01918957967973,403.60878436718144L325.07362804926197,386.261641833755L345.18250498842644,386.261641833755L355.2369434580087,403.60878436718144L345.18250498842644,420.9559269006081L325.07362804926197,420.9559269006081Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Dharapuram
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="11" constituency="102"
					d="M315.01918957967973,368.66309143752574L325.07362804926197,351.3159489040993L345.18250498842644,351.3159489040993L355.2369434580087,368.66309143752574L345.18250498842644,386.261641833755L325.07362804926197,386.261641833755Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Kangayam
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="11" constituency="103"
					d="M254.43475264757944,368.66309143752574L264.4891911171635,351.3159489040993L284.598068056328,351.3159489040993L294.6525065259084,368.66309143752574L284.598068056328,386.261641833755L264.4891911171635,386.261641833755Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Perundurai
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="11" constituency="104"
					d="M315.01918957967973,298.77170557821364L325.07362804926197,316.37025597444335L315.01918957967973,333.7173985078696L294.6525065259084,333.7173985078696L284.598068056328,316.37025597444335L294.6525065259084,298.77170557821364Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Bhavani
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="11" constituency="105"
					d="M254.43475264757944,333.7173985078696L264.4891911171635,316.37025597444335L284.598068056328,316.37025597444335L294.6525065259084,333.7173985078696L284.598068056328,351.3159489040993L264.4891911171635,351.3159489040993Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Anthiyur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="11" constituency="106"
					d="M224.27143723883455,351.3159489040993L234.3258757084168,333.7173985078696L254.43475264757944,333.7173985078696L264.4891911171635,351.3159489040993L254.43475264757944,368.66309143752574L234.3258757084168,368.66309143752574Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Gobichettipalayam
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="11" constituency="107"
					d="M234.3258757084168,333.7173985078696L224.27143723883455,351.3159489040993L204.16256029966826,351.3159489040993L194.10812183008602,333.7173985078696L204.16256029966826,316.37025597444335L224.27143723883455,316.37025597444335Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Bhavanisagar
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="12" constituency="108"
					d="M163.68700030673426,386.261641833755L173.7414387763165,368.66309143752574L194.10812183008602,368.66309143752574L204.16256029966826,386.261641833755L194.10812183008602,403.60878436718144L173.7414387763165,403.60878436718144Z"
					fill="#228b22" style="opacity: 1;">
                        <title class="geo-tooltip">Udhagamandalam
                            Indian National Congress</title>
                    </path>
                    <path class="land" district="12" constituency="109"
					d="M163.68700030673426,351.3159489040993L173.7414387763165,368.66309143752574L163.68700030673426,386.261641833755L143.5781233675716,386.261641833755L133.52368489798573,368.66309143752574L143.5781233675716,351.3159489040993Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Gudalur
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="12" constituency="110"
					d="M163.68700030673426,351.3159489040993L173.7414387763165,333.7173985078696L194.10812183008602,333.7173985078696L204.16256029966826,351.3159489040993L194.10812183008602,368.66309143752574L173.7414387763165,368.66309143752574Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Coonoor
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="13" constituency="111"
					d="M204.16256029966826,351.3159489040993L224.27143723883455,351.3159489040993L234.3258757084168,368.66309143752574L224.27143723883455,386.261641833755L204.16256029966826,386.261641833755L194.10812183008602,368.66309143752574Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Mettuppalayam
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="32" constituency="112"
					d="M294.6525065259084,403.60878436718144L315.01918957967973,403.60878436718144L325.07362804926197,420.9559269006081L315.01918957967973,438.5544772968376L294.6525065259084,438.5544772968376L284.598068056328,420.9559269006081Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Avanashi
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="32" constituency="113"
					d="M315.01918957967973,438.5544772968376L325.07362804926197,420.9559269006081L345.18250498842644,420.9559269006081L355.2369434580087,438.5544772968376L345.18250498842644,455.9016198302638L325.07362804926197,455.9016198302638Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Tiruppur (North)
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="32" constituency="114"
					d="M294.6525065259084,438.5544772968376L315.01918957967973,438.5544772968376L325.07362804926197,455.9016198302638L315.01918957967973,473.5001702264933L294.6525065259084,473.5001702264933L284.598068056328,455.9016198302638Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Tiruppur (South)
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="32" constituency="115"
					d="M294.6525065259084,473.5001702264933L315.01918957967973,473.5001702264933L325.07362804926197,490.84731275991976L315.01918957967973,508.44586315614947L294.6525065259084,508.44586315614947L284.598068056328,490.84731275991976Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Palladam
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="13" constituency="116"
					d="M254.43475264757944,438.5544772968376L264.4891911171635,420.9559269006081L284.598068056328,420.9559269006081L294.6525065259084,438.5544772968376L284.598068056328,455.9016198302638L264.4891911171635,455.9016198302638Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Sulur
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="13" constituency="117"
					d="M204.16256029966826,386.261641833755L224.27143723883455,386.261641833755L234.3258757084168,403.60878436718144L224.27143723883455,420.9559269006081L204.16256029966826,420.9559269006081L194.10812183008602,403.60878436718144Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Kavundampalayam
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="13" constituency="118"
					d="M224.27143723883455,386.261641833755L234.3258757084168,368.66309143752574L254.43475264757944,368.66309143752574L264.4891911171635,386.261641833755L254.43475264757944,403.60878436718144L234.3258757084168,403.60878436718144Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Coimbatore (North)
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="13" constituency="119"
					d="M204.16256029966826,420.9559269006081L224.27143723883455,420.9559269006081L234.3258757084168,438.5544772968376L224.27143723883455,455.9016198302638L204.16256029966826,455.9016198302638L194.10812183008602,438.5544772968376Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Thondamuthur
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="13" constituency="120"
					d="M224.27143723883455,420.9559269006081L234.3258757084168,403.60878436718144L254.43475264757944,403.60878436718144L264.4891911171635,420.9559269006081L254.43475264757944,438.5544772968376L234.3258757084168,438.5544772968376Z"
					fill="#ff8c00" style="opacity: 1;">
                        <title class="geo-tooltip">Coimbatore (South)
                            Bharatiya Janata Party</title>
                    </path>
                    <path class="land" district="13" constituency="121"
					d="M254.43475264757944,403.60878436718144L264.4891911171635,386.261641833755L284.598068056328,386.261641833755L294.6525065259084,403.60878436718144L284.598068056328,420.9559269006081L264.4891911171635,420.9559269006081Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Singanallur
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="13" constituency="122"
					d="M224.27143723883455,455.9016198302638L234.3258757084168,438.5544772968376L254.43475264757944,438.5544772968376L264.4891911171635,455.9016198302638L254.43475264757944,473.5001702264933L234.3258757084168,473.5001702264933Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Kinathukadavu
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="13" constituency="123"
					d="M254.43475264757944,473.5001702264933L264.4891911171635,455.9016198302638L284.598068056328,455.9016198302638L294.6525065259084,473.5001702264933L284.598068056328,490.84731275991976L264.4891911171635,490.84731275991976Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Pollachi
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="13" constituency="124"
					d="M234.3258757084168,473.5001702264933L254.43475264757944,473.5001702264933L264.4891911171635,490.84731275991976L254.43475264757944,508.44586315614947L234.3258757084168,508.44586315614947L224.27143723883455,490.84731275991976Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Valparai
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="32" constituency="125"
					d="M254.43475264757944,508.44586315614947L264.4891911171635,490.84731275991976L284.598068056328,490.84731275991976L294.6525065259084,508.44586315614947L284.598068056328,525.7930056895759L264.4891911171635,525.7930056895759Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Udumalaipettai
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="32" constituency="126"
					d="M234.3258757084168,508.44586315614947L254.43475264757944,508.44586315614947L264.4891911171635,525.7930056895759L254.43475264757944,543.1401482230024L234.3258757084168,543.1401482230024L224.27143723883455,525.7930056895759Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Madathukulam
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="14" constituency="127"
					d="M294.6525065259084,543.1401482230024L315.01918957967973,543.1401482230024L325.07362804926197,560.7386986192319L315.01918957967973,578.0858411526581L294.6525065259084,578.0858411526581L284.598068056328,560.7386986192319Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Palani
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="14" constituency="128"
					d="M294.6525065259084,508.44586315614947L315.01918957967973,508.44586315614947L325.07362804926197,525.7930056895759L315.01918957967973,543.1401482230024L294.6525065259084,543.1401482230024L284.598068056328,525.7930056895759Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Oddanchatram
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="14" constituency="129"
					d="M315.01918957967973,508.44586315614947L325.07362804926197,490.84731275991976L345.18250498842644,490.84731275991976L355.2369434580087,508.44586315614947L345.18250498842644,525.7930056895759L325.07362804926197,525.7930056895759Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Athoor
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="14" constituency="130"
					d="M315.01918957967973,543.1401482230024L325.07362804926197,525.7930056895759L345.18250498842644,525.7930056895759L355.2369434580087,543.1401482230024L345.18250498842644,560.7386986192319L325.07362804926197,560.7386986192319Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Nilakkottai
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="14" constituency="131"
					d="M345.18250498842644,525.7930056895759L355.2369434580087,508.44586315614947L375.3458203971768,508.44586315614947L385.4002588667572,525.7930056895759L375.3458203971768,543.1401482230024L355.2369434580087,543.1401482230024Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Natham
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="14" constituency="132"
					d="M345.18250498842644,490.84731275991976L355.2369434580087,473.5001702264933L375.3458203971768,473.5001702264933L385.4002588667572,490.84731275991976L375.3458203971768,508.44586315614947L355.2369434580087,508.44586315614947Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Dindigul
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="14" constituency="133"
					d="M315.01918957967973,473.5001702264933L325.07362804926197,455.9016198302638L345.18250498842644,455.9016198302638L355.2369434580087,473.5001702264933L345.18250498842644,490.84731275991976L325.07362804926197,490.84731275991976Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Vedasandur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="15" constituency="134"
					d="M345.18250498842644,455.9016198302638L355.2369434580087,438.5544772968376L375.3458203971768,438.5544772968376L385.4002588667572,455.9016198302638L375.3458203971768,473.5001702264933L355.2369434580087,473.5001702264933Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Aravakurichi
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="15" constituency="135"
					d="M385.4002588667572,420.9559269006081L405.5091358059217,420.9559269006081L415.5635742755039,438.5544772968376L405.5091358059217,455.9016198302638L385.4002588667572,455.9016198302638L375.3458203971768,438.5544772968376Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Karur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="15" constituency="136"
					d="M385.4002588667572,455.9016198302638L405.5091358059217,455.9016198302638L415.5635742755039,473.5001702264933L405.5091358059217,490.84731275991976L385.4002588667572,490.84731275991976L375.3458203971768,473.5001702264933Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Krishnarayapuram
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="15" constituency="137"
					d="M405.5091358059217,455.9016198302638L415.5635742755039,438.5544772968376L435.9302573292716,438.5544772968376L445.9846957988557,455.9016198302638L435.9302573292716,473.5001702264933L415.5635742755039,473.5001702264933Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Kulithalai
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="16" constituency="138"
					d="M385.4002588667572,525.7930056895759L405.5091358059217,525.7930056895759L415.5635742755039,543.1401482230024L405.5091358059217,560.7386986192319L385.4002588667572,560.7386986192319L375.3458203971768,543.1401482230024Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Manapparai
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="16" constituency="139"
					d="M385.4002588667572,490.84731275991976L405.5091358059217,490.84731275991976L415.5635742755039,508.44586315614947L405.5091358059217,525.7930056895759L385.4002588667572,525.7930056895759L375.3458203971768,508.44586315614947Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Srirangam
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="16" constituency="140"
					d="M405.5091358059217,525.7930056895759L415.5635742755039,508.44586315614947L435.9302573292716,508.44586315614947L445.9846957988557,525.7930056895759L435.9302573292716,543.1401482230024L415.5635742755039,543.1401482230024Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Tiruchirappalli (West)
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="16" constituency="141"
					d="M405.5091358059217,490.84731275991976L415.5635742755039,473.5001702264933L435.9302573292716,473.5001702264933L445.9846957988557,490.84731275991976L435.9302573292716,508.44586315614947L415.5635742755039,508.44586315614947Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Tiruchirappalli (East)
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="16" constituency="142"
					d="M435.9302573292716,473.5001702264933L445.9846957988557,455.9016198302638L466.093572738022,455.9016198302638L476.1480112076024,473.5001702264933L466.093572738022,490.84731275991976L445.9846957988557,490.84731275991976Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Thiruverumbur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="16" constituency="143"
					d="M476.1480112076024,438.5544772968376L496.2568881467687,438.5544772968376L506.3113266163509,455.9016198302638L496.2568881467687,473.5001702264933L476.1480112076024,473.5001702264933L466.093572738022,455.9016198302638Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Lalgudi
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="16" constituency="144"
					d="M435.9302573292716,438.5544772968376L445.9846957988557,420.9559269006081L466.093572738022,420.9559269006081L476.1480112076024,438.5544772968376L466.093572738022,455.9016198302638L445.9846957988557,455.9016198302638Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Manachanallur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="16" constituency="145"
					d="M405.5091358059217,420.9559269006081L415.5635742755039,403.60878436718144L435.9302573292716,403.60878436718144L445.9846957988557,420.9559269006081L435.9302573292716,438.5544772968376L415.5635742755039,438.5544772968376Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Musiri
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="16" constituency="146"
					d="M435.9302573292716,403.60878436718144L445.9846957988557,386.261641833755L466.093572738022,386.261641833755L476.1480112076024,403.60878436718144L466.093572738022,420.9559269006081L445.9846957988557,420.9559269006081Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Thuraiyur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="17" constituency="147"
					d="M496.2568881467687,473.5001702264933L506.3113266163509,455.9016198302638L526.4202035555136,455.9016198302638L536.4746420250995,473.5001702264933L526.4202035555136,490.84731275991976L506.3113266163509,490.84731275991976Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Perambalur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="17" constituency="148"
					d="M526.4202035555136,455.9016198302638L536.4746420250995,438.5544772968376L556.8413250788672,438.5544772968376L566.8957635484494,455.9016198302638L556.8413250788672,473.5001702264933L536.4746420250995,473.5001702264933Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Kunnam
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="31" constituency="149"
					d="M526.4202035555136,490.84731275991976L536.4746420250995,473.5001702264933L556.8413250788672,473.5001702264933L566.8957635484494,490.84731275991976L556.8413250788672,508.44586315614947L536.4746420250995,508.44586315614947Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Ariyalur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="31" constituency="150"
					d="M566.8957635484494,455.9016198302638L587.0046404876139,455.9016198302638L597.0590789571961,473.5001702264933L587.0046404876139,490.84731275991976L566.8957635484494,490.84731275991976L556.8413250788672,473.5001702264933Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Jayankondam
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="18" constituency="151"
					d="M476.1480112076024,403.60878436718144L496.2568881467687,403.60878436718144L506.3113266163509,420.9559269006081L496.2568881467687,438.5544772968376L476.1480112076024,438.5544772968376L466.093572738022,420.9559269006081Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Tittakudi
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="18" constituency="152"
					d="M496.2568881467687,438.5544772968376L506.3113266163509,420.9559269006081L526.4202035555136,420.9559269006081L536.4746420250995,438.5544772968376L526.4202035555136,455.9016198302638L506.3113266163509,455.9016198302638Z"
					fill="#228b22" style="opacity: 1;">
                        <title class="geo-tooltip">Vriddhachalam
                            Indian National Congress</title>
                    </path>
                    <path class="land" district="18" constituency="153"
					d="M566.8957635484494,386.261641833755L587.0046404876139,386.261641833755L597.0590789571961,403.60878436718144L587.0046404876139,420.9559269006081L566.8957635484494,420.9559269006081L556.8413250788672,403.60878436718144Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Neyveli
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="18" constituency="154"
					d="M526.4202035555136,386.261641833755L536.4746420250995,368.66309143752574L556.8413250788672,368.66309143752574L566.8957635484494,386.261641833755L556.8413250788672,403.60878436718144L536.4746420250995,403.60878436718144Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Panruti
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="18" constituency="155"
					d="M617.1679558963624,403.60878436718144L627.2223943659446,386.261641833755L647.3312713051073,386.261641833755L657.3857097746913,403.60878436718144L647.3312713051073,420.9559269006081L627.2223943659446,420.9559269006081Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Cuddalore
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="18" constituency="156"
					d="M587.0046404876139,420.9559269006081L597.0590789571961,403.60878436718144L617.1679558963624,403.60878436718144L627.2223943659446,420.9559269006081L617.1679558963624,438.5544772968376L597.0590789571961,438.5544772968376Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Kurinjipadi
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="18" constituency="157"
					d="M526.4202035555136,420.9559269006081L536.4746420250995,403.60878436718144L556.8413250788672,403.60878436718144L566.8957635484494,420.9559269006081L556.8413250788672,438.5544772968376L536.4746420250995,438.5544772968376Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Bhuvanagiri
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="18" constituency="158"
					d="M617.1679558963624,438.5544772968376L627.2223943659446,420.9559269006081L647.3312713051073,420.9559269006081L657.3857097746913,438.5544772968376L647.3312713051073,455.9016198302638L627.2223943659446,455.9016198302638Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Chidambaram
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="18" constituency="159"
					d="M566.8957635484494,420.9559269006081L587.0046404876139,420.9559269006081L597.0590789571961,438.5544772968376L587.0046404876139,455.9016198302638L566.8957635484494,455.9016198302638L556.8413250788672,438.5544772968376Z"
					fill="#1e90ff" style="opacity: 1;">
                        <title class="geo-tooltip">Kattumannarkoil
                            Viduthalai Chiruthaigal Katchi</title>
                    </path>
                    <path class="land" district="19" constituency="160"
					d="M587.0046404876139,455.9016198302638L597.0590789571961,438.5544772968376L617.1679558963624,438.5544772968376L627.2223943659446,455.9016198302638L617.1679558963624,473.5001702264933L597.0590789571961,473.5001702264933Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Sirkazhi
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="19" constituency="161"
					d="M587.0046404876139,490.84731275991976L597.0590789571961,473.5001702264933L617.1679558963624,473.5001702264933L627.2223943659446,490.84731275991976L617.1679558963624,508.44586315614947L597.0590789571961,508.44586315614947Z"
					fill="#228b22" style="opacity: 1;">
                        <title class="geo-tooltip">Mayiladuthurai
                            Indian National Congress</title>
                    </path>
                    <path class="land" district="19" constituency="162"
					d="M617.1679558963624,473.5001702264933L627.2223943659446,455.9016198302638L647.3312713051073,455.9016198302638L657.3857097746913,473.5001702264933L647.3312713051073,490.84731275991976L627.2223943659446,490.84731275991976Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Poompuhar
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="19" constituency="163"
					d="M617.1679558963624,508.44586315614947L627.2223943659446,490.84731275991976L647.3312713051073,490.84731275991976L657.3857097746913,508.44586315614947L647.3312713051073,525.7930056895759L627.2223943659446,525.7930056895759Z"
					fill="#1e90ff" style="opacity: 1;">
                        <title class="geo-tooltip">Nagapattinam
                            Viduthalai Chiruthaigal Katchi</title>
                    </path>
                    <path class="land" district="19" constituency="164"
					d="M587.0046404876139,525.7930056895759L597.0590789571961,508.44586315614947L617.1679558963624,508.44586315614947L627.2223943659446,525.7930056895759L617.1679558963624,543.1401482230024L597.0590789571961,543.1401482230024Z"
					fill="#ff0000" style="opacity: 1;">
                        <title class="geo-tooltip">Kilvelur
                            Communist Party of India (Marxist)</title>
                    </path>
                    <path class="land" district="19" constituency="165"
					d="M617.1679558963624,543.1401482230024L627.2223943659446,525.7930056895759L647.3312713051073,525.7930056895759L657.3857097746913,543.1401482230024L647.3312713051073,560.7386986192319L627.2223943659446,560.7386986192319Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Vedaranyam
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="20" constituency="166"
					d="M566.8957635484494,525.7930056895759L587.0046404876139,525.7930056895759L597.0590789571961,543.1401482230024L587.0046404876139,560.7386986192319L566.8957635484494,560.7386986192319L556.8413250788672,543.1401482230024Z"
					fill="#ff0000" style="opacity: 1;">
                        <title class="geo-tooltip">Thiruthuraipoondi
                            Communist Party of India</title>
                    </path>
                    <path class="land" district="20" constituency="167"
					d="M526.4202035555136,525.7930056895759L536.4746420250995,508.44586315614947L556.8413250788672,508.44586315614947L566.8957635484494,525.7930056895759L556.8413250788672,543.1401482230024L536.4746420250995,543.1401482230024Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Mannargudi
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="20" constituency="168"
					d="M496.2568881467687,508.44586315614947L506.3113266163509,490.84731275991976L526.4202035555136,490.84731275991976L536.4746420250995,508.44586315614947L526.4202035555136,525.7930056895759L506.3113266163509,525.7930056895759Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Thiruvarur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="20" constituency="169"
					d="M566.8957635484494,490.84731275991976L587.0046404876139,490.84731275991976L597.0590789571961,508.44586315614947L587.0046404876139,525.7930056895759L566.8957635484494,525.7930056895759L556.8413250788672,508.44586315614947Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Nannilam
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="21" constituency="170"
					d="M476.1480112076024,473.5001702264933L496.2568881467687,473.5001702264933L506.3113266163509,490.84731275991976L496.2568881467687,508.44586315614947L476.1480112076024,508.44586315614947L466.093572738022,490.84731275991976Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Thiruvidaimarudur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="21" constituency="171"
					d="M435.9302573292716,508.44586315614947L445.9846957988557,490.84731275991976L466.093572738022,490.84731275991976L476.1480112076024,508.44586315614947L466.093572738022,525.7930056895759L445.9846957988557,525.7930056895759Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Kumbakonam
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="21" constituency="172"
					d="M435.9302573292716,543.1401482230024L445.9846957988557,525.7930056895759L466.093572738022,525.7930056895759L476.1480112076024,543.1401482230024L466.093572738022,560.7386986192319L445.9846957988557,560.7386986192319Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Papanasam
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="21" constituency="173"
					d="M476.1480112076024,543.1401482230024L496.2568881467687,543.1401482230024L506.3113266163509,560.7386986192319L496.2568881467687,578.0858411526581L476.1480112076024,578.0858411526581L466.093572738022,560.7386986192319Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Thiruvaiyaru
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="21" constituency="174"
					d="M496.2568881467687,578.0858411526581L506.3113266163509,560.7386986192319L526.4202035555136,560.7386986192319L536.4746420250995,578.0858411526581L526.4202035555136,595.6843915488878L506.3113266163509,595.6843915488878Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Thanjavur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="21" constituency="175"
					d="M476.1480112076024,508.44586315614947L496.2568881467687,508.44586315614947L506.3113266163509,525.7930056895759L496.2568881467687,543.1401482230024L476.1480112076024,543.1401482230024L466.093572738022,525.7930056895759Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Orathanadu
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="21" constituency="176"
					d="M496.2568881467687,543.1401482230024L506.3113266163509,525.7930056895759L526.4202035555136,525.7930056895759L536.4746420250995,543.1401482230024L526.4202035555136,560.7386986192319L506.3113266163509,560.7386986192319Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Pattukkottai
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="21" constituency="177"
					d="M526.4202035555136,560.7386986192319L536.4746420250995,543.1401482230024L556.8413250788672,543.1401482230024L566.8957635484494,560.7386986192319L556.8413250788672,578.0858411526581L536.4746420250995,578.0858411526581Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Peravurani
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="22" constituency="178"
					d="M476.1480112076024,578.0858411526581L496.2568881467687,578.0858411526581L506.3113266163509,595.6843915488878L496.2568881467687,613.0315340823142L476.1480112076024,613.0315340823142L466.093572738022,595.6843915488878Z"
					fill="#ff0000" style="opacity: 1;">
                        <title class="geo-tooltip">Gandarvakkottai
                            Communist Party of India (Marxist)</title>
                    </path>
                    <path class="land" district="22" constituency="179"
					d="M435.9302573292716,578.0858411526581L445.9846957988557,560.7386986192319L466.093572738022,560.7386986192319L476.1480112076024,578.0858411526581L466.093572738022,595.6843915488878L445.9846957988557,595.6843915488878Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Viralimalai
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="22" constituency="180"
					d="M476.1480112076024,613.0315340823142L496.2568881467687,613.0315340823142L506.3113266163509,630.630084478544L496.2568881467687,647.9772270119704L476.1480112076024,647.9772270119704L466.093572738022,630.630084478544Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Pudukkottai
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="22" constituency="181"
					d="M435.9302573292716,613.0315340823142L445.9846957988557,595.6843915488878L466.093572738022,595.6843915488878L476.1480112076024,613.0315340823142L466.093572738022,630.630084478544L445.9846957988557,630.630084478544Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Thirumayam
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="22" constituency="182"
					d="M496.2568881467687,613.0315340823142L506.3113266163509,595.6843915488878L526.4202035555136,595.6843915488878L536.4746420250995,613.0315340823142L526.4202035555136,630.630084478544L506.3113266163509,630.630084478544Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Alangudi
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="22" constituency="183"
					d="M526.4202035555136,595.6843915488878L536.4746420250995,578.0858411526581L556.8413250788672,578.0858411526581L566.8957635484494,595.6843915488878L556.8413250788672,613.0315340823142L536.4746420250995,613.0315340823142Z"
					fill="#228b22" style="opacity: 1;">
                        <title class="geo-tooltip">Aranthangi
                            Indian National Congress</title>
                    </path>
                    <path class="land" district="23" constituency="184"
					d="M405.5091358059217,560.7386986192319L415.5635742755039,543.1401482230024L435.9302573292716,543.1401482230024L445.9846957988557,560.7386986192319L435.9302573292716,578.0858411526581L415.5635742755039,578.0858411526581Z"
					fill="#228b22" style="opacity: 1;">
                        <title class="geo-tooltip">Karaikudi
                            Indian National Congress</title>
                    </path>
                    <path class="land" district="23" constituency="185"
					d="M385.4002588667572,560.7386986192319L405.5091358059217,560.7386986192319L415.5635742755039,578.0858411526581L405.5091358059217,595.6843915488878L385.4002588667572,595.6843915488878L375.3458203971768,578.0858411526581Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Tiruppattur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="23" constituency="186"
					d="M405.5091358059217,595.6843915488878L415.5635742755039,578.0858411526581L435.9302573292716,578.0858411526581L445.9846957988557,595.6843915488878L435.9302573292716,613.0315340823142L415.5635742755039,613.0315340823142Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Sivaganga
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="23" constituency="187"
					d="M405.5091358059217,630.630084478544L415.5635742755039,613.0315340823142L435.9302573292716,613.0315340823142L445.9846957988557,630.630084478544L435.9302573292716,647.9772270119704L415.5635742755039,647.9772270119704Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Manamadurai
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="24" constituency="188"
					d="M345.18250498842644,560.7386986192319L355.2369434580087,543.1401482230024L375.3458203971768,543.1401482230024L385.4002588667572,560.7386986192319L375.3458203971768,578.0858411526581L355.2369434580087,578.0858411526581Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Melur
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="24" constituency="189"
					d="M385.4002588667572,595.6843915488878L405.5091358059217,595.6843915488878L415.5635742755039,613.0315340823142L405.5091358059217,630.630084478544L385.4002588667572,630.630084478544L375.3458203971768,613.0315340823142Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Madurai East
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="24" constituency="190"
					d="M315.01918957967973,578.0858411526581L325.07362804926197,560.7386986192319L345.18250498842644,560.7386986192319L355.2369434580087,578.0858411526581L345.18250498842644,595.6843915488878L325.07362804926197,595.6843915488878Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Sholavandan
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="24" constituency="191"
					d="M345.18250498842644,630.630084478544L355.2369434580087,613.0315340823142L375.3458203971768,613.0315340823142L385.4002588667572,630.630084478544L375.3458203971768,647.9772270119704L355.2369434580087,647.9772270119704Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Madurai North
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="24" constituency="192"
					d="M315.01918957967973,647.9772270119704L325.07362804926197,630.630084478544L345.18250498842644,630.630084478544L355.2369434580087,647.9772270119704L345.18250498842644,665.3243695453966L325.07362804926197,665.3243695453966Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Madurai South
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="24" constituency="193"
					d="M315.01918957967973,613.0315340823142L325.07362804926197,595.6843915488878L345.18250498842644,595.6843915488878L355.2369434580087,613.0315340823142L345.18250498842644,630.630084478544L325.07362804926197,630.630084478544Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Madurai Central
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="24" constituency="194"
					d="M345.18250498842644,595.6843915488878L355.2369434580087,578.0858411526581L375.3458203971768,578.0858411526581L385.4002588667572,595.6843915488878L375.3458203971768,613.0315340823142L355.2369434580087,613.0315340823142Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Madurai West
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="24" constituency="195"
					d="M294.6525065259084,647.9772270119704L315.01918957967973,647.9772270119704L325.07362804926197,665.3243695453966L315.01918957967973,682.9229199416263L294.6525065259084,682.9229199416263L284.598068056328,665.3243695453966Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Thiruparankundram
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="24" constituency="196"
					d="M294.6525065259084,613.0315340823142L315.01918957967973,613.0315340823142L325.07362804926197,630.630084478544L315.01918957967973,647.9772270119704L294.6525065259084,647.9772270119704L284.598068056328,630.630084478544Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Thirumangalam
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="24" constituency="197"
					d="M294.6525065259084,578.0858411526581L315.01918957967973,578.0858411526581L325.07362804926197,595.6843915488878L315.01918957967973,613.0315340823142L294.6525065259084,613.0315340823142L284.598068056328,595.6843915488878Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Usilampatti
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="25" constituency="198"
					d="M264.4891911171635,630.630084478544L284.598068056328,630.630084478544L294.6525065259084,647.9772270119704L284.598068056328,665.3243695453966L264.4891911171635,665.3243695453966L254.43475264757944,647.9772270119704Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Andipatti
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="25" constituency="199"
					d="M254.43475264757944,543.1401482230024L264.4891911171635,525.7930056895759L284.598068056328,525.7930056895759L294.6525065259084,543.1401482230024L284.598068056328,560.7386986192319L264.4891911171635,560.7386986192319Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Periyakulam
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="25" constituency="200"
					d="M264.4891911171635,560.7386986192319L284.598068056328,560.7386986192319L294.6525065259084,578.0858411526581L284.598068056328,595.6843915488878L264.4891911171635,595.6843915488878L254.43475264757944,578.0858411526581Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Bodinayakanur
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="25" constituency="201"
					d="M264.4891911171635,595.6843915488878L284.598068056328,595.6843915488878L294.6525065259084,613.0315340823142L284.598068056328,630.630084478544L264.4891911171635,630.630084478544L254.43475264757944,613.0315340823142Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Cumbum
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="26" constituency="202"
					d="M345.18250498842644,700.2700624750526L355.2369434580087,682.9229199416263L375.3458203971768,682.9229199416263L385.4002588667572,700.2700624750526L375.3458203971768,717.8686128712823L355.2369434580087,717.8686128712823Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Rajapalayam
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="26" constituency="203"
					d="M345.18250498842644,665.3243695453966L355.2369434580087,647.9772270119704L375.3458203971768,647.9772270119704L385.4002588667572,665.3243695453966L375.3458203971768,682.9229199416263L355.2369434580087,682.9229199416263Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Srivilliputhur
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="26" constituency="204"
					d="M385.4002588667572,665.3243695453966L405.5091358059217,665.3243695453966L415.5635742755039,682.9229199416263L405.5091358059217,700.2700624750526L385.4002588667572,700.2700624750526L375.3458203971768,682.9229199416263Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Sattur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="26" constituency="205"
					d="M405.5091358059217,665.3243695453966L415.5635742755039,647.9772270119704L435.9302573292716,647.9772270119704L445.9846957988557,665.3243695453966L435.9302573292716,682.9229199416263L415.5635742755039,682.9229199416263Z"
					fill="#228b22" style="opacity: 1;">
                        <title class="geo-tooltip">Sivakasi
                            Indian National Congress</title>
                    </path>
                    <path class="land" district="26" constituency="206"
					d="M385.4002588667572,630.630084478544L405.5091358059217,630.630084478544L415.5635742755039,647.9772270119704L405.5091358059217,665.3243695453966L385.4002588667572,665.3243695453966L375.3458203971768,647.9772270119704Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Virudhunagar
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="26" constituency="207"
					d="M435.9302573292716,682.9229199416263L445.9846957988557,665.3243695453966L466.093572738022,665.3243695453966L476.1480112076024,682.9229199416263L466.093572738022,700.2700624750526L445.9846957988557,700.2700624750526Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Aruppukkottai
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="26" constituency="208"
					d="M435.9302573292716,647.9772270119704L445.9846957988557,630.630084478544L466.093572738022,630.630084478544L476.1480112076024,647.9772270119704L466.093572738022,665.3243695453966L445.9846957988557,665.3243695453966Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Tiruchuli
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="27" constituency="209"
					d="M476.1480112076024,647.9772270119704L496.2568881467687,647.9772270119704L506.3113266163509,665.3243695453966L496.2568881467687,682.9229199416263L476.1480112076024,682.9229199416263L466.093572738022,665.3243695453966Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Paramakudi
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="27" constituency="210"
					d="M496.2568881467687,647.9772270119704L506.3113266163509,630.630084478544L526.4202035555136,630.630084478544L536.4746420250995,647.9772270119704L526.4202035555136,665.3243695453966L506.3113266163509,665.3243695453966Z"
					fill="#228b22" style="opacity: 1;">
                        <title class="geo-tooltip">Tiruvadanai
                            Indian National Congress</title>
                    </path>
                    <path class="land" district="27" constituency="211"
					d="M526.4202035555136,665.3243695453966L536.4746420250995,647.9772270119704L556.8413250788672,647.9772270119704L566.8957635484494,665.3243695453966L556.8413250788672,682.9229199416263L536.4746420250995,682.9229199416263Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Ramanathapuram
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="27" constituency="212"
					d="M496.2568881467687,682.9229199416263L506.3113266163509,665.3243695453966L526.4202035555136,665.3243695453966L536.4746420250995,682.9229199416263L526.4202035555136,700.2700624750526L506.3113266163509,700.2700624750526Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Mudhukulathur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="28" constituency="213"
					d="M405.5091358059217,700.2700624750526L415.5635742755039,682.9229199416263L435.9302573292716,682.9229199416263L445.9846957988557,700.2700624750526L435.9302573292716,717.8686128712823L415.5635742755039,717.8686128712823Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Vilathikulam
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="28" constituency="214"
					d="M385.4002588667572,735.2157554047087L405.5091358059217,735.2157554047087L415.5635742755039,752.5628979381349L405.5091358059217,770.1614483343646L385.4002588667572,770.1614483343646L375.3458203971768,752.5628979381349Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Thoothukkudi
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="28" constituency="215"
					d="M385.4002588667572,770.1614483343646L405.5091358059217,770.1614483343646L415.5635742755039,787.5085908677911L405.5091358059217,805.1071412640208L385.4002588667572,805.1071412640208L375.3458203971768,787.5085908677911Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Tiruchendur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="28" constituency="216"
					d="M345.18250498842644,770.1614483343646L355.2369434580087,752.5628979381349L375.3458203971768,752.5628979381349L385.4002588667572,770.1614483343646L375.3458203971768,787.5085908677911L355.2369434580087,787.5085908677911Z"
					fill="#228b22" style="opacity: 1;">
                        <title class="geo-tooltip">Srivaikuntam
                            Indian National Congress</title>
                    </path>
                    <path class="land" district="28" constituency="217"
					d="M345.18250498842644,735.2157554047087L355.2369434580087,717.8686128712823L375.3458203971768,717.8686128712823L385.4002588667572,735.2157554047087L375.3458203971768,752.5628979381349L355.2369434580087,752.5628979381349Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Ottapidaram
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="28" constituency="218"
					d="M385.4002588667572,700.2700624750526L405.5091358059217,700.2700624750526L415.5635742755039,717.8686128712823L405.5091358059217,735.2157554047087L385.4002588667572,735.2157554047087L375.3458203971768,717.8686128712823Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Kovilpatti
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="29" constituency="219"
					d="M315.01918957967973,682.9229199416263L325.07362804926197,665.3243695453966L345.18250498842644,665.3243695453966L355.2369434580087,682.9229199416263L345.18250498842644,700.2700624750526L325.07362804926197,700.2700624750526Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Sankarankovil
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="29" constituency="220"
					d="M264.4891911171635,665.3243695453966L284.598068056328,665.3243695453966L294.6525065259084,682.9229199416263L284.598068056328,700.2700624750526L264.4891911171635,700.2700624750526L254.43475264757944,682.9229199416263Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Vasudevanallur
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="29" constituency="221"
					d="M264.4891911171635,700.2700624750526L284.598068056328,700.2700624750526L294.6525065259084,717.8686128712823L284.598068056328,735.2157554047087L264.4891911171635,735.2157554047087L254.43475264757944,717.8686128712823Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Kadayanallur
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="29" constituency="222"
					d="M294.6525065259084,682.9229199416263L315.01918957967973,682.9229199416263L325.07362804926197,700.2700624750526L315.01918957967973,717.8686128712823L294.6525065259084,717.8686128712823L284.598068056328,700.2700624750526Z"
					fill="#228b22" style="opacity: 1;">
                        <title class="geo-tooltip">Tenkasi
                            Indian National Congress</title>
                    </path>
                    <path class="land" district="29" constituency="223"
					d="M294.6525065259084,717.8686128712823L315.01918957967973,717.8686128712823L325.07362804926197,735.2157554047087L315.01918957967973,752.5628979381349L294.6525065259084,752.5628979381349L284.598068056328,735.2157554047087Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Alangulam
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="29" constituency="224"
					d="M315.01918957967973,717.8686128712823L325.07362804926197,700.2700624750526L345.18250498842644,700.2700624750526L355.2369434580087,717.8686128712823L345.18250498842644,735.2157554047087L325.07362804926197,735.2157554047087Z"
					fill="#ff8c00" style="opacity: 1;">
                        <title class="geo-tooltip">Tirunelveli
                            Bharatiya Janata Party</title>
                    </path>
                    <path class="land" district="29" constituency="225"
					d="M264.4891911171635,735.2157554047087L284.598068056328,735.2157554047087L294.6525065259084,752.5628979381349L284.598068056328,770.1614483343646L264.4891911171635,770.1614483343646L254.43475264757944,752.5628979381349Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Ambasamudram
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="29" constituency="226"
					d="M315.01918957967973,752.5628979381349L325.07362804926197,735.2157554047087L345.18250498842644,735.2157554047087L355.2369434580087,752.5628979381349L345.18250498842644,770.1614483343646L325.07362804926197,770.1614483343646Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Palayamkottai
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="29" constituency="227"
					d="M315.01918957967973,787.5085908677911L325.07362804926197,770.1614483343646L345.18250498842644,770.1614483343646L355.2369434580087,787.5085908677911L345.18250498842644,805.1071412640208L325.07362804926197,805.1071412640208Z"
					fill="#228b22" style="opacity: 1;">
                        <title class="geo-tooltip">Nanguneri
                            Indian National Congress</title>
                    </path>
                    <path class="land" district="29" constituency="228"
					d="M345.18250498842644,805.1071412640208L355.2369434580087,787.5085908677911L375.3458203971768,787.5085908677911L385.4002588667572,805.1071412640208L375.3458203971768,822.454283797447L355.2369434580087,822.454283797447Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Radhapuram
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="30" constituency="229"
					d="M315.01918957967973,822.454283797447L325.07362804926197,805.1071412640208L345.18250498842644,805.1071412640208L355.2369434580087,822.454283797447L345.18250498842644,840.0528341936765L325.07362804926197,840.0528341936765Z"
					fill="#006400" style="opacity: 1;">
                        <title class="geo-tooltip">Kanniyakumari
                            All India Anna Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="30" constituency="230"
					d="M294.6525065259084,822.454283797447L315.01918957967973,822.454283797447L325.07362804926197,840.0528341936765L315.01918957967973,857.399976727103L294.6525065259084,857.399976727103L284.598068056328,840.0528341936765Z"
					fill="#ff8c00" style="opacity: 1;">
                        <title class="geo-tooltip">Nagercoil
                            Bharatiya Janata Party</title>
                    </path>
                    <path class="land" district="30" constituency="231"
					d="M264.4891911171635,805.1071412640208L284.598068056328,805.1071412640208L294.6525065259084,822.454283797447L284.598068056328,840.0528341936765L264.4891911171635,840.0528341936765L254.43475264757944,822.454283797447Z"
					fill="#228b22" style="opacity: 1;">
                        <title class="geo-tooltip">Colachal
                            Indian National Congress</title>
                    </path>
                    <path class="land" district="30" constituency="232"
					d="M294.6525065259084,787.5085908677911L315.01918957967973,787.5085908677911L325.07362804926197,805.1071412640208L315.01918957967973,822.454283797447L294.6525065259084,822.454283797447L284.598068056328,805.1071412640208Z"
					fill="#800000" style="opacity: 1;">
                        <title class="geo-tooltip">Padmanabhapuram
                            Dravida Munnetra Kazhagam</title>
                    </path>
                    <path class="land" district="30" constituency="233"
					d="M294.6525065259084,752.5628979381349L315.01918957967973,752.5628979381349L325.07362804926197,770.1614483343646L315.01918957967973,787.5085908677911L294.6525065259084,787.5085908677911L284.598068056328,770.1614483343646Z"
					fill="#228b22" style="opacity: 1;">
                        <title class="geo-tooltip">Vilavancode
                            Indian National Congress</title>
                    </path>
                    <path class="land" district="30" constituency="234"
					d="M264.4891911171635,770.1614483343646L284.598068056328,770.1614483343646L294.6525065259084,787.5085908677911L284.598068056328,805.1071412640208L264.4891911171635,805.1071412640208L254.43475264757944,787.5085908677911Z"
					fill="#228b22" style="opacity: 1;">
                        <title class="geo-tooltip">Killiyoor
                            Indian National Congress</title>
                    </path>
                </g>
            </svg>
		</div>

		<div class="table-container" id="table-container"
			style="display: none;">
			<!-- Add a container for the table -->
			<table class="district-table">
				<thead>
					<tr>
						<th>candidate Name</th>
						<th>Party</th>
						<th>Constituency</th>
						<th>Votes</th>
						<th>Votes diffrence</th>
					</tr>
				</thead>
				<tbody class="table-row"></tbody>
			</table>
		</div>
	</div>
	<p class="chartheading">Party win status</p>
	<!--<canvas id="chartCanvas"></canvas>-->


	<div class="governer ">

		<table class="table table-hover" id="mlatable">

			<thead id="head_tamil">

				<th class="text-center">R.No</th>
				<th class="text-center">Constituency Name
					<button id="sortName">
						<i class="fa fa-sort">
					</button>
				</th>
				<th class="text-center">Candidate Name</th>
				<th class="text-center">Party</th>
				<th class="text-center">Votes</th>
				<th class="text-center">Vote Persent
					<button id="sortMargin">
						<i class="fa fa-sort">
					</button>
				</th>
				<th class="text-center">Vote Diffrentage</th>

			</thead>

			<tbody class="mla_list_body">

			</tbody>

		</table>


	</div>

	<jsp:include page="${request.getContextPath()}/footer.jsp"></jsp:include>
	<script>


        const map_json = JSON.parse(localStorage.getItem("map_json"));
        let districts = document.querySelectorAll(".land");
        let tableContainer = document.querySelector(".table-container");
        let tableRows = document.querySelectorAll(".table-row"); // Select all table rows
        let table_container = document.getElementById("table-container");
        
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

        	    let map_json= data;
        	    
        	    console.log(data);

        districts.forEach(function (district) {
            district.addEventListener('click', function (event) {
            	
                table_container.style.display = "block";
                
                tableRows.forEach(function (tableRow) { // Iterate over each table row
                    tableRow.innerHTML = ""; // Clear the table row before appending new data
                    let distNum = district.getAttribute("constituency");

                    map_json.filter(function (obj) {
                        if (obj.constituency_number == distNum) {
                            let translatedRow = document.createElement('tr');

                            let candidateCell = document.createElement('td');
                            candidateCell.textContent = obj.candidate;
                            translatedRow.appendChild(candidateCell);

                            let partyCell = document.createElement('td');
                            partyCell.textContent = obj.party;
                            translatedRow.appendChild(partyCell);

                            let constituencyCell = document.createElement('td');
                            constituencyCell.textContent = obj.constituency;
                            translatedRow.appendChild(constituencyCell);

                            let votesCell = document.createElement('td');
                            votesCell.textContent = obj.candidate_total_votes;
                            translatedRow.appendChild(votesCell);

                            let votePercentageCell = document.createElement('td');
                            votePercentageCell.textContent = `\${obj["candidate_vote_%"]}%`;
                            translatedRow.appendChild(votePercentageCell);

                            tableRow.appendChild(translatedRow);
                        }
                    });
                });
            });
        });
        
        	  } catch (error) {
        		    console.error('There was a problem with the fetch operation:', error);
        		  }
        		}

        		// Call the async function to fetch and handle the JSON data
        		fetchData();


        const mlaDetails = JSON.parse(localStorage.getItem("mla_details_english"));

        // Extract party names and count their occurrences
        const partyCounts = {};
        mlaDetails.forEach(mla => {
            const party = mla.Party;
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
    
    
    const mla_details_english = [
    	  {
    	    mla_id: "1",
    	    constituency_Name: "Gummidipoondi",
    	    candidate_Name: "T J Govindarajan",
    	    Party: "DMK",
    	    votes: "126,452",
    	    margin: "50,938",
    	    vote_Rate: "56.94 %",
    	  },
    	  {
    	    mla_id: "2",
    	    constituency_Name: "Ponneri",
    	    candidate_Name: "Durai Chandrasekhar",
    	    Party: "INC",
    	    votes: "94,528",
    	    margin: "9,689",
    	    vote_Rate: "44.94 %",
    	  },
    	  {
    	    mla_id: "3",
    	    constituency_Name: "Tiruttani",
    	    candidate_Name: "S Chandran",
    	    Party: "DMK",
    	    votes: "120,314",
    	    margin: "29,253",
    	    vote_Rate: "51.72 %",
    	  },
    	  {
    	    mla_id: "4",
    	    constituency_Name: "Thiruvallur",
    	    candidate_Name: "Rajendran",
    	    Party: "DMK",
    	    votes: "107,709",
    	    margin: "22,701",
    	    vote_Rate: "50.27 %",
    	  },
    	  {
    	    mla_id: "5",
    	    constituency_Name: "Poonamallee",
    	    candidate_Name: "A Krishnasami",
    	    Party: "DMK",
    	    votes: "149,578",
    	    margin: "94,110",
    	    vote_Rate: "56.72 %",
    	  },
    	  {
    	    mla_id: "6",
    	    constituency_Name: "Avadi",
    	    candidate_Name: "Nazar",
    	    Party: "DMK",
    	    votes: "150,287",
    	    margin: "55,275",
    	    vote_Rate: "49.94 %",
    	  },
    	  {
    	    mla_id: "7",
    	    constituency_Name: "Maduravoyal",
    	    candidate_Name: "Karapakkam Ganapathi",
    	    Party: "DMK",
    	    votes: "121,298",
    	    margin: "31,721",
    	    vote_Rate: "44.29 %",
    	  },
    	  {
    	    mla_id: "8",
    	    constituency_Name: "Ambattur",
    	    candidate_Name: "Joseph Samuel",
    	    Party: "DMK",
    	    votes: "114,554",
    	    margin: "42,146",
    	    vote_Rate: "47.67 %",
    	  },
    	  {
    	    mla_id: "9",
    	    constituency_Name: "Madavaram",
    	    candidate_Name: "Sudharsanam",
    	    Party: "DMK",
    	    votes: "151,485",
    	    margin: "57,071",
    	    vote_Rate: "50.04 %",
    	  },
    	  {
    	    mla_id: "10",
    	    constituency_Name: "Thiruvottiyur",
    	    candidate_Name: "Sankar",
    	    Party: "DMK",
    	    votes: "88,185",
    	    margin: "37,661",
    	    vote_Rate: "44.09 %",
    	  },
    	  {
    	    mla_id: "11",
    	    constituency_Name: "Dr.Radhakrishnan Nagar",
    	    candidate_Name: "J J Ebenesar",
    	    Party: "DMK",
    	    votes: "95,763",
    	    margin: "42,479",
    	    vote_Rate: "51.20 %",
    	  },
    	  {
    	    mla_id: "12",
    	    constituency_Name: "Perambur",
    	    candidate_Name: "R D Sekar",
    	    Party: "DMK",
    	    votes: "105,267",
    	    margin: "54,976",
    	    vote_Rate: "52.53 %",
    	  },
    	  {
    	    mla_id: "13",
    	    constituency_Name: "Kolathur",
    	    candidate_Name: "M K Stalin",
    	    Party: "DMK",
    	    votes: "105,522",
    	    margin: "70,384",
    	    vote_Rate: "60.86 %",
    	  },
    	  {
    	    mla_id: "14",
    	    constituency_Name: "Villivakkam",
    	    candidate_Name: "Vetriyazhagan",
    	    Party: "DMK",
    	    votes: "76,127",
    	    margin: "37,237",
    	    vote_Rate: "52.83 %",
    	  },
    	  {
    	    mla_id: "15",
    	    constituency_Name: "Thiru-Vi-Ka-Nagar",
    	    candidate_Name: "Thayagam Kavi",
    	    Party: "DMK",
    	    votes: "81,727",
    	    margin: "55,013",
    	    vote_Rate: "61.13 %",
    	  },
    	  {
    	    mla_id: "16",
    	    constituency_Name: "Egmore",
    	    candidate_Name: "Parandhaman",
    	    Party: "DMK",
    	    votes: "68,832",
    	    margin: "38,768",
    	    vote_Rate: "57.71 %",
    	  },
    	  {
    	    mla_id: "17",
    	    constituency_Name: "Royapuram",
    	    candidate_Name: "Ira Moorthi",
    	    Party: "DMK",
    	    votes: "64,424",
    	    margin: "27,779",
    	    vote_Rate: "53.16 %",
    	  },
    	  {
    	    mla_id: "18",
    	    constituency_Name: "Harbour",
    	    candidate_Name: "Sekar Babu",
    	    Party: "DMK",
    	    votes: "59,317",
    	    margin: "27,274",
    	    vote_Rate: "58.35 %",
    	  },
    	  {
    	    mla_id: "19",
    	    constituency_Name: "Chepauk-Thiruvallikeni",
    	    candidate_Name: "Udhayanidhi Stalin",
    	    Party: "DMK",
    	    votes: "93,285",
    	    margin: "69,355",
    	    vote_Rate: "67.89 %",
    	  },
    	  {
    	    mla_id: "20",
    	    constituency_Name: "Thousand Lights",
    	    candidate_Name: "Dr. Ezhilan",
    	    Party: "DMK",
    	    votes: "71,437",
    	    margin: "32,200",
    	    vote_Rate: "52.81 %",
    	  },
    	  {
    	    mla_id: "21",
    	    constituency_Name: "Anna Nagar",
    	    candidate_Name: "M K Mohan",
    	    Party: "DMK",
    	    votes: "80,054",
    	    margin: "27,445",
    	    vote_Rate: "48.49 %",
    	  },
    	  {
    	    mla_id: "22",
    	    constituency_Name: "Virugampakkam",
    	    candidate_Name: "A M V Prabhakar Raja",
    	    Party: "DMK",
    	    votes: "74,351",
    	    margin: "18,367",
    	    vote_Rate: "43.97 %",
    	  },
    	  {
    	    mla_id: "23",
    	    constituency_Name: "Saidapet",
    	    candidate_Name: "Ma Subramaniam",
    	    Party: "DMK",
    	    votes: "80,194",
    	    margin: "29,408",
    	    vote_Rate: "50.02 %",
    	  },
    	  {
    	    mla_id: "24",
    	    constituency_Name: "Thiyagarayanagar",
    	    candidate_Name: "J Karunanidhi",
    	    Party: "DMK",
    	    votes: "56,035",
    	    margin: "137",
    	    vote_Rate: "40.57 %",
    	  },
    	  {
    	    mla_id: "25",
    	    constituency_Name: "Mylapore",
    	    candidate_Name: "Mylai Velu",
    	    Party: "DMK",
    	    votes: "68,392",
    	    margin: "12,633",
    	    vote_Rate: "44.58 %",
    	  },
    	  {
    	    mla_id: "26",
    	    constituency_Name: "Velachery",
    	    candidate_Name: "J.m.h.hassan",
    	    Party: "INC",
    	    votes: "68,493",
    	    margin: "4,352",
    	    vote_Rate: "38.76 %",
    	  },
    	  {
    	    mla_id: "27",
    	    constituency_Name: "Shozhinganallur",
    	    candidate_Name: "Aravind Ramesh",
    	    Party: "DMK",
    	    votes: "171,558",
    	    margin: "35,405",
    	    vote_Rate: "44.18 %",
    	  },
    	  {
    	    mla_id: "28",
    	    constituency_Name: "Alandur",
    	    candidate_Name: "Tha Mo Anbarasan",
    	    Party: "DMK",
    	    votes: "116,785",
    	    margin: "40,571",
    	    vote_Rate: "49.12 %",
    	  },
    	  {
    	    mla_id: "29",
    	    constituency_Name: "Sriperumbudur",
    	    candidate_Name: "K.selvaperunthagai",
    	    Party: "INC",
    	    votes: "115,353",
    	    margin: "10,879",
    	    vote_Rate: "43.65 %",
    	  },
    	  {
    	    mla_id: "30",
    	    constituency_Name: "Pallavaram",
    	    candidate_Name: "Karunanidhi",
    	    Party: "DMK",
    	    votes: "126,427",
    	    margin: "37,781",
    	    vote_Rate: "47.49 %",
    	  },
    	  {
    	    mla_id: "31",
    	    constituency_Name: "Tambaram",
    	    candidate_Name: "S R Raja",
    	    Party: "DMK",
    	    votes: "116,840",
    	    margin: "36,824",
    	    vote_Rate: "46.93 %",
    	  },
    	  {
    	    mla_id: "32",
    	    constituency_Name: "Chengalpattu",
    	    candidate_Name: "Varalakshmi Madhusoodhanan",
    	    Party: "DMK",
    	    votes: "130,573",
    	    margin: "26,665",
    	    vote_Rate: "47.64 %",
    	  },
    	  {
    	    mla_id: "33",
    	    constituency_Name: "Thiruporur",
    	    candidate_Name: "S.s.balaji",
    	    Party: "VCK",
    	    votes: "93,954",
    	    margin: "1,947",
    	    vote_Rate: "41.44 %",
    	  },
    	  {
    	    mla_id: "34",
    	    constituency_Name: "Cheyyur",
    	    candidate_Name: "Babu",
    	    Party: "VCK",
    	    votes: "82,750",
    	    margin: "4,042",
    	    vote_Rate: "46.20 %",
    	  },
    	  {
    	    mla_id: "35",
    	    constituency_Name: "Madurantakam",
    	    candidate_Name: "Maragatham Kumaravel",
    	    Party: "AIADMK",
    	    votes: "86,646",
    	    margin: "3,570",
    	    vote_Rate: "46.62 %",
    	  },
    	  {
    	    mla_id: "36",
    	    constituency_Name: "Uthiramerur",
    	    candidate_Name: "Sundar",
    	    Party: "DMK",
    	    votes: "93,427",
    	    margin: "1,622",
    	    vote_Rate: "44.38 %",
    	  },
    	  {
    	    mla_id: "37",
    	    constituency_Name: "Kancheepuram",
    	    candidate_Name: "Ezhilarasan",
    	    Party: "DMK",
    	    votes: "102,712",
    	    margin: "11,595",
    	    vote_Rate: "44.77 %",
    	  },
    	  {
    	    mla_id: "38",
    	    constituency_Name: "Arakkonam",
    	    candidate_Name: "Ravi",
    	    Party: "AIADMK",
    	    votes: "85,399",
    	    margin: "27,169",
    	    vote_Rate: "49.82 %",
    	  },
    	  {
    	    mla_id: "39",
    	    constituency_Name: "Sholingur",
    	    candidate_Name: "A.m.munirathinam",
    	    Party: "INC",
    	    votes: "110,228",
    	    margin: "26,698",
    	    vote_Rate: "49.18 %",
    	  },
    	  {
    	    mla_id: "40",
    	    constituency_Name: "Katpadi",
    	    candidate_Name: "Durai Murugan",
    	    Party: "DMK",
    	    votes: "85,140",
    	    margin: "746",
    	    vote_Rate: "45.71 %",
    	  },
    	  {
    	    mla_id: "41",
    	    constituency_Name: "Ranipet",
    	    candidate_Name: "Gandhi",
    	    Party: "DMK",
    	    votes: "103,291",
    	    margin: "16,498",
    	    vote_Rate: "49.79 %",
    	  },
    	  {
    	    mla_id: "42",
    	    constituency_Name: "Arcot",
    	    candidate_Name: "J L Eeswarappan",
    	    Party: "DMK",
    	    votes: "103,885",
    	    margin: "19,958",
    	    vote_Rate: "49.52 %",
    	  },
    	  {
    	    mla_id: "43",
    	    constituency_Name: "Vellore",
    	    candidate_Name: "Karthikeyan",
    	    Party: "DMK",
    	    votes: "84,299",
    	    margin: "9,181",
    	    vote_Rate: "46.86 %",
    	  },
    	  {
    	    mla_id: "44",
    	    constituency_Name: "Anaikattu",
    	    candidate_Name: "Nandhakumar",
    	    Party: "DMK",
    	    votes: "95,159",
    	    margin: "6,360",
    	    vote_Rate: "48.11 %",
    	  },
    	  {
    	    mla_id: "45",
    	    constituency_Name: "Kilvaithinankuppam",
    	    candidate_Name: "M. Jaganmoorthy",
    	    Party: "PBK",
    	    votes: "84,579",
    	    margin: "10,582",
    	    vote_Rate: "48.57 %",
    	  },
    	  {
    	    mla_id: "46",
    	    constituency_Name: "Gudiyattam",
    	    candidate_Name: "V Amalu",
    	    Party: "DMK",
    	    votes: "100,412",
    	    margin: "6,901",
    	    vote_Rate: "47.45 %",
    	  },
    	  {
    	    mla_id: "47",
    	    constituency_Name: "Vaniyambadi",
    	    candidate_Name: "Senthilkumar",
    	    Party: "AIADMK",
    	    votes: "88,018",
    	    margin: "4,904",
    	    vote_Rate: "46.33 %",
    	  },
    	  {
    	    mla_id: "48",
    	    constituency_Name: "Ambur",
    	    candidate_Name: "A S Viswanathan",
    	    Party: "DMK",
    	    votes: "90,476",
    	    margin: "20,232",
    	    vote_Rate: "50.86 %",
    	  },
    	  {
    	    mla_id: "49",
    	    constituency_Name: "Jolarpet",
    	    candidate_Name: "Devaraji",
    	    Party: "DMK",
    	    votes: "89,490",
    	    margin: "1,091",
    	    vote_Rate: "45.57 %",
    	  },
    	  {
    	    mla_id: "50",
    	    constituency_Name: "Tirupattur",
    	    candidate_Name: "Nallathambi",
    	    Party: "DMK",
    	    votes: "96,522",
    	    margin: "28,240",
    	    vote_Rate: "51.91 %",
    	  },
    	  {
    	    mla_id: "51",
    	    constituency_Name: "Uthangarai",
    	    candidate_Name: "T.m.tamilselvm",
    	    Party: "AIADMK",
    	    votes: "99,675",
    	    margin: "28,387",
    	    vote_Rate: "52.96 %",
    	  },
    	  {
    	    mla_id: "52",
    	    constituency_Name: "Bargur",
    	    candidate_Name: "Madhiyazhagan",
    	    Party: "DMK",
    	    votes: "97,256",
    	    margin: "12,614",
    	    vote_Rate: "49.17 %",
    	  },
    	  {
    	    mla_id: "53",
    	    constituency_Name: "Krishnagiri",
    	    candidate_Name: "Ashok Kumar",
    	    Party: "AIADMK",
    	    votes: "96,050",
    	    margin: "794",
    	    vote_Rate: "45.38 %",
    	  },
    	  {
    	    mla_id: "54",
    	    constituency_Name: "Veppanahalli",
    	    candidate_Name: "K.p. Munusamy",
    	    Party: "AIADMK",
    	    votes: "94,104",
    	    margin: "3,054",
    	    vote_Rate: "45.87 %",
    	  },
    	  {
    	    mla_id: "55",
    	    constituency_Name: "Hosur",
    	    candidate_Name: "Y Prakash",
    	    Party: "DMK",
    	    votes: "118,231",
    	    margin: "12,367",
    	    vote_Rate: "47.65 %",
    	  },
    	  {
    	    mla_id: "56",
    	    constituency_Name: "Thalli",
    	    candidate_Name: "Ramachandran",
    	    Party: "CPI",
    	    votes: "120,641",
    	    margin: "56,226",
    	    vote_Rate: "62.18 %",
    	  },
    	  {
    	    mla_id: "57",
    	    constituency_Name: "Palacode",
    	    candidate_Name: "K.p.anbazhagan",
    	    Party: "AIADMK",
    	    votes: "110,070",
    	    margin: "28,100",
    	    vote_Rate: "53.28 %",
    	  },
    	  {
    	    mla_id: "58",
    	    constituency_Name: "Pennagaram",
    	    candidate_Name: "G.k.mani",
    	    Party: "PMK",
    	    votes: "106,123",
    	    margin: "21,186",
    	    vote_Rate: "50.46 %",
    	  },
    	  {
    	    mla_id: "59",
    	    constituency_Name: "Dharmapuri",
    	    candidate_Name: "S.p.venkateshwaran",
    	    Party: "PMK",
    	    votes: "105,630",
    	    margin: "26,860",
    	    vote_Rate: "48.60 %",
    	  },
    	  {
    	    mla_id: "60",
    	    constituency_Name: "Pappireddippatti",
    	    candidate_Name: "A.govindasami",
    	    Party: "AIADMK",
    	    votes: "114,507",
    	    margin: "36,943",
    	    vote_Rate: "51.81 %",
    	  },
    	  {
    	    mla_id: "61",
    	    constituency_Name: "Harur",
    	    candidate_Name: "V.sampathkumar",
    	    Party: "AIADMK",
    	    votes: "99,061",
    	    margin: "30,362",
    	    vote_Rate: "49.89 %",
    	  },
    	  {
    	    mla_id: "62",
    	    constituency_Name: "Chengam",
    	    candidate_Name: "Mu Pe Giri",
    	    Party: "DMK",
    	    votes: "108,081",
    	    margin: "11,570",
    	    vote_Rate: "48.26 %",
    	  },
    	  {
    	    mla_id: "63",
    	    constituency_Name: "Tiruvannamalai",
    	    candidate_Name: "A V Velu",
    	    Party: "DMK",
    	    votes: "137,876",
    	    margin: "94,673",
    	    vote_Rate: "66.02 %",
    	  },
    	  {
    	    mla_id: "64",
    	    constituency_Name: "Kilpennathur",
    	    candidate_Name: "Ku Pichchaandi",
    	    Party: "DMK",
    	    votes: "104,675",
    	    margin: "26,787",
    	    vote_Rate: "51.34 %",
    	  },
    	  {
    	    mla_id: "65",
    	    constituency_Name: "Kalasapakkam",
    	    candidate_Name: "Pe Su Thi Saravanan",
    	    Party: "DMK",
    	    votes: "94,134",
    	    margin: "9,222",
    	    vote_Rate: "47.92 %",
    	  },
    	  {
    	    mla_id: "66",
    	    constituency_Name: "Polur",
    	    candidate_Name: "Agri Krishnamoorthy",
    	    Party: "AIADMK",
    	    votes: "97,732",
    	    margin: "9,725",
    	    vote_Rate: "48.38 %",
    	  },
    	  {
    	    mla_id: "67",
    	    constituency_Name: "Arani",
    	    candidate_Name: "Sevur Ramachandran",
    	    Party: "AIADMK",
    	    votes: "102,961",
    	    margin: "3,128",
    	    vote_Rate: "46.50 %",
    	  },
    	  {
    	    mla_id: "68",
    	    constituency_Name: "Cheyyar",
    	    candidate_Name: "O Jothi",
    	    Party: "DMK",
    	    votes: "102,460",
    	    margin: "12,271",
    	    vote_Rate: "47.78 %",
    	  },
    	  {
    	    mla_id: "69",
    	    constituency_Name: "Vandavasi",
    	    candidate_Name: "S Ambethkumar",
    	    Party: "DMK",
    	    votes: "102,064",
    	    margin: "35,953",
    	    vote_Rate: "54.88 %",
    	  },
    	  {
    	    mla_id: "70",
    	    constituency_Name: "Gingee",
    	    candidate_Name: "K S Masthan",
    	    Party: "DMK",
    	    votes: "109,625",
    	    margin: "35,803",
    	    vote_Rate: "52.99 %",
    	  },
    	  {
    	    mla_id: "71",
    	    constituency_Name: "Mailam",
    	    candidate_Name: "Sivakumar",
    	    Party: "PMK",
    	    votes: "81,044",
    	    margin: "2,230",
    	    vote_Rate: "45.79 %",
    	  },
    	  {
    	    mla_id: "72",
    	    constituency_Name: "Tindivanam",
    	    candidate_Name: "Arjunan",
    	    Party: "AIADMK",
    	    votes: "87,152",
    	    margin: "9,753",
    	    vote_Rate: "47.74 %",
    	  },
    	  {
    	    mla_id: "73",
    	    constituency_Name: "Vanur",
    	    candidate_Name: "Chakkarabani",
    	    Party: "AIADMK",
    	    votes: "92,219",
    	    margin: "21,727",
    	    vote_Rate: "50.61 %",
    	  },
    	  {
    	    mla_id: "74",
    	    constituency_Name: "Villupuram",
    	    candidate_Name: "R Lakshmanan",
    	    Party: "DMK",
    	    votes: "102,271",
    	    margin: "14,868",
    	    vote_Rate: "49.92 %",
    	  },
    	  {
    	    mla_id: "75",
    	    constituency_Name: "Vikravandi",
    	    candidate_Name: "Na Pugazhendhi",
    	    Party: "DMK",
    	    votes: "93,730",
    	    margin: "9,573",
    	    vote_Rate: "48.41 %",
    	  },
    	  {
    	    mla_id: "76",
    	    constituency_Name: "Tirukkoyilur",
    	    candidate_Name: "K.ponmudi",
    	    Party: "DMK",
    	    votes: "110,980",
    	    margin: "59,680",
    	    vote_Rate: "56.56 %",
    	  },
    	  {
    	    mla_id: "77",
    	    constituency_Name: "Ulundurpettai",
    	    candidate_Name: "A J Manikannan",
    	    Party: "DMK",
    	    votes: "115,451",
    	    margin: "5,256",
    	    vote_Rate: "47.15 %",
    	  },
    	  {
    	    mla_id: "78",
    	    constituency_Name: "Rishivandiyam",
    	    candidate_Name: "Vasantham Karthikeyan",
    	    Party: "DMK",
    	    votes: "113,912",
    	    margin: "41,728",
    	    vote_Rate: "52.96 %",
    	  },
    	  {
    	    mla_id: "79",
    	    constituency_Name: "Sankarapuram",
    	    candidate_Name: "Tha Udhayasuriyan",
    	    Party: "DMK",
    	    votes: "121,186",
    	    margin: "45,963",
    	    vote_Rate: "56.16 %",
    	  },
    	  {
    	    mla_id: "80",
    	    constituency_Name: "Kallakurichi",
    	    candidate_Name: "Senthilkumar",
    	    Party: "AIADMK",
    	    votes: "110,643",
    	    margin: "25,891",
    	    vote_Rate: "48.99 %",
    	  },
    	  {
    	    mla_id: "81",
    	    constituency_Name: "Gangavalli",
    	    candidate_Name: "Nallathambi",
    	    Party: "AIADMK",
    	    votes: "89,568",
    	    margin: "7,361",
    	    vote_Rate: "48.02 %",
    	  },
    	  {
    	    mla_id: "82",
    	    constituency_Name: "Attur",
    	    candidate_Name: "Jayasankaran",
    	    Party: "AIADMK",
    	    votes: "95,308",
    	    margin: "8,257",
    	    vote_Rate: "47.72 %",
    	  },
    	  {
    	    mla_id: "83",
    	    constituency_Name: "Yercaud",
    	    candidate_Name: "Chitra",
    	    Party: "AIADMK",
    	    votes: "121,561",
    	    margin: "25,955",
    	    vote_Rate: "50.88 %",
    	  },
    	  {
    	    mla_id: "84",
    	    constituency_Name: "Omalur",
    	    candidate_Name: "R.mani",
    	    Party: "AIADMK",
    	    votes: "142,488",
    	    margin: "55,294",
    	    vote_Rate: "57.22 %",
    	  },
    	  {
    	    mla_id: "85",
    	    constituency_Name: "Mettur",
    	    candidate_Name: "Sadhasivam",
    	    Party: "PMK",
    	    votes: "97,055",
    	    margin: "656",
    	    vote_Rate: "44.43 %",
    	  },
    	  {
    	    mla_id: "86",
    	    constituency_Name: "Edappadi",
    	    candidate_Name: "Palaniswami. K",
    	    Party: "AIADMK",
    	    votes: "163,154",
    	    margin: "93,802",
    	    vote_Rate: "65.97 %",
    	  },
    	  {
    	    mla_id: "87",
    	    constituency_Name: "Sankari",
    	    candidate_Name: "Sundaraj",
    	    Party: "AIADMK",
    	    votes: "115,472",
    	    margin: "20,045",
    	    vote_Rate: "49.72 %",
    	  },
    	  {
    	    mla_id: "88",
    	    constituency_Name: "Salem (West)",
    	    candidate_Name: "R.arul",
    	    Party: "PMK",
    	    votes: "105,483",
    	    margin: "21,499",
    	    vote_Rate: "48.69 %",
    	  },
    	  {
    	    mla_id: "89",
    	    constituency_Name: "Salem (North)",
    	    candidate_Name: "R Rajendhiran",
    	    Party: "DMK",
    	    votes: "93,432",
    	    margin: "7,588",
    	    vote_Rate: "46.17 %",
    	  },
    	  {
    	    mla_id: "90",
    	    constituency_Name: "Salem (South)",
    	    candidate_Name: "Balasubramanian",
    	    Party: "AIADMK",
    	    votes: "97,506",
    	    margin: "22,609",
    	    vote_Rate: "48.76 %",
    	  },
    	  {
    	    mla_id: "91",
    	    constituency_Name: "Veerapandi",
    	    candidate_Name: "M.raja",
    	    Party: "AIADMK",
    	    votes: "111,682",
    	    margin: "19,895",
    	    vote_Rate: "49.92 %",
    	  },
    	  {
    	    mla_id: "92",
    	    constituency_Name: "Rasipuram",
    	    candidate_Name: "Dr.m.madhivendhan",
    	    Party: "DMK",
    	    votes: "90,727",
    	    margin: "1,952",
    	    vote_Rate: "46.08 %",
    	  },
    	  {
    	    mla_id: "93",
    	    constituency_Name: "Senthamangalam",
    	    candidate_Name: "K Ponnusami",
    	    Party: "DMK",
    	    votes: "90,681",
    	    margin: "10,493",
    	    vote_Rate: "45.51 %",
    	  },
    	  {
    	    mla_id: "94",
    	    constituency_Name: "Namakkal",
    	    candidate_Name: "P. Ramalingam",
    	    Party: "DMK",
    	    votes: "106,494",
    	    margin: "27,861",
    	    vote_Rate: "51.51 %",
    	  },
    	  {
    	    mla_id: "95",
    	    constituency_Name: "Paramathi-Velur",
    	    candidate_Name: "S.sekar",
    	    Party: "AIADMK",
    	    votes: "86,034",
    	    margin: "7,662",
    	    vote_Rate: "46.83 %",
    	  },
    	  {
    	    mla_id: "96",
    	    constituency_Name: "Tiruchengodu",
    	    candidate_Name: "E.r.eshwaran",
    	    Party: "KMDK",
    	    votes: "81,688",
    	    margin: "2,862",
    	    vote_Rate: "44.23 %",
    	  },
    	  {
    	    mla_id: "97",
    	    constituency_Name: "Kumarapalayam",
    	    candidate_Name: "Thangamani",
    	    Party: "AIADMK",
    	    votes: "100,800",
    	    margin: "31,646",
    	    vote_Rate: "49.92 %",
    	  },
    	  {
    	    mla_id: "98",
    	    constituency_Name: "Erode (East)",
    	    candidate_Name: "Thirumagan Evera",
    	    Party: "INC",
    	    votes: "67,300",
    	    margin: "8,904",
    	    vote_Rate: "44.27 %",
    	  },
    	  {
    	    mla_id: "99",
    	    constituency_Name: "Erode (West)",
    	    candidate_Name: "S. Muthusami",
    	    Party: "DMK",
    	    votes: "100,757",
    	    margin: "22,089",
    	    vote_Rate: "49.01 %",
    	  },
    	  {
    	    mla_id: "100",
    	    constituency_Name: "Modakkurichi",
    	    candidate_Name: "C.k.saraswathi",
    	    Party: "BJP",
    	    votes: "78,125",
    	    margin: "281",
    	    vote_Rate: "42.96 %",
    	  },
    	  {
    	    mla_id: "101",
    	    constituency_Name: "Dharapuram(sc)",
    	    candidate_Name: "Kayalvizhi Selvaraj",
    	    Party: "DMK",
    	    votes: "89,986",
    	    margin: "1,393",
    	    vote_Rate: "46.39 %",
    	  },
    	  {
    	    mla_id: "102",
    	    constituency_Name: "Kangayam",
    	    candidate_Name: "Saminathan",
    	    Party: "DMK",
    	    votes: "94,197",
    	    margin: "7,331",
    	    vote_Rate: "47.14 %",
    	  },
    	  {
    	    mla_id: "103",
    	    constituency_Name: "Perundurai",
    	    candidate_Name: "Jayakumar",
    	    Party: "AIADMK",
    	    votes: "85,125",
    	    margin: "14,507",
    	    vote_Rate: "44.84 %",
    	  },
    	  {
    	    mla_id: "104",
    	    constituency_Name: "Bhavani",
    	    candidate_Name: "K.c.karupannan",
    	    Party: "AIADMK",
    	    votes: "100,915",
    	    margin: "22,523",
    	    vote_Rate: "50.11 %",
    	  },
    	  {
    	    mla_id: "105",
    	    constituency_Name: "Anthiyur",
    	    candidate_Name: "Venkatachalam",
    	    Party: "DMK",
    	    votes: "79,096",
    	    margin: "1,275",
    	    vote_Rate: "44.84 %",
    	  },
    	  {
    	    mla_id: "106",
    	    constituency_Name: "Gobichettipalayam",
    	    candidate_Name: "K.a.sengottayan",
    	    Party: "AIADMK",
    	    votes: "108,608",
    	    margin: "28,563",
    	    vote_Rate: "50.68 %",
    	  },
    	  {
    	    mla_id: "107",
    	    constituency_Name: "Bhavanisagar",
    	    candidate_Name: "Bannari",
    	    Party: "AIADMK",
    	    votes: "99,181",
    	    margin: "16,008",
    	    vote_Rate: "49.45 %",
    	  },
    	  {
    	    mla_id: "108",
    	    constituency_Name: "Udhagamandalam",
    	    candidate_Name: "R.ganesh",
    	    Party: "INC",
    	    votes: "65,530",
    	    margin: "5,348",
    	    vote_Rate: "46.44 %",
    	  },
    	  {
    	    mla_id: "109",
    	    constituency_Name: "Gudalur",
    	    candidate_Name: "Pon Jeyaseelan",
    	    Party: "AIADMK",
    	    votes: "64,496",
    	    margin: "1,945",
    	    vote_Rate: "46.65 %",
    	  },
    	  {
    	    mla_id: "110",
    	    constituency_Name: "Coonoor",
    	    candidate_Name: "K. Ramachandran",
    	    Party: "DMK",
    	    votes: "61,820",
    	    margin: "4,105",
    	    vote_Rate: "45.49 %",
    	  },
    	  {
    	    mla_id: "111",
    	    constituency_Name: "Mettuppalayam",
    	    candidate_Name: "A.k.selvaraj",
    	    Party: "AIADMK",
    	    votes: "105,231",
    	    margin: "2,456",
    	    vote_Rate: "46.75 %",
    	  },
    	  {
    	    mla_id: "112",
    	    constituency_Name: "Avanashi (SC)",
    	    candidate_Name: "Dhanapal",
    	    Party: "AIADMK",
    	    votes: "117,284",
    	    margin: "50,902",
    	    vote_Rate: "55.16 %",
    	  },
    	  {
    	    mla_id: "113",
    	    constituency_Name: "Tiruppur (North)",
    	    candidate_Name: "Vijayakumar",
    	    Party: "AIADMK",
    	    votes: "113,384",
    	    margin: "40,102",
    	    vote_Rate: "47.62 %",
    	  },
    	  {
    	    mla_id: "114",
    	    constituency_Name: "Tiruppur (South)",
    	    candidate_Name: "K. Selvaraj",
    	    Party: "DMK",
    	    votes: "75,535",
    	    margin: "4,709",
    	    vote_Rate: "43.31 %",
    	  },
    	  {
    	    mla_id: "115",
    	    constituency_Name: "Palladam",
    	    candidate_Name: "M.s.m.anandhan",
    	    Party: "AIADMK",
    	    votes: "126,903",
    	    margin: "32,691",
    	    vote_Rate: "48.53 %",
    	  },
    	  {
    	    mla_id: "116",
    	    constituency_Name: "Sulur",
    	    candidate_Name: "Vp Kandhasamy",
    	    Party: "AIADMK",
    	    votes: "118,968",
    	    margin: "31,932",
    	    vote_Rate: "49.23 %",
    	  },
    	  {
    	    mla_id: "117",
    	    constituency_Name: "Kavundampalayam",
    	    candidate_Name: "Arunkumar",
    	    Party: "AIADMK",
    	    votes: "135,669",
    	    margin: "9,776",
    	    vote_Rate: "43.78 %",
    	  },
    	  {
    	    mla_id: "118",
    	    constituency_Name: "Coimbatore (North)",
    	    candidate_Name: "Amman Archunan",
    	    Party: "AIADMK",
    	    votes: "81,454",
    	    margin: "4,001",
    	    vote_Rate: "40.16 %",
    	  },
    	  {
    	    mla_id: "119",
    	    constituency_Name: "Thondamuthur",
    	    candidate_Name: "S.p.velumani",
    	    Party: "AIADMK",
    	    votes: "124,225",
    	    margin: "41,630",
    	    vote_Rate: "53.89 %",
    	  },
    	  {
    	    mla_id: "120",
    	    constituency_Name: "Coimbatore (South)",
    	    candidate_Name: "Vanathi Srinivasan",
    	    Party: "BJP",
    	    votes: "53,209",
    	    margin: "1,728",
    	    vote_Rate: "34.38 %",
    	  },
    	  {
    	    mla_id: "121",
    	    constituency_Name: "Singanallur",
    	    candidate_Name: "K.r.jayaram",
    	    Party: "AIADMK",
    	    votes: "81,244",
    	    margin: "10,854",
    	    vote_Rate: "40.22 %",
    	  },
    	  {
    	    mla_id: "122",
    	    constituency_Name: "Kinathukadavu",
    	    candidate_Name: "Dhamodharan",
    	    Party: "AIADMK",
    	    votes: "101,537",
    	    margin: "1,095",
    	    vote_Rate: "43.68 %",
    	  },
    	  {
    	    mla_id: "123",
    	    constituency_Name: "Pollachi",
    	    candidate_Name: "Jayaraman",
    	    Party: "AIADMK",
    	    votes: "80,567",
    	    margin: "1,725",
    	    vote_Rate: "45.44 %",
    	  },
    	  {
    	    mla_id: "124",
    	    constituency_Name: "Valparai",
    	    candidate_Name: "Amul Kandhasamy",
    	    Party: "AIADMK",
    	    votes: "71,672",
    	    margin: "12,223",
    	    vote_Rate: "49.37 %",
    	  },
    	  {
    	    mla_id: "125",
    	    constituency_Name: "Udumalaipettai",
    	    candidate_Name: "K.radhakrishnan",
    	    Party: "AIADMK",
    	    votes: "96,893",
    	    margin: "21,895",
    	    vote_Rate: "49.85 %",
    	  },
    	  {
    	    mla_id: "126",
    	    constituency_Name: "Madathukulam",
    	    candidate_Name: "C.mahendran",
    	    Party: "AIADMK",
    	    votes: "84,313",
    	    margin: "6,438",
    	    vote_Rate: "46.35 %",
    	  },
    	  {
    	    mla_id: "127",
    	    constituency_Name: "Palani",
    	    candidate_Name: "I.p.senthilkumar",
    	    Party: "DMK",
    	    votes: "108,566",
    	    margin: "30,056",
    	    vote_Rate: "52.86 %",
    	  },
    	  {
    	    mla_id: "128",
    	    constituency_Name: "Oddanchatram",
    	    candidate_Name: "R. Sakkarapani",
    	    Party: "DMK",
    	    votes: "109,970",
    	    margin: "28,742",
    	    vote_Rate: "54.51 %",
    	  },
    	  {
    	    mla_id: "129",
    	    constituency_Name: "Athoor",
    	    candidate_Name: "I.periyasamy",
    	    Party: "DMK",
    	    votes: "165,809",
    	    margin: "135,571",
    	    vote_Rate: "72.11 %",
    	  },
    	  {
    	    mla_id: "130",
    	    constituency_Name: "Nilakkottai",
    	    candidate_Name: "S. Thenmozhi",
    	    Party: "AIADMK",
    	    votes: "91,461",
    	    margin: "27,618",
    	    vote_Rate: "49.49 %",
    	  },
    	  {
    	    mla_id: "131",
    	    constituency_Name: "Natham",
    	    candidate_Name: "Vishwanathan",
    	    Party: "AIADMK",
    	    votes: "107,762",
    	    margin: "11,932",
    	    vote_Rate: "47.84 %",
    	  },
    	  {
    	    mla_id: "132",
    	    constituency_Name: "Dindigul",
    	    candidate_Name: "Srinivasan",
    	    Party: "AIADMK",
    	    votes: "90,595",
    	    margin: "17,747",
    	    vote_Rate: "46.43 %",
    	  },
    	  {
    	    mla_id: "133",
    	    constituency_Name: "Vedasandur",
    	    candidate_Name: "S.gandhirajan",
    	    Party: "DMK",
    	    votes: "106,481",
    	    margin: "17,553",
    	    vote_Rate: "49.97 %",
    	  },
    	  {
    	    mla_id: "134",
    	    constituency_Name: "Aravakurichi",
    	    candidate_Name: "R.elango",
    	    Party: "DMK",
    	    votes: "93,369",
    	    margin: "24,816",
    	    vote_Rate: "52.72 %",
    	  },
    	  {
    	    mla_id: "135",
    	    constituency_Name: "Karur",
    	    candidate_Name: "Senthil Balaji",
    	    Party: "DMK",
    	    votes: "101,757",
    	    margin: "12,448",
    	    vote_Rate: "49.08 %",
    	  },
    	  {
    	    mla_id: "136",
    	    constituency_Name: "Krishnarayapuram",
    	    candidate_Name: "K.sivakamasundari",
    	    Party: "DMK",
    	    votes: "96,540",
    	    margin: "31,625",
    	    vote_Rate: "53.37 %",
    	  },
    	  {
    	    mla_id: "137",
    	    constituency_Name: "Kulithalai",
    	    candidate_Name: "R.manickam",
    	    Party: "DMK",
    	    votes: "100,829",
    	    margin: "23,540",
    	    vote_Rate: "51.06 %",
    	  },
    	  {
    	    mla_id: "138",
    	    constituency_Name: "Manapparai",
    	    candidate_Name: "Abdul Samadh",
    	    Party: "MMK",
    	    votes: "98,077",
    	    margin: "12,243",
    	    vote_Rate: "44.23 %",
    	  },
    	  {
    	    mla_id: "139",
    	    constituency_Name: "Srirangam",
    	    candidate_Name: "M.palaniandi",
    	    Party: "DMK",
    	    votes: "113,904",
    	    margin: "19,915",
    	    vote_Rate: "47.41 %",
    	  },
    	  {
    	    mla_id: "140",
    	    constituency_Name: "Tiruchirappalli (West)",
    	    candidate_Name: "K.n.nehru",
    	    Party: "DMK",
    	    votes: "118,133",
    	    margin: "85,109",
    	    vote_Rate: "64.52 %",
    	  },
    	  {
    	    mla_id: "141",
    	    constituency_Name: "Tiruchirappalli (East)",
    	    candidate_Name: "Inigo Irudhayaraj",
    	    Party: "DMK",
    	    votes: "94,302",
    	    margin: "53,797",
    	    vote_Rate: "54.56 %",
    	  },
    	  {
    	    mla_id: "142",
    	    constituency_Name: "Thiruverumbur",
    	    candidate_Name: "Anbil Mahesh Poyyamozhi",
    	    Party: "DMK",
    	    votes: "105,424",
    	    margin: "49,697",
    	    vote_Rate: "53.51 %",
    	  },
    	  {
    	    mla_id: "143",
    	    constituency_Name: "Lalgudi",
    	    candidate_Name: "A.soundrapandiyan",
    	    Party: "DMK",
    	    votes: "84,914",
    	    margin: "16,949",
    	    vote_Rate: "48.59 %",
    	  },
    	  {
    	    mla_id: "144",
    	    constituency_Name: "Manachanallur",
    	    candidate_Name: "C.kathiravan",
    	    Party: "DMK",
    	    votes: "116,334",
    	    margin: "59,618",
    	    vote_Rate: "59.14 %",
    	  },
    	  {
    	    mla_id: "145",
    	    constituency_Name: "Musiri",
    	    candidate_Name: "N.thiyagarajan",
    	    Party: "DMK",
    	    votes: "90,624",
    	    margin: "26,836",
    	    vote_Rate: "50.43 %",
    	  },
    	  {
    	    mla_id: "146",
    	    constituency_Name: "Thuraiyur",
    	    candidate_Name: "Stalin Kumar",
    	    Party: "DMK",
    	    votes: "87,786",
    	    margin: "22,071",
    	    vote_Rate: "49.91 %",
    	  },
    	  {
    	    mla_id: "147",
    	    constituency_Name: "Perambalur",
    	    candidate_Name: "M Prabhakaran",
    	    Party: "DMK",
    	    votes: "122,090",
    	    margin: "31,034",
    	    vote_Rate: "50.87 %",
    	  },
    	  {
    	    mla_id: "148",
    	    constituency_Name: "Kunnam",
    	    candidate_Name: "S S Sivashankar",
    	    Party: "DMK",
    	    votes: "103,922",
    	    margin: "6,329",
    	    vote_Rate: "47.26 %",
    	  },
    	  {
    	    mla_id: "149",
    	    constituency_Name: "Ariyalur",
    	    candidate_Name: "Chinappa",
    	    Party: "MDMK",
    	    votes: "103,975",
    	    margin: "3,234",
    	    vote_Rate: "46.16 %",
    	  },
    	  {
    	    mla_id: "150",
    	    constituency_Name: "Jayankondam",
    	    candidate_Name: "K S K Kannan",
    	    Party: "DMK",
    	    votes: "99,529",
    	    margin: "5,452",
    	    vote_Rate: "46.00 %",
    	  },
    	  {
    	    mla_id: "151",
    	    constituency_Name: "Tittagudi (SC)",
    	    candidate_Name: "C V Ganesan",
    	    Party: "DMK",
    	    votes: "83,726",
    	    margin: "21,563",
    	    vote_Rate: "49.78 %",
    	  },
    	  {
    	    mla_id: "152",
    	    constituency_Name: "Vridhachalam",
    	    candidate_Name: "M.r.r.radhakrishnan",
    	    Party: "INC",
    	    votes: "77,064",
    	    margin: "862",
    	    vote_Rate: "39.17 %",
    	  },
    	  {
    	    mla_id: "153",
    	    constituency_Name: "Neyveli",
    	    candidate_Name: "Saba Rajendiran",
    	    Party: "DMK",
    	    votes: "75,177",
    	    margin: "977",
    	    vote_Rate: "45.80 %",
    	  },
    	  {
    	    mla_id: "154",
    	    constituency_Name: "Panruti",
    	    candidate_Name: "Velmurugan",
    	    Party: "TVK",
    	    votes: "93,801",
    	    margin: "4,697",
    	    vote_Rate: "47.60 %",
    	  },
    	  {
    	    mla_id: "155",
    	    constituency_Name: "Cuddalore",
    	    candidate_Name: "Ko Ayyappan",
    	    Party: "DMK",
    	    votes: "84,563",
    	    margin: "5,151",
    	    vote_Rate: "46.46 %",
    	  },
    	  {
    	    mla_id: "156",
    	    constituency_Name: "Kurinjipadi",
    	    candidate_Name: "M R K Panneerselvam",
    	    Party: "DMK",
    	    votes: "101,456",
    	    margin: "17,527",
    	    vote_Rate: "51.04 %",
    	  },
    	  {
    	    mla_id: "157",
    	    constituency_Name: "Bhuvanagiri",
    	    candidate_Name: "Arunmozhithevan",
    	    Party: "AIADMK",
    	    votes: "96,453",
    	    margin: "8,259",
    	    vote_Rate: "48.92 %",
    	  },
    	  {
    	    mla_id: "158",
    	    constituency_Name: "Chidambaram",
    	    candidate_Name: "K.a.pandian",
    	    Party: "AIADMK",
    	    votes: "91,961",
    	    margin: "16,937",
    	    vote_Rate: "50.16 %",
    	  },
    	  {
    	    mla_id: "159",
    	    constituency_Name: "Kattumannarkoil(SC)",
    	    candidate_Name: "Sindhanaiselvan",
    	    Party: "VCK",
    	    votes: "86,056",
    	    margin: "10,565",
    	    vote_Rate: "49.02 %",
    	  },
    	  {
    	    mla_id: "160",
    	    constituency_Name: "Sirkazhi",
    	    candidate_Name: "Mu Panneerselvam",
    	    Party: "DMK",
    	    votes: "94,057",
    	    margin: "12,148",
    	    vote_Rate: "49.16 %",
    	  },
    	  {
    	    mla_id: "161",
    	    constituency_Name: "Mayiladuthurai",
    	    candidate_Name: "Rajakumar",
    	    Party: "INC",
    	    votes: "73,642",
    	    margin: "2,742",
    	    vote_Rate: "42.17 %",
    	  },
    	  {
    	    mla_id: "162",
    	    constituency_Name: "Poompuhar",
    	    candidate_Name: "Nivetha Murugan",
    	    Party: "DMK",
    	    votes: "96,102",
    	    margin: "3,299",
    	    vote_Rate: "46.24 %",
    	  },
    	  {
    	    mla_id: "163",
    	    constituency_Name: "Nagapattinam",
    	    candidate_Name: "Aloor Shanavas",
    	    Party: "VCK",
    	    votes: "66,281",
    	    margin: "7,238",
    	    vote_Rate: "46.17 %",
    	  },
    	  {
    	    mla_id: "164",
    	    constituency_Name: "Kilvelur",
    	    candidate_Name: "Maali",
    	    Party: "CPM",
    	    votes: "67,988",
    	    margin: "16,985",
    	    vote_Rate: "47.55 %",
    	  },
    	  {
    	    mla_id: "165",
    	    constituency_Name: "Vedaranyam",
    	    candidate_Name: "O.s. Maniyan",
    	    Party: "AIADMK",
    	    votes: "78,719",
    	    margin: "12,329",
    	    vote_Rate: "49.80 %",
    	  },
    	  {
    	    mla_id: "166",
    	    constituency_Name: "Thiruthuraipoondi",
    	    candidate_Name: "Marimuthu",
    	    Party: "CPI",
    	    votes: "97,092",
    	    margin: "30,068",
    	    vote_Rate: "52.23 %",
    	  },
    	  {
    	    mla_id: "167",
    	    constituency_Name: "Mannargudi",
    	    candidate_Name: "Trb Raja",
    	    Party: "DMK",
    	    votes: "87,172",
    	    margin: "37,393",
    	    vote_Rate: "45.11 %",
    	  },
    	  {
    	    mla_id: "168",
    	    constituency_Name: "Thiruvarur",
    	    candidate_Name: "Poondi Kalaivanan",
    	    Party: "DMK",
    	    votes: "108,906",
    	    margin: "51,174",
    	    vote_Rate: "52.29 %",
    	  },
    	  {
    	    mla_id: "169",
    	    constituency_Name: "Nannilam",
    	    candidate_Name: "R.kamaraj",
    	    Party: "AIADMK",
    	    votes: "103,637",
    	    margin: "4,424",
    	    vote_Rate: "46.70 %",
    	  },
    	  {
    	    mla_id: "170",
    	    constituency_Name: "Thiruvidaimarudur",
    	    candidate_Name: "Kovi Chezhiyan",
    	    Party: "DMK",
    	    votes: "95,763",
    	    margin: "10,680",
    	    vote_Rate: "48.26 %",
    	  },
    	  {
    	    mla_id: "171",
    	    constituency_Name: "Kumbakonam",
    	    candidate_Name: "Anbazhagan",
    	    Party: "DMK",
    	    votes: "96,057",
    	    margin: "21,383",
    	    vote_Rate: "48.62 %",
    	  },
    	  {
    	    mla_id: "172",
    	    constituency_Name: "Papanasam",
    	    candidate_Name: "M. H. Jawahirullah",
    	    Party: "MMK",
    	    votes: "86,567",
    	    margin: "16,273",
    	    vote_Rate: "43.95 %",
    	  },
    	  {
    	    mla_id: "173",
    	    constituency_Name: "Thiruvaiyaru",
    	    candidate_Name: "Durai Chandrasekaran",
    	    Party: "DMK",
    	    votes: "103,210",
    	    margin: "53,650",
    	    vote_Rate: "48.82 %",
    	  },
    	  {
    	    mla_id: "174",
    	    constituency_Name: "Thanjavur",
    	    candidate_Name: "Tkg Neelamegam",
    	    Party: "DMK",
    	    votes: "103,772",
    	    margin: "47,149",
    	    vote_Rate: "53.25 %",
    	  },
    	  {
    	    mla_id: "175",
    	    constituency_Name: "Orathanadu",
    	    candidate_Name: "Vaithiyalingam",
    	    Party: "AIADMK",
    	    votes: "90,063",
    	    margin: "28,835",
    	    vote_Rate: "46.95 %",
    	  },
    	  {
    	    mla_id: "176",
    	    constituency_Name: "Pattukkottai",
    	    candidate_Name: "Annadurai",
    	    Party: "DMK",
    	    votes: "79,065",
    	    margin: "25,269",
    	    vote_Rate: "44.62 %",
    	  },
    	  {
    	    mla_id: "177",
    	    constituency_Name: "Peravurani",
    	    candidate_Name: "N Ashok Kumar",
    	    Party: "DMK",
    	    votes: "89,130",
    	    margin: "23,503",
    	    vote_Rate: "52.17 %",
    	  },
    	  {
    	    mla_id: "178",
    	    constituency_Name: "Gandharvakottai",
    	    candidate_Name: "M.chinnadurai",
    	    Party: "CPM",
    	    votes: "69,710",
    	    margin: "12,721",
    	    vote_Rate: "44.23 %",
    	  },
    	  {
    	    mla_id: "179",
    	    constituency_Name: "Viralimalai",
    	    candidate_Name: "Vijayabaskar",
    	    Party: "AIADMK",
    	    votes: "102,179",
    	    margin: "23,598",
    	    vote_Rate: "52.83 %",
    	  },
    	  {
    	    mla_id: "180",
    	    constituency_Name: "Pudukkottai",
    	    candidate_Name: "Muthuraja",
    	    Party: "DMK",
    	    votes: "85,802",
    	    margin: "13,001",
    	    vote_Rate: "47.70 %",
    	  },
    	  {
    	    mla_id: "181",
    	    constituency_Name: "Thirumayam",
    	    candidate_Name: "Ragupathi",
    	    Party: "DMK",
    	    votes: "71,349",
    	    margin: "1,382",
    	    vote_Rate: "41.00 %",
    	  },
    	  {
    	    mla_id: "182",
    	    constituency_Name: "Alangudi",
    	    candidate_Name: "Siva Ve Meyyanaadhan",
    	    Party: "DMK",
    	    votes: "87,935",
    	    margin: "25,847",
    	    vote_Rate: "51.17 %",
    	  },
    	  {
    	    mla_id: "183",
    	    constituency_Name: "Aranthangi",
    	    candidate_Name: "S.t.ramachandran",
    	    Party: "INC",
    	    votes: "81,835",
    	    margin: "30,893",
    	    vote_Rate: "48.70 %",
    	  },
    	  {
    	    mla_id: "184",
    	    constituency_Name: "Karaikudi",
    	    candidate_Name: "S.mangudi",
    	    Party: "INC",
    	    votes: "75,954",
    	    margin: "21,589",
    	    vote_Rate: "35.75 %",
    	  },
    	  {
    	    mla_id: "185",
    	    constituency_Name: "Tiruppattur",
    	    candidate_Name: "K R Periyakaruppan",
    	    Party: "DMK",
    	    votes: "103,682",
    	    margin: "37,374",
    	    vote_Rate: "49.19 %",
    	  },
    	  {
    	    mla_id: "186",
    	    constituency_Name: "Sivaganga",
    	    candidate_Name: "Senthilnathan",
    	    Party: "AIADMK",
    	    votes: "82,153",
    	    margin: "11,253",
    	    vote_Rate: "40.66 %",
    	  },
    	  {
    	    mla_id: "187",
    	    constituency_Name: "Manamadurai",
    	    candidate_Name: "Tamilarasi",
    	    Party: "DMK",
    	    votes: "89,364",
    	    margin: "14,091",
    	    vote_Rate: "44.01 %",
    	  },
    	  {
    	    mla_id: "188",
    	    constituency_Name: "Melur",
    	    candidate_Name: "Periyapulla @ Selvam",
    	    Party: "AIADMK",
    	    votes: "83,344",
    	    margin: "35,162",
    	    vote_Rate: "45.60 %",
    	  },
    	  {
    	    mla_id: "189",
    	    constituency_Name: "Madurai East",
    	    candidate_Name: "P Moorthi",
    	    Party: "DMK",
    	    votes: "122,729",
    	    margin: "49,604",
    	    vote_Rate: "51.59 %",
    	  },
    	  {
    	    mla_id: "190",
    	    constituency_Name: "Sholavandan",
    	    candidate_Name: "Venkatesan",
    	    Party: "DMK",
    	    votes: "84,240",
    	    margin: "17,045",
    	    vote_Rate: "48.04 %",
    	  },
    	  {
    	    mla_id: "191",
    	    constituency_Name: "Madurai North",
    	    candidate_Name: "Ko Thalapathi",
    	    Party: "DMK",
    	    votes: "73,010",
    	    margin: "22,916",
    	    vote_Rate: "46.64 %",
    	  },
    	  {
    	    mla_id: "192",
    	    constituency_Name: "Madurai South",
    	    candidate_Name: "Bhoominathan",
    	    Party: "MDMK",
    	    votes: "62,812",
    	    margin: "6,515",
    	    vote_Rate: "42.49 %",
    	  },
    	  {
    	    mla_id: "193",
    	    constituency_Name: "Madurai Central",
    	    candidate_Name: "P. T. R. Palanivel Thiagarajan",
    	    Party: "DMK",
    	    votes: "73,205",
    	    margin: "34,176",
    	    vote_Rate: "48.99 %",
    	  },
    	  {
    	    mla_id: "194",
    	    constituency_Name: "Madurai West",
    	    candidate_Name: "Sellur K.raju",
    	    Party: "AIADMK",
    	    votes: "83,883",
    	    margin: "9,121",
    	    vote_Rate: "41.59 %",
    	  },
    	  {
    	    mla_id: "195",
    	    constituency_Name: "Thiruparankundram",
    	    candidate_Name: "Rajan Chellapa",
    	    Party: "AIADMK",
    	    votes: "103,683",
    	    margin: "29,489",
    	    vote_Rate: "43.96 %",
    	  },
    	  {
    	    mla_id: "196",
    	    constituency_Name: "Thirumangalam",
    	    candidate_Name: "R.b.udhayakumar",
    	    Party: "AIADMK",
    	    votes: "100,338",
    	    margin: "14,087",
    	    vote_Rate: "45.51 %",
    	  },
    	  {
    	    mla_id: "197",
    	    constituency_Name: "Usilampatti",
    	    candidate_Name: "Aiyappan",
    	    Party: "AIADMK",
    	    votes: "71,255",
    	    margin: "7,477",
    	    vote_Rate: "33.53 %",
    	  },
    	  {
    	    mla_id: "198",
    	    constituency_Name: "Andipatti",
    	    candidate_Name: "Maharajan",
    	    Party: "DMK",
    	    votes: "93,541",
    	    margin: "8,538",
    	    vote_Rate: "44.64 %",
    	  },
    	  {
    	    mla_id: "199",
    	    constituency_Name: "Periyakulam",
    	    candidate_Name: "K S Saravanakumar",
    	    Party: "DMK",
    	    votes: "92,251",
    	    margin: "21,321",
    	    vote_Rate: "45.71 %",
    	  },
    	  {
    	    mla_id: "200",
    	    constituency_Name: "Bodinayakanur",
    	    candidate_Name: "O. Panneerselvam",
    	    Party: "AIADMK",
    	    votes: "100,050",
    	    margin: "11,021",
    	    vote_Rate: "46.58 %",
    	  },
    	  {
    	    mla_id: "201",
    	    constituency_Name: "Cumbum",
    	    candidate_Name: "Cumbum Ramakrishnan",
    	    Party: "DMK",
    	    votes: "104,800",
    	    margin: "42,413",
    	    vote_Rate: "51.81 %",
    	  },
    	  {
    	    mla_id: "202",
    	    constituency_Name: "Rajapalayam",
    	    candidate_Name: "Thangapandiyan",
    	    Party: "DMK",
    	    votes: "74,158",
    	    margin: "3,898",
    	    vote_Rate: "41.50 %",
    	  },
    	  {
    	    mla_id: "203",
    	    constituency_Name: "Srivilliputhur",
    	    candidate_Name: "Maanraj",
    	    Party: "AIADMK",
    	    votes: "70,475",
    	    margin: "12,738",
    	    vote_Rate: "38.09 %",
    	  },
    	  {
    	    mla_id: "204",
    	    constituency_Name: "Sattur",
    	    candidate_Name: "A.r.raguraman",
    	    Party: "MDMK",
    	    votes: "74,174",
    	    margin: "11,179",
    	    vote_Rate: "38.68 %",
    	  },
    	  {
    	    mla_id: "205",
    	    constituency_Name: "Sivakasi",
    	    candidate_Name: "A.m.s.g.ashokan",
    	    Party: "INC",
    	    votes: "78,947",
    	    margin: "17,319",
    	    vote_Rate: "42.66 %",
    	  },
    	  {
    	    mla_id: "206",
    	    constituency_Name: "Virudhunagar",
    	    candidate_Name: "A.r.r.srinivasan",
    	    Party: "DMK",
    	    votes: "73,297",
    	    margin: "21,339",
    	    vote_Rate: "45.32 %",
    	  },
    	  {
    	    mla_id: "207",
    	    constituency_Name: "Aruppukkottai",
    	    candidate_Name: "S.s.r.ramachandiran",
    	    Party: "DMK",
    	    votes: "91,040",
    	    margin: "39,034",
    	    vote_Rate: "53.18 %",
    	  },
    	  {
    	    mla_id: "208",
    	    constituency_Name: "Tiruchuli",
    	    candidate_Name: "Thangam Thennarasu",
    	    Party: "DMK",
    	    votes: "102,225",
    	    margin: "60,992",
    	    vote_Rate: "59.15 %",
    	  },
    	  {
    	    mla_id: "209",
    	    constituency_Name: "Paramakudi",
    	    candidate_Name: "Murugesan",
    	    Party: "DMK",
    	    votes: "84,864",
    	    margin: "13,285",
    	    vote_Rate: "46.59 %",
    	  },
    	  {
    	    mla_id: "210",
    	    constituency_Name: "Tiruvadanai",
    	    candidate_Name: "R.m.karumanickam",
    	    Party: "INC",
    	    votes: "79,364",
    	    margin: "13,852",
    	    vote_Rate: "39.33 %",
    	  },
    	  {
    	    mla_id: "211",
    	    constituency_Name: "Ramanathapuram",
    	    candidate_Name: "Kadhar Batcha Alas Muthuramalingam",
    	    Party: "DMK",
    	    votes: "111,082",
    	    margin: "50,479",
    	    vote_Rate: "51.88 %",
    	  },
    	  {
    	    mla_id: "212",
    	    constituency_Name: "Mudhukulathur",
    	    candidate_Name: "Raja Kannapan",
    	    Party: "DMK",
    	    votes: "101,901",
    	    margin: "20,721",
    	    vote_Rate: "46.06 %",
    	  },
    	  {
    	    mla_id: "213",
    	    constituency_Name: "Vilathikulam",
    	    candidate_Name: "Markandeyan",
    	    Party: "DMK",
    	    votes: "90,348",
    	    margin: "38,549",
    	    vote_Rate: "54.05 %",
    	  },
    	  {
    	    mla_id: "214",
    	    constituency_Name: "Thoothukkudi",
    	    candidate_Name: "Geetha Jeevan",
    	    Party: "DMK",
    	    votes: "92,314",
    	    margin: "50,310",
    	    vote_Rate: "49.00 %",
    	  },
    	  {
    	    mla_id: "215",
    	    constituency_Name: "Tiruchendur",
    	    candidate_Name: "Anitha Radhakrishnan",
    	    Party: "DMK",
    	    votes: "88,274",
    	    margin: "25,263",
    	    vote_Rate: "50.58 %",
    	  },
    	  {
    	    mla_id: "216",
    	    constituency_Name: "Srivaikuntam",
    	    candidate_Name: "Urvasi S.amirtharaj",
    	    Party: "INC",
    	    votes: "76,843",
    	    margin: "17,372",
    	    vote_Rate: "46.75 %",
    	  },
    	  {
    	    mla_id: "217",
    	    constituency_Name: "Ottapidaram",
    	    candidate_Name: "Shanmugayyaa",
    	    Party: "DMK",
    	    votes: "73,110",
    	    margin: "8,510",
    	    vote_Rate: "41.11 %",
    	  },
    	  {
    	    mla_id: "218",
    	    constituency_Name: "Kovilpatti",
    	    candidate_Name: "Kadambur Raju",
    	    Party: "AIADMK",
    	    votes: "68,556",
    	    margin: "12,403",
    	    vote_Rate: "37.89 %",
    	  },
    	  {
    	    mla_id: "219",
    	    constituency_Name: "Sankarankovil",
    	    candidate_Name: "E.raja",
    	    Party: "DMK",
    	    votes: "71,347",
    	    margin: "5,297",
    	    vote_Rate: "38.92 %",
    	  },
    	  {
    	    mla_id: "220",
    	    constituency_Name: "Vasudevanallur",
    	    candidate_Name: "Sathan Tirumalaikumar",
    	    Party: "MDMK",
    	    votes: "68,730",
    	    margin: "2,367",
    	    vote_Rate: "39.08 %",
    	  },
    	  {
    	    mla_id: "221",
    	    constituency_Name: "Kadayanallur",
    	    candidate_Name: "Krishnamurali",
    	    Party: "AIADMK",
    	    votes: "88,474",
    	    margin: "24,349",
    	    vote_Rate: "43.08 %",
    	  },
    	  {
    	    mla_id: "222",
    	    constituency_Name: "Tenkasi",
    	    candidate_Name: "S.palani Nadar",
    	    Party: "INC",
    	    votes: "89,315",
    	    margin: "370",
    	    vote_Rate: "41.71 %",
    	  },
    	  {
    	    mla_id: "223",
    	    constituency_Name: "Alangulam",
    	    candidate_Name: "Manoj Pandian",
    	    Party: "AIADMK",
    	    votes: "74,153",
    	    margin: "3,539",
    	    vote_Rate: "36.44 %",
    	  },
    	  {
    	    mla_id: "224",
    	    constituency_Name: "Tirunelveli",
    	    candidate_Name: "Naimar Nagendran",
    	    Party: "BJP",
    	    votes: "92,282",
    	    margin: "23,107",
    	    vote_Rate: "46.70 %",
    	  },
    	  {
    	    mla_id: "225",
    	    constituency_Name: "Ambasamudram",
    	    candidate_Name: "Isakki Subbaiah",
    	    Party: "AIADMK",
    	    votes: "85,211",
    	    margin: "16,915",
    	    vote_Rate: "47.96 %",
    	  },
    	  {
    	    mla_id: "226",
    	    constituency_Name: "Palayamkottai",
    	    candidate_Name: "Abdul Wahab",
    	    Party: "DMK",
    	    votes: "89,117",
    	    margin: "52,141",
    	    vote_Rate: "55.32 %",
    	  },
    	  {
    	    mla_id: "227",
    	    constituency_Name: "Nanguneri",
    	    candidate_Name: "Ruby R.manoharan",
    	    Party: "INC",
    	    votes: "75,902",
    	    margin: "16,486",
    	    vote_Rate: "39.43 %",
    	  },
    	  {
    	    mla_id: "228",
    	    constituency_Name: "Radhapuram",
    	    candidate_Name: "M.appavu",
    	    Party: "DMK",
    	    votes: "82,331",
    	    margin: "5,925",
    	    vote_Rate: "43.95 %",
    	  },
    	  {
    	    mla_id: "229",
    	    constituency_Name: "Kanniyakumari",
    	    candidate_Name: "Thalavai Sundaram",
    	    Party: "AIADMK",
    	    votes: "109,745",
    	    margin: "16,213",
    	    vote_Rate: "48.80 %",
    	  },
    	  {
    	    mla_id: "230",
    	    constituency_Name: "Nagercoil",
    	    candidate_Name: "M.r.gandhi",
    	    Party: "BJP",
    	    votes: "88,804",
    	    margin: "11,669",
    	    vote_Rate: "48.21 %",
    	  },
    	  {
    	    mla_id: "231",
    	    constituency_Name: "Colachel",
    	    candidate_Name: "Prince",
    	    Party: "INC",
    	    votes: "90,681",
    	    margin: "24,832",
    	    vote_Rate: "49.56 %",
    	  },
    	  {
    	    mla_id: "232",
    	    constituency_Name: "Padmanabhapuram",
    	    candidate_Name: "Mano Thangaraj",
    	    Party: "DMK",
    	    votes: "87,744",
    	    margin: "26,885",
    	    vote_Rate: "51.57 %",
    	  },
    	  {
    	    mla_id: "233",
    	    constituency_Name: "Vilavancode",
    	    candidate_Name: "Vijayatharani",
    	    Party: "INC",
    	    votes: "87,473",
    	    margin: "28,669",
    	    vote_Rate: "52.12 %",
    	  },
    	  {
    	    mla_id: "234",
    	    constituency_Name: "Killiyoor",
    	    candidate_Name: "S.rajeshkumar",
    	    Party: "INC",
    	    votes: "101,541",
    	    margin: "55,400",
    	    vote_Rate: "59.76 %",
    	  },
    	];
    
    localStorage.setItem("mla_details_english",JSON.stringify(mla_details_english));
    
    const mla_list_eng = JSON.parse(localStorage.getItem("mla_details_english"));

    let table_data_row;
    let table_data1;
    let table_data2;
    let name_link;
    let table_data3;
    let table_data4;
    let table_data4_div;
    let table_data4_img;
    let table_data4_div_desc;
    let table_data5;
    let table_data6;
    let table_data7;

    const tamil_tran = document.getElementById("lang_ta");

    const english_tran = document.getElementById("lang_eng");

    const dmk = "https://freeimghost.net/images/2023/05/07/dmk-logo.png";
    const aiadmk = "https://freeimghost.net/images/2023/05/07/aiadmk.png";
    const bjp = "https://freeimghost.net/images/2023/05/07/bjp.jpeg";
    const congress = "https://freeimghost.net/images/2023/05/07/inc.png";
    const mnmk = "https://freeimghost.net/images/2023/05/07/Mmk_flag.png";
    const pmk = "https://freeimghost.net/images/2023/05/07/Pmk_flag.jpeg";
    const vck = "https://freeimghost.net/images/2023/05/07/vck.png";
    const cpm = "https://freeimghost.net/images/2023/05/07/cpm.png";
    const mathimuka = "https://freeimghost.net/images/2023/05/07/mathimuka.jpeg";
    const others1 = "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg";

    function default_list(array) {
      array.forEach((values) => {
        table_data_row = document.createElement("tr");
        document.querySelector(".mla_list_body").append(table_data_row);

        table_data1 = document.createElement("td");
        table_data1.innerText = values.mla_id;
        table_data_row.append(table_data1);

        table_data2 = document.createElement("td");
        table_data_row.append(table_data2);

        name_link = document.createElement("a");
        name_link.setAttribute("href", "constituency.jsp?name="+values.mla_id);
        name_link.setAttribute("title", values.constituency_Name);
        name_link.innerText = values.constituency_Name;
        table_data2.append(name_link);

        table_data3 = document.createElement("td");
        table_data_row.append(table_data3);

        const table_data3_link = document.createElement("a");
        table_data3_link.setAttribute(
          "href",
          `mla_profile.html?name=${values.mla_id}`
        );
        table_data3_link.innerText = values.candidate_Name;
        table_data3.append(table_data3_link);

        table_data4 = document.createElement("td");
        table_data_row.append(table_data4);

        table_data4_div = document.createElement("div");
        table_data4_div.setAttribute("class", "name-img");
        table_data4.append(table_data4_div);

        table_data4_img = document.createElement("img");
        table_data4_img.setAttribute("alt", "error Image");
        table_data4_div.append(table_data4_img);

        if (values.Party === "திமுக" || values.Party === "DMK") {
          table_data4_img.setAttribute("src", dmk);
        } else if (values.Party === "அதிமுக" || values.Party === "AIADMK") {
          table_data4_img.setAttribute("src", aiadmk);
        } else if (values.Party === "பாஜக" || values.Party === "BJP") {
          table_data4_img.setAttribute("src", bjp);
        } else if (values.Party === "காங்." || values.Party === "INC") {
          table_data4_img.setAttribute("src", congress);
        } else if (values.Party === "மக்கள் நீதி மய்யம் கட்சி") {
          table_data4_img.setAttribute("src", mnmk);
        } else if (values.Party === "பாமக" || values.Party === "PMK") {
          table_data4_img.setAttribute("src", pmk);
        } else if (values.Party === "விசிக" || values.Party === "VCK") {
          table_data4_img.setAttribute("src", vck);
        } else if (values.Party === "சிபிஎம்" || values.Party === "CPM") {
          table_data4_img.setAttribute("src", cpm);
        } else if (values.Party === "மதிமுக") {
          table_data4_img.setAttribute("src", mathimuka);
        } else {
          table_data4_img.setAttribute("src", others1);
        }

        table_data4_div_desc = document.createElement("p");
        table_data4_div_desc.innerText = values.Party;
        table_data4_div.append(table_data4_div_desc);

        table_data5 = document.createElement("td");
        table_data5.innerText = values.votes;
        table_data_row.append(table_data5);

        table_data6 = document.createElement("td");
        table_data6.innerText = values.margin;
        table_data_row.append(table_data6);

        table_data7 = document.createElement("td");
        table_data7.innerText = values.vote_Rate;
        table_data_row.append(table_data7);
      });
    }

    default_list(mla_list_eng);

    window.onload = function () {
    	
      const searchBox = document.querySelector("#searchbar");
      
      searchBox.addEventListener("input", () => {
    	  
        const filterValue = searchBox.value.toLocaleLowerCase();

        const rows = document.querySelectorAll("table tr");

        for (let i = 1; i < rows.length; i++) {
          
          // start from index 1 to skip the header row
          
          const row = rows[i];

          const id = row.children[0].textContent.toLocaleLowerCase();

          const name = row.children[1].textContent.toLocaleLowerCase();

          const party = row.children[3].textContent.toLocaleLowerCase();

          const leader_name = row.children[2].textContent.toLocaleLowerCase();

          if (
            name.includes(filterValue) ||
            party.includes(filterValue) ||
            leader_name.includes(filterValue) ||
            id.includes(filterValue)
          ) {
            row.style.display = "table-row";
          } else {
            row.style.display = "none";
          }
        }
      });
    };

    const table = document.getElementById("mlatable");
    const { rows } = table;

    const sortNameButton = document.querySelector("#sortName");
    sortNameButton.addEventListener("click", () => {
      const sortedRows = Array.from(rows)
        .slice(1)
        .sort((a, b) => {
          const nameA = a.cells[1].textContent;
          const nameB = b.cells[1].textContent;
          return nameA.localeCompare(nameB);
        });

      table.tBodies[0].append(...sortedRows);
    });

    const sortMarginButton = document.querySelector("#sortMargin");
    sortMarginButton.addEventListener("click", () => {
      const sortedRows = Array.from(rows)
        .slice(1)
        .sort((a, b) => {
          const marginA = parseInt(a.cells[5].textContent);
          const marginB = parseInt(b.cells[5].textContent);
          return marginB - marginA;
        });

      table.tBodies[0].append(...sortedRows);
    });



</script>


	<script src="<%=request.getContextPath()%>/assets/js/trsnslate.js"></script>
	<!-- footer  section-->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>



</body>

</html>